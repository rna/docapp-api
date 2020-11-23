# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.create(name: 'Miano Jackson', email:'miano@yahoo.com', image:'https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=402&q=80')
Patient.create(name: 'Jeanne Cluset', email:'jeanne@gmail.com', image:'https://images.unsplash.com/photo-1588186064732-a36fbfdc2323?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=333&q=80')
Patient.create(name: 'Mondol Zinia', email:'mondol@yahoo.com', image:'https://images.unsplash.com/photo-1547497929-9862aa3b1ce0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=378&q=80')
Patient.create(name: 'Peters Jackey', email:'petes@gmail.com', image:'https://images.unsplash.com/photo-1595956553439-aeb7ea92ec36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')
Doctor.create(name: 'Joseph Calen', email:'joseph@yahoo.com', specialization: 'Orthopedist', experience:24, fee:150, image:'https://images.unsplash.com/photo-1595956553439-aeb7ea92ec36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')
Doctor.create(name: 'Matheew Carillo', email:'matheew@yahoo.com', specialization: 'Dentist', experience:17, fee:100, image:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
Doctor.create(name: 'Dana Mantilia', email:'dana@yahoo.com', specialization: 'Dermatologist', experience:11, fee:100, image:'https://images.unsplash.com/photo-1557182549-099ccb56dbad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')
Doctor.create(name: 'Mercia Williams', email:'mercia@yahoo.com', specialization: 'Gynecologist', experience:12, fee:100, image:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')


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