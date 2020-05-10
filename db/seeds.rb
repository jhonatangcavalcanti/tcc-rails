# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##### Buildings #####

building_bloco_1 = Building.create name: 'Bloco 1'
building_bloco_2 = Building.create name: 'Bloco 2'

##### Room Types  #####

room_type_laboratorio = RoomType.create name: 'Laboratório'
room_type_secretaria = RoomType.create name: 'Secretaria'

##### Rooms #####

room_direcao = Room.create name: 'Secretaria da direção', number: '101', room_type: room_type_secretaria, building: building_bloco_1
room_lti = Room.create name: 'LTI', number: '301', room_type: room_type_laboratorio, building: building_bloco_1
room_lab_teste = Room.create name: 'Lab de teste', number: '202', room_type: room_type_laboratorio, building: building_bloco_2

##### Job Position #####

job_position_tecnico = JobPosition.create name: 'Técnico'
job_position_professor = JobPosition.create name: 'Professor'
job_position_diretor = JobPosition.create name: 'Diretor'

##### Employees #####

Employee.create name: 'Employee Test', email: 'test@test.com', ramal: '1010', job_position: [job_position_tecnico], room: [room_lab_teste]
Employee.create name: 'John Doe', email: 'john@test.com', ramal: '2020', job_position: [job_position_professor], room: [room_lti]
Employee.create name: 'Jhonatan', email: 'jhon@test.com', ramal: '3030', job_position: [job_position_diretor, job_position_professor], room: [room_direcao]
