from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class MilitaryUnit(db.Model):
    __tablename__ = 'military_unit'
    military_destination = db.Column(db.Integer, primary_key=True)
    military_name = db.Column(db.String, nullable=False)
    military_location = db.Column(db.String, nullable=False)
    mail_index = db.Column(db.Integer, nullable=False)

class Person(db.Model):
    __tablename__ = 'your_table_name'
    personal_number = db.Column(db.String, primary_key=True)
    first_name = db.Column(db.String, nullable=False)
    last_name = db.Column(db.String, nullable=False)
    midle_name = db.Column(db.String, nullable=False)
    date_birthday = db.Column(db.Date, nullable=False)
    adress_registration = db.Column(db.String, nullable=False)
    education = db.Column(db.String, nullable=False)
    contact_number = db.Column(db.Integer, unique=True)
    military_destination = db.Column(db.Integer, db.ForeignKey('military_unit.military_destination'))
    date_departure = db.Column(db.Date)
    category_health = db.Column(db.String, nullable=False)