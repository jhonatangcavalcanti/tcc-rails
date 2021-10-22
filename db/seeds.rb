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

##### Department Types  #####

department_type_laboratorio = DepartmentType.create name: 'Laboratório'
department_type_secretaria = DepartmentType.create name: 'Secretaria'
department_type_departamento = DepartmentType.create name: 'Departamento'
department_type_direcao = DepartmentType.create name: 'Direção'

##### Departments #####

department_direcao = Department.create name: 'Secretaria da direção', department_type: department_type_direcao
department_lti = Department.create name: 'LTI', department_type: department_type_laboratorio
department_teste = Department.create name: 'Lab de teste', department_type: department_type_laboratorio
department_dmc = Department.create name: 'DMC', department_type: department_type_laboratorio

##### Rooms #####

room_direcao = Room.create number: '101', building: building_bloco_1, department: department_direcao
room_lti = Room.create number: '301', building: building_bloco_1, department: department_lti
room_lab_teste = Room.create number: '202', building: building_bloco_2, department: department_teste
room_dptmc_223 = Room.create number: '223', building: building_bloco_1, department: department_dmc
room_dptmc_225 = Room.create number: '225', building: building_bloco_1, department: department_dmc

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
