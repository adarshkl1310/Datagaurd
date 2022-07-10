# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#


=begin Facker gem seed data for create Employee

10.times do
    Employee.create!(
        name = Faker::Name.first_name
    )
end
=end

# Also used is_leader(allow only particular employee become leader using boolean is_leader: true) 

employees = Employee.create([
	{ name: 'Adarsh',is_leader: true}, 
	{ name: 'Sanket',is_leader: true},
	{ name: 'Piyush'},
	{ name: 'Milan' ,is_leader: true},
	{ name: 'Swati'},
	{ name: 'Shreya'},
	{ name: 'Kinjal',is_leader: true },
	{ name: 'Preeya'},
    { name: 'Hadria'},
    { name: 'Rapoto'},	
    { name: 'Addie',is_leader: true },	
    { name: 'Slavomir'},	
    { name: 'Adi'},	
    { name: 'Gaultier',is_leader: true },	
    { name: 'Ado'}
])