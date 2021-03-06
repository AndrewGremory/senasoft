DROP DATABASE senasoft;
CREATE DATABASE senasoft;
USE senasoft;

CREATE TABLE rol( 
id_rol INT AUTO_INCREMENT,
nombre_rol VARCHAR(20) UNIQUE NOT NULL,
 CONSTRAINT pk_rol PRIMARY KEY (id_rol)
);
CREATE TABLE usuarios(	
    id_usuario INT  AUTO_INCREMENT,
    nom_usuario VARCHAR(30) NOT NULL,
    docu_usuario INT UNIQUE NOT NULL,
    email_usuario VARCHAR (30) NOT NULL,
    tfl_usuario VARCHAR (15),
    contra_usuario VARCHAR (10) NOT NULL,
    id_rol_usu INT,   
    CONSTRAINT fk_rol_usu FOREIGN KEY (id_rol_usu) REFERENCES rol (id_rol),
    CONSTRAINT pk_usuarios PRIMARY KEY (id_usuario)
   );

CREATE TABLE servicios( 
    id_servicio INT AUTO_INCREMENT,
    nom_servicio VARCHAR  (20) UNIQUE,
    CONSTRAINT pk_rol PRIMARY KEY (id_servicio)
);

CREATE TABLE tipo_turno( 
    id_titurno INT AUTO_INCREMENT,
    nom_titurno VARCHAR(20) UNIQUE NOT NULL,
    hora_ini TIME NOT NULL,
    hora_fin TIME NOT NULL,
    CONSTRAINT pk_rol PRIMARY KEY (id_titurno)
);

CREATE TABLE especialidad( 
    id_especialidad INT AUTO_INCREMENT,
    nom_especialidad VARCHAR(20) UNIQUE,
    CONSTRAINT pk_especialidad PRIMARY KEY (id_especialidad)
);

CREATE TABLE personal(	
    id_personal INT  AUTO_INCREMENT,
    nom_personal VARCHAR(30) NOT NULL,
    docu_personal INT UNIQUE NOT NULL,
    email_personal VARCHAR (30) NOT NULL,
    tfl_personal VARCHAR (15),
    direc_personal VARCHAR (150) NOT NULL,
    id_espec_personal INT,   
    CONSTRAINT fk_espec_personal FOREIGN KEY (id_espec_personal) REFERENCES especialidad (id_especialidad),
    CONSTRAINT pk_personal PRIMARY KEY (id_personal)
   );

CREATE TABLE turnos(	
    id_turno INT  AUTO_INCREMENT,
    fecha_turno DATE NOT NULL,
    id_usu_turno INT,
    id_especialidad_turno INT,
    id_titurno_turno INT,
    fecha_inicio_turno DATE,
    fecha_fin_turno DATE,
    id_servicio INT,
    CONSTRAINT fk_usuario_turno FOREIGN KEY (id_usu_turno) REFERENCES usuarios (id_usuario),
    CONSTRAINT fk_especialidad_turno FOREIGN KEY (id_especialidad_turno) REFERENCES especialidad (id_especialidad),
    CONSTRAINT fk_titurno_turno FOREIGN KEY (id_titurno_turno) REFERENCES tipo_turno (id_titurno),
    CONSTRAINT fk_servicios FOREIGN KEY (id_servicio) REFERENCES servicios (id_servicio),
    CONSTRAINT pk_turno PRIMARY KEY (id_turno)
   );

