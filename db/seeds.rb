# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.create(name: 'Miano Jackson', email:'miano@yahoo.com', password:'password' image:'https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=402&q=80')
Patient.create(name: 'Jeanne Cluset', email:'jeanne@gmail.com', password:'password' image:'https://images.unsplash.com/photo-1588186064732-a36fbfdc2323?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=333&q=80')
Patient.create(name: 'Mondol Zinia', email:'mondol@yahoo.com', password:'password' image:'https://images.unsplash.com/photo-1547497929-9862aa3b1ce0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=378&q=80')
Patient.create(name: 'Peters Jackey', email:'petes@gmail.com', password:'password' image:'https://images.unsplash.com/photo-1595956553439-aeb7ea92ec36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')
Doctor.create(name: 'Joseph Calen', email:'joseph@yahoo.com', password:'password' specialization: 'Orthopedist', experience:24, fee:150, image:'https://images.unsplash.com/photo-1590735627513-59a186ed0984?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')
Doctor.create(name: 'Matheew Carillo', email:'matheew@yahoo.com', password:'password' specialization: 'Dentist', experience:17, fee:100, image:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
Doctor.create(name: 'Dana Mantilia', email:'dana@yahoo.com', password:'password' specialization: 'Dermatologist', experience:11, fee:100, image:'https://images.unsplash.com/photo-1557182549-099ccb56dbad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')
Doctor.create(name: 'Mercia Williams', email:'mercia@yahoo.com', password:'password' specialization: 'Gynecologist', experience:12, fee:100, image:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
