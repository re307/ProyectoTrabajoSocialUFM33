--Control general de pacientes para Trabajo Social unidad medicina familiar 33
create table ControlPacientes_InformacionGeneral(
	Id int identity(1,1)
	,ControlPacientes_InformacionGeneral_Pacientes_Id int
	--,ControlPacientes_InformacionGeneral_Consultorio_Id int
	,ControlPacientes_InformacionGeneral_Estatus_Id int
	,TrabajadoraSocial_UsuarioId nvarchar(128)
	,RegistroGenerado_TimeStamp datetime
	,RegistroGenerado_UsuarioId nvarchar(128)
)
--Catalogo de Pacientes
create table ControlPacientes_InformacionGeneral_Pacientes(
	Id int identity(1,1)
	,ApellidoPaterno varchar(max)
	,ApellidoMaterno varchar(max)
	,Nombres varchar(max)
	,NumeroSeguridadSocial varchar(max)
	,Consultorio varchar(max)
	,ControlPacientes_InformacionGeneral_Rubro_Id int
	,EsActivo bit
	,RegistroGenerado_TimeStamp datetime
	,RegistroGenerado_UsuarioId nvarchar(128)
)
--Catalogo de estatus
create table ControlPacientes_InformacionGeneral_Estatus(
	Id int identity(1,1)
	,Estatus varchar(max)
	,EsActivo bit
	,RegistroGenerado_TimeStamp datetime
	,RegistroGenerado_UsuarioId nvarchar(128)
)

create table ControlPacientes_InformacionGeneral_Rubro(
	Id int identity(1,1)
	,Rubro varchar(max)
	,EsActivo bit
	,RegistroGenerado_TimeStamp datetime
	,RegistroGenerado_UsuarioId nvarchar(128)
)
--Seguimiento Pacientes es el registro donde las Trabajadoras Sociles llevaran
--su registro y posterior compararla información en Informacion General
create table ControlPacientes_Sguimiento(
	Id int identity(1,1)
	,ControlPacientes_InformacionGeneral_Id int
	,RegistroGenerado_TimeStamp datetime
	,RegistroGenerado_UsuarioId nvarchar(128)
)