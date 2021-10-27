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

department_direcao = Department.create name: 'Direção', department_type: department_type_direcao

department_coadm = Department.create name: 'COADM - Coordenadoria de Administração', department_type: department_type_coordenacao_funcional

department_lti = Department.create name: 'LTI - Laboratório de tecnologia da Informação', department_type: department_type_laboratorio
department_labtran = Department.create name: 'LABTRAN - Laboratório de Modelagem MultiEscala e Transporte de Partículas ', department_type: department_type_laboratorio

department_dmc = Department.create name: 'DMC - Departamento de Modelagem Computacional', department_type: department_type_departamento

##### Rooms (Salas) #####

room_direcao_313 = Room.create number: '313', building: building_bloco_1, department: department_direcao

room_coadm_313 = Room.create number: '313', building: building_bloco_1, department: department_coadm

room_lti_112 = Room.create number: '112', building: building_bloco_1, department: department_lti

room_dmc_225 = Room.create number: '225', building: building_bloco_1, department: department_dmc
room_dmc_223 = Room.create number: '223', building: building_bloco_1, department: department_dmc

room_labtran_105 = Room.create number: '105', building: building_bloco_1, department: department_labtran
room_labtran_107 = Room.create number: '107', building: building_bloco_1, department: department_labtran
room_labtran_108 = Room.create number: '108', building: building_bloco_1, department: department_labtran

##### Job Position (Cargo) #####

job_position_tecnico = JobPosition.create name: 'Técnico'
job_position_bolsista = JobPosition.create name: 'Bolsista'
# job_position_tecnico_administrativo = JobPosition.create name: 'Técnico-administrativo'
# job_position_analista_sistemas = JobPosition.create name: 'Analista de Sistemas'
job_position_professor = JobPosition.create name: 'Professor'
# job_position_bibliotecario = JobPosition.create name: 'Bibliotecário'

###### Alocation Role (Função) ######

alocation_role_diretor = AllocationRole.create name: 'Diretor'
alocation_role_vice_diretor = AllocationRole.create name: 'Vice Diretor'
alocation_role_coordenador = AllocationRole.create name: 'Coordenador'
alocation_role_secretario = AllocationRole.create name: 'Secretario'
# AllocationRole.create name: 'Chefe'
# AllocationRole.create name: 'Gerente'
alocation_membro = AllocationRole.create name: 'Integrante da Equipe (Membro)'


###### Employees (Servidores) #####

ricardob = Employee.create name: 'Ricardo Carvalho de Barros', email: 'ricardob@iprj.uerj.br', job_positions: [job_position_professor]
helio = Employee.create name: 'Helio Pedro Amaral Souto', email: 'helio@iprj.uerj.br', job_positions: [job_position_professor]
arthur = Employee.create name: 'Arthur Alencar Filarde de Freitas', email: 'arthur@iprj.uerj.br', job_positions: [job_position_tecnico]
bmenezes = Employee.create name: 'Bárbara Valéria Menezes de Oliveira', email: 'bmenezes@iprj.uerj.br', job_positions: [job_position_tecnico]

ferreira = Employee.create name: 'Marcello da Silva Ferreira', email: 'ferreira@iprj.uerj.br', job_positions: [job_position_tecnico]
andrea = Employee.create name: 'Andréa Teixeira de Medeiros', email: 'andrea@iprj.uerj.br', job_positions: [job_position_tecnico]
daiany = Employee.create name: 'Daiany da Silva Pereira Pinto', email: 'daiany@iprj.uerj.br', job_positions: [job_position_tecnico]

francisco = Employee.create name: 'Francisco Duarte Moura Neto', email: 'fmoura@iprj.uerj.br', job_positions: [job_position_professor]
ursula = Employee.create name: 'Ursula Andrea Barbara Verdugo Rohrer', email: 'ursula@iprj.uerj.br', job_positions: [job_position_professor]
edson = Employee.create name: 'Edson Mello Lucas', email: 'emlucas@iprj.uerj.br', job_positions: [job_position_tecnico]

