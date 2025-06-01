-- Explicación:

-- OBJECT_ID('dbo.DL_Homicidios', 'U'): Verifica si existe un objeto de tipo tabla ('U' para "User Table") con ese nombre.

-- Si OBJECT_ID devuelve NULL, la tabla no existe, por lo que se ejecuta la instrucción CREATE TABLE.

IF OBJECT_ID('dbo.DL_programas', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.DL_programas (
        codigoinstitucion VARCHAR(50) NULL,
        nombreinstitucion VARCHAR(255) NULL,
        codigodepartinstitucion VARCHAR(50) NULL,
        nombredepartinstitucion VARCHAR(255) NULL,
        codigomunicipioinstitucion VARCHAR(50) NULL,
        nombremunicipioinstitucion VARCHAR(255) NULL,
        codigoorigeninstitucional VARCHAR(50) NULL,
        nombreorigeninstitucional VARCHAR(255) NULL,
        codigocaracteracademico VARCHAR(50) NULL,
        nombrecaracteracademico VARCHAR(255) NULL,
        codigoprograma VARCHAR(50) NULL,
        nombreprograma VARCHAR(255) NULL,
        codigodepartprograma VARCHAR(50) NULL,
        nombredepartprograma VARCHAR(255) NULL,
        codigomunicipioprograma VARCHAR(50) NULL,
        nombremunicipioprograma VARCHAR(255) NULL,
        codigoestadoprograma VARCHAR(50) NULL,
        nombreestadoprograma VARCHAR(255) NULL,
        cantidadcreditos INT NULL,
        fecha_acreditacion DATE NULL,
        codigoareaconocimiento INT NULL,
        nombreareaconocimiento VARCHAR(255) NULL,
        codigometodologia VARCHAR(50) NULL,
        nombremetodologia VARCHAR(255) NULL,
        codigonbc VARCHAR(50) NULL,
        nombrenbc VARCHAR(255) NULL,
        codigonivelformacion VARCHAR(50) NULL,
        nombrenivelformacion VARCHAR(255) NULL,
        codigonivelacademico VARCHAR(50) NULL,
        nombrenivelacademico VARCHAR(255) NULL,
        codigoperiodicidad VARCHAR(50) NULL,
        nombreperiodicidad VARCHAR(255) NULL,
        cantidadperiodos INT NULL,
        numeroresolucionacreditacion VARCHAR(50) NULL,
        codigotipoacreditacion VARCHAR(50) NULL,
        nombretipoacreditacion VARCHAR(255) NULL,
        aniosacreditados INT NULL,
        nombretituloobtenido VARCHAR(255) NULL,
        fecha_creacion DATE NULL
        
        
    );
END;

 