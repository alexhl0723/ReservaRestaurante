CREATE DATABASE DB_RESERVA_RESTAURANTE;
	
USE DB_RESERVA_RESTAURANTE;


-- Tabla Usuario
CREATE TABLE Usuario (
    idUsuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    apellidoPaterno VARCHAR(30) NOT NULL,
    apellidoMaterno VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    rol ENUM('ADMIN', 'USER') DEFAULT 'USER',
    estado BOOLEAN DEFAULT TRUE
);

-- Tabla Mesa
CREATE TABLE Mesa (
    idMesa INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL UNIQUE,
    capacidad INT NOT NULL,
    estado ENUM('DISPONIBLE', 'OCUPADA', 'RESERVADA') DEFAULT 'DISPONIBLE'
);

-- Tabla Reserva
CREATE TABLE Reserva (
    idReserva INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    numeroPersonas INT NOT NULL,
    estado ENUM('PENDIENTE', 'CONFIRMADA', 'CANCELADA') DEFAULT 'PENDIENTE',
    observaciones TEXT,
    idUsuario INT NOT NULL,
    idMesa INT NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idMesa) REFERENCES Mesa(idMesa)
);


-- Insertar usuarios de prueba
INSERT INTO Usuario (nombre, apellidoPaterno, apellidoMaterno, email, password, telefono, rol) 
VALUES 
    ('Admin', 'Sistema', 'Principal', 'admin@restaurant.com', 'admin123', '912345678', 'ADMIN'),
    ('Usuario', 'Prueba', 'Test', 'user@test.com', 'user123', '911123456', 'USER');


-- Insertar mesas
INSERT INTO Mesa (numero, capacidad, estado) 
VALUES 
    (1, 4, 'DISPONIBLE'),
    (2, 2, 'DISPONIBLE'),
    (3, 6, 'DISPONIBLE'),
    (4, 4, 'DISPONIBLE'),
    (5, 8, 'DISPONIBLE');

DELIMITER //

CREATE PROCEDURE sp_ObtenerReservasPorUsuario(IN p_idUsuario INT)
BEGIN
    SELECT r.idReserva, r.fecha, r.hora, r.numeroPersonas, r.estado, r.observaciones,
           m.numero AS numero_mesa
    FROM Reserva r
    INNER JOIN Mesa m ON r.idMesa = m.idMesa
    WHERE r.idUsuario = p_idUsuario;
END //

DELIMITER ;

CALL sp_ObtenerReservasPorUsuario(3);





-- Consulta
SELECT 
    Mesa.numero AS numero_mesa, 
    Reserva.fecha, 
    Reserva.hora
FROM Reserva
INNER JOIN Mesa ON Reserva.idMesa = Mesa.idMesa;





SELECT r.* FROM reserva r LEFT JOIN usuario u ON r.idusuario = u.idusuario;

SELECT COUNT(*) FROM reserva;
SELECT COUNT(*) FROM usuario;
SELECT r.*, u.nombre 
FROM reserva r 
INNER JOIN usuarios u ON r.idUsuario = u.idUsuario ;

select r.*,u.nombre from reserva r inner join usuario u on r.idUsuario=u.idUsuario
ORDER BY r.fecha DESC, r.hora DESC;

select * from reserva;
select * from usuario;
select * from mesa ;
