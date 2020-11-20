# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.create(name: 'Ram', email:'ram@yahoo.com')
Patient.create(name: 'Munna', email:'mun@yahoo.com')
Doctor.create(name: 'Jhon', email:'Jhon@yahoo.com', specialization: 'Dentist', experience:11, fee:100)
Doctor.create(name: 'Michel', email:'michel@yahoo.com', specialization: 'Orthopedist', experience:17, fee:150)
Schedule.create(date:"21-11-2020", time:"21-11-2020 10:30",duration:30, doctor_id:1)
Schedule.create(date:"21-11-2020", time:"21-11-2020 11:00",duration:30, doctor_id:1)
Schedule.create(date:"21-11-2020", time:"21-11-2020 11:30",duration:30, doctor_id:1)
Schedule.create(date:"21-11-2020", time:"21-11-2020 12:00",duration:30, doctor_id:1)
Schedule.create(date:"21-11-2020", time:"21-11-2020 12:30",duration:30, doctor_id:1)
Schedule.create(date:"21-11-2020", time:"21-11-2020 13:00",duration:30, doctor_id:1)
Schedule.create(date:"21-11-2020", time:"21-11-2020 10:30",duration:30, doctor_id:2)
Schedule.create(date:"21-11-2020", time:"21-11-2020 11:00",duration:30, doctor_id:2)
Schedule.create(date:"21-11-2020", time:"21-11-2020 11:30",duration:30, doctor_id:2)
Schedule.create(date:"21-11-2020", time:"21-11-2020 12:00",duration:30, doctor_id:2)
Schedule.create(date:"21-11-2020", time:"21-11-2020 12:30",duration:30, doctor_id:2)
Schedule.create(date:"21-11-2020", time:"21-11-2020 13:00",duration:30, doctor_id:2)
Appointment.create(patient_id:1, doctor_id:1, schedule_id:3)
Appointment.create(patient_id:2, doctor_id:1, schedule_id:5)
Appointment.create(patient_id:1, doctor_id:2, schedule_id:6)
Appointment.create(patient_id:2, doctor_id:2, schedule_id:7)