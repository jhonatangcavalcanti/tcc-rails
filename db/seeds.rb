# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##### Users (usuários) #####
User.create name: 'Jhon', kind: :admin, email: 'jhon@teste.com', password: 123456
User.create name: 'Editor', kind: :editor, email: 'editor@teste.com', password: 123456

##### Buildings (Blocos) #####

building_bloco_1 = Building.create name: 'Bloco 1'
building_bloco_2 = Building.create name: 'Bloco 2'

##### Department Types (Tipos de setores)  #####

department_type_direcao = DepartmentType.create name: 'Direção'
department_type_coordenacao_funcional = DepartmentType.create name: 'Coordenação Funcional'
department_type_incubadora = DepartmentType.create name: 'Incubadora'
department_type_coordenacao_ensino = DepartmentType.create name: 'Coordenação Ensino'
department_type_biblioteca = DepartmentType.create name: 'Biblioteca'
department_type_nucleo_extensao = DepartmentType.create name: 'Nucleo de Extensão'
department_type_departamento = DepartmentType.create name: 'Departamento'
department_type_laboratorio = DepartmentType.create name: 'Laboratório'

##### Departments (Setores) #####

department_direcao = Department.create name: 'Secretaria da direção', department_type: department_type_direcao
department_lti = Department.create name: 'LTI - Laboratório de tecnologia da Informação', department_type: department_type_laboratorio

##### Rooms (Salas) #####

room_direcao = Room.create number: '313', building: building_bloco_1, department: department_direcao
room_lti = Room.create number: '112', building: building_bloco_1, department: department_lti

##### Job Position (Cargo) #####

# job_position_tecnico = JobPosition.create name: 'Técnico'
# job_position_tecnico_administrativo = JobPosition.create name: 'Técnico-administrativo'
job_position_analista_sistemas = JobPosition.create name: 'Analista de Sistemas'
job_position_professor = JobPosition.create name: 'Professor'
# job_position_bibliotecario = JobPosition.create name: 'Bibliotecário'

###### Alocation Role (Função) ######

alocation_role_diretor = AllocationRole.create name: 'Diretor'
# AllocationRole.create name: 'Vice Diretor'
# AllocationRole.create name: 'Coordenador'
# AllocationRole.create name: 'Secretario'
# AllocationRole.create name: 'Chefe'
# AllocationRole.create name: 'Gerente'
alocation_membro = AllocationRole.create name: 'Integrante da Equipe (Membro)'


###### Employees (Servidores) #####

ricardo = Employee.create name: 'Ricardo Carvalho de Barros', email: 'ricardob@iprj.uerj.br', ramal: '3131', job_positions: [job_position_professor]

francisco = Employee.create name: 'Francisco Duarte Moura Neto', email: 'fmoura@iprj.uerj.br', ramal: '1121', job_positions: [job_position_professor]
ursula = Employee.create name: 'Ursula Andrea Barbara Verdugo Rohrer', email: 'ursula@iprj.uerj.br', ramal: '1121', job_positions: [job_position_professor]
edson = Employee.create name: 'Edson Mello Lucas', email: 'emlucas@iprj.uerj.br', ramal: '1121', job_positions: [job_position_analista_sistemas]

###### Alocations (Alocações) #######

Allocation.create employee: ricardo, room: room_direcao, allocation_role: alocation_role_diretor

Allocation.create employee: francisco, room: room_lti, allocation_role: alocation_membro
Allocation.create employee: ursula, room: room_lti, allocation_role: alocation_membro
Allocation.create employee: edson, room: room_lti, allocation_role: alocation_membro