aanamen = Employee.create name: 'Anderson Amendoeira Namen', email: 'aanamen@iprj.uerj.br', job_positions: [job_position_professor]
bernardo = Employee.create name: 'Bernardo Sotto-Maior Peralva', email: 'bernardo@iprj.uerj.br', job_positions: [job_position_professor]
edirlei = Employee.create name: 'Edirlei Éverson Soares de Lima', email: 'edirlei@iprj.uerj.br', job_positions: [job_position_professor]
domingues = Employee.create name: 'Guilherme de Melo Baptista Domingues', email: 'domingues@iprj.uerj.br', job_positions: [job_position_professor]
lcustodio = Employee.create name: 'Lis Ingrid Roque Lopes Custodio', email: 'lcustodio@iprj.uerj.br', job_positions: [job_position_professor]
silvia_dias = Employee.create name: 'Sílvia Cristina Dias Pinto', email: 'silvia.dias@iprj.uerj.br', job_positions: [job_position_professor]
silvia_victer = Employee.create name: 'Silvia Mara da Costa Campos Victer', email: 'silviavicter@iprj.uerj.br', job_positions: [job_position_professor]

dmilitao = Employee.create name: 'Damiano da Silva Militão', email: 'dmilitão@iprj.uerj.br', job_positions: [job_position_professor]
gsouza = Employee.create name: 'Grazione de Souza Boy', email: 'gsouza@iprj.uerj.br', job_positions: [job_position_professor]
halves = Employee.create name: 'Hermes Alves Filho', email: 'halves@iprj.uerj.br', job_positions: [job_position_professor]
liviajatoba = Employee.create name: 'Livia Flávia Carletti Jatobá', email: 'liviajatoba@iprj.uerj.br', job_positions: [job_position_professor]
guaraldi = Employee.create name: 'Hilton Guaraldi', email: 'guaraldi@iprj.uerj.br', job_positions: [job_position_tecnico]
ptarco = Employee.create name: 'Paulo de Tarço Honório Jr.', email: 'ptarco@iprj.uerj.br', job_positions: [job_position_bolsista]

###### Alocations (Alocações) #######

Allocation.create employee: ricardob, ramal: '3131', room: room_direcao_313, allocation_role: alocation_role_diretor
Allocation.create employee: helio, ramal: '3131', room: room_direcao_313, allocation_role: alocation_role_vice_diretor
Allocation.create employee: arthur, ramal: '3134', room: room_direcao_313, allocation_role: alocation_role_secretario
Allocation.create employee: bmenezes, ramal: '3134', room: room_direcao_313, allocation_role: alocation_role_secretario

Allocation.create employee: ferreira, ramal: '3111', room: room_coadm_313, allocation_role: alocation_role_coordenador
Allocation.create employee: andrea, ramal: '3113', room: room_coadm_313, allocation_role: alocation_role_secretario
Allocation.create employee: daiany, ramal: '3112', room: room_coadm_313, allocation_role: alocation_role_secretario

Allocation.create employee: francisco, ramal: '1121', room: room_lti_112, allocation_role: alocation_membro
Allocation.create employee: ursula, ramal: '1121', room: room_lti_112, allocation_role: alocation_membro
Allocation.create employee: edson, ramal: '1121', room: room_lti_112, allocation_role: alocation_membro

Allocation.create employee: aanamen, ramal: '2107', room: room_dmc_225, allocation_role: alocation_membro
Allocation.create employee: bernardo, ramal: '2231', room: room_dmc_223, allocation_role: alocation_membro
Allocation.create employee: edirlei, ramal: '2106', room: room_dmc_225, allocation_role: alocation_membro
Allocation.create employee: domingues, ramal: '2231', room: room_dmc_223, allocation_role: alocation_membro
Allocation.create employee: lcustodio, ramal: '2231', room: room_dmc_223, allocation_role: alocation_membro
Allocation.create employee: silvia_dias, ramal: '2108', room: room_dmc_225, allocation_role: alocation_membro
Allocation.create employee: silvia_victer, ramal: '2108', room: room_dmc_223, allocation_role: alocation_membro

Allocation.create employee: helio, ramal: '1051', room: room_labtran_105, allocation_role: alocation_membro
Allocation.create employee: dmilitao, ramal: '1081', room: room_labtran_108, allocation_role: alocation_membro
Allocation.create employee: gsouza, ramal: '1051', room: room_labtran_105, allocation_role: alocation_membro
Allocation.create employee: halves, ramal: '1071', room: room_labtran_107, allocation_role: alocation_membro
Allocation.create employee: liviajatoba, ramal: '1052', room: room_labtran_105, allocation_role: alocation_membro
Allocation.create employee: ricardob, ramal: '1081', room: room_labtran_108, allocation_role: alocation_membro
Allocation.create employee: guaraldi, ramal: '1071', room: room_labtran_107, allocation_role: alocation_membro
Allocation.create employee: ptarco, ramal: '1051', room: room_labtran_105, allocation_role: alocation_membro
