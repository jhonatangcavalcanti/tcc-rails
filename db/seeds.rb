# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##### Users #####
User.create name: 'Jhon', kind: :admin, email: 'jhon@teste.com', password: 123456
User.create name: 'Editor', kind: :editor, email: 'editor@teste.com', password: 123456

##### Buildings #####

building_bloco_1 = Building.create name: 'Bloco 1'
building_bloco_2 = Building.create name: 'Bloco 2'

##### Room Types  #####

room_type_laboratorio = RoomType.create name: 'Laboratório'
room_type_secretaria = RoomType.create name: 'Secretaria'
room_type_departamento = RoomType.create name: 'Departamento'

##### Departments #####

department_direcao = Department.create name: 'Secretaria da direção'
department_lti = Department.create name: 'LTI'
department_teste = Department.create name: 'Lab de teste'
department_dmc = Department.create name: 'DMC'

##### Rooms #####

room_direcao = Room.create name: 'Secretaria da direção', number: '101', room_type: room_type_secretaria, building: building_bloco_1, department: department_direcao
room_lti = Room.create name: 'Lab LTI', number: '301', room_type: room_type_laboratorio, building: building_bloco_1, department: department_lti
room_lab_teste = Room.create name: 'Lab de teste', number: '202', room_type: room_type_laboratorio, building: building_bloco_2, department: department_teste
room_dptmc_223 = Room.create name: 'Dpto DMC', number: '223', room_type: room_type_departamento, building: building_bloco_1, department: department_dmc
room_dptmc_225 = Room.create name: 'Dpto DMC', number: '225', room_type: room_type_departamento, building: building_bloco_1, department: department_dmc

##### Job Position #####

job_position_tecnico = JobPosition.create name: 'Técnico'
job_position_tecnico_administrativo = JobPosition.create name: 'Técnico-administrativo'
job_position_professor = JobPosition.create name: 'Professor'
job_position_bibliotecario = JobPosition.create name: 'Bibliotecário'
# job_position_diretor = JobPosition.create name: 'Diretor'

###### Alocation Role ######

AllocationRole.create name: 'Diretor'
AllocationRole.create name: 'Vice Diretor'
AllocationRole.create name: 'Coordenador'
AllocationRole.create name: 'Secretario'
AllocationRole.create name: 'Chefe'
AllocationRole.create name: 'Gerente'
AllocationRole.create name: 'Integrante da Equipe (Membro)'

###### Employees #####

Employee.create name: 'Employee Test', email: 'test@test.com', ramal: '1010' #, job_position: [job_position_tecnico]
Employee.create name: 'John Doe', email: 'john@test.com', ramal: '2020' #, job_position: [job_position_professor]
Employee.create name: 'Jhonatan', email: 'jhon@test.com', ramal: '3030' #, job_position: [job_position_diretor, job_position_professor]
