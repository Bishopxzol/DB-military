from flask import Flask, render_template, request, redirect, url_for
from models import db, Person, MilitaryUnit

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://username:12345@localhost/voenkomat'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db.init_app(app)

@app.route('/')
def index():
    military_units = MilitaryUnit.query.all()
    return render_template('index.html', military_units=military_units)

@app.route('/add_person', methods=['POST'])
def add_person():
    personal_number = request.form['personal_number']
    first_name = request.form['first_name']
    last_name = request.form['last_name']
    midle_name = request.form['midle_name']
    date_birthday = request.form['date_birthday']
    adress_registration = request.form['adress_registration']
    education = request.form['education']
    contact_number = request.form['contact_number']
    military_destination = request.form['military_destination']
    date_departure = request.form['date_departure']
    category_health = request.form['category_health']

    if category_health in ['D', 'E']:
        military_destination = None
        date_departure = None

    new_person = Person(
        personal_number=personal_number,
        first_name=first_name,
        last_name=last_name,
        midle_name=midle_name,
        date_birthday=date_birthday,
        adress_registration=adress_registration,
        education=education,
        contact_number=contact_number,
        military_destination=military_destination,
        date_departure=date_departure,
        category_health=category_health
    )

    db.session.add(new_person)
    db.session.commit()
    return redirect(url_for('index'))

if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(debug=True)
