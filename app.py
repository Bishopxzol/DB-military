from flask import Flask, request, render_template, redirect, url_for
import psycopg2
import config

app = Flask(__name__)
app.secret_key = 'your_secret_key'

def get_db_connection():
    conn = psycopg2.connect(
        host=config.DB_HOST,
        dbname=config.DB_NAME,
        user=config.DB_USER,
        password=config.DB_PASS
    )
    return conn

@app.route('/')
def index():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute("SELECT military_destination, military_name FROM public.military_unit")
    military_units = cur.fetchall()
    cur.close()
    conn.close()
    return render_template('index.html', military_units=military_units)

@app.route('/check_officer', methods=['POST'])
def check_officer():
    data = request.form.to_dict()
    personal_number = data['personal_number']
    military_destination = data.get('military_destination') or data.get('new_military_destination')

    conn = get_db_connection()
    cur = conn.cursor()

    # Проверка уникальности личного номера
    cur.execute("SELECT personal_number FROM public.military_office WHERE personal_number = %s", (personal_number,))
    if cur.fetchone():
        cur.close()
        conn.close()
        return render_template('error.html', message="Error: Personal number already exists.")
    
    # Если добавлена новая воинская часть
    if data.get('new_military_destination'):
        cur.execute("""
            INSERT INTO public.military_unit (military_destination, military_name, military_location, mail_index)
            VALUES (%s, %s, %s, %s)
        """, (
            data['new_military_destination'], data['new_military_name'], 
            data['new_military_location'], data['new_mail_index']
        ))
        military_destination = data['new_military_destination']

    # Вставка данных в military_office
    cur.execute("""
        INSERT INTO public.military_office (
            personal_number, first_name, last_name, midle_name, date_birthday, 
            adress_registration, education, contact_number, military_destination, 
            date_departure, category_health
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """, (
        data['personal_number'], data['first_name'], data['last_name'], data['midle_name'], 
        data['date_birthday'], data['adress_registration'], data['education'], 
        data['contact_number'], military_destination, data['date_departure'], 
        data['category_health']
    ))

    conn.commit()
    cur.close()
    conn.close()
    return redirect(url_for('index'))

@app.route('/error')
def error():
    message = request.args.get('message', 'An error occurred.')
    return render_template('error.html', message=message)

if __name__ == '__main__':
    app.run(debug=True)
