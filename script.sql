CREATE DATABASE FloristeriaFiorella;
GO

USE FloristeriaFiorella;
GO

-- Tabla para almacenar los datos de compras
CREATE TABLE Compras (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Cliente VARCHAR(100),
    Departamento VARCHAR(50),
    Rosas INT,
    Claveles INT,
    Macetas INT,
    Tierra INT,
    Girasoles INT,
    Hortensia INT,
    Globos INT,
    Tarjetas INT,
    Orquideas INT,
    Carmesi INT,
    Lirios INT,
    Aurora INT,
    Tulipanes INT,
    Liston INT
);

--DROP TABLE Compras;

SELECT * FROM Compras;

SELECT Departamento, COUNT(*) FROM Compras GROUP BY Departamento;

-- Preferencias por departamento
SELECT 
    Departamento,
    SUM(Rosas) AS Total_Rosas,
    SUM(Claveles) AS Total_Claveles,
    SUM(Macetas) AS Total_Macetas,
    SUM(Tierra) AS Total_Tierra,
    SUM(Girasoles) AS Total_Girasoles,
    SUM(Hortensia) AS Total_Hortensias,
    SUM(Globos) AS Total_Globos,
    SUM(Tarjetas) AS Total_Tarjetas,
    SUM(Orquideas) AS Total_Orquideas,
    SUM(Carmesi) AS Total_Carmesi,
    SUM(Lirios) AS Total_Lirios,
    SUM(Aurora) AS Total_Aurora,
    SUM(Tulipanes) AS Total_Tulipanes,
    SUM(Liston) AS Total_Liston
FROM dbo.Compras
GROUP BY Departamento
ORDER BY Departamento;

-- Preferencias nacionales
SELECT 
    SUM(Rosas) AS Total_Rosas,
    SUM(Claveles) AS Total_Claveles,
    SUM(Macetas) AS Total_Macetas,
    SUM(Tierra) AS Total_Tierra,
    SUM(Girasoles) AS Total_Girasoles,
    SUM(Hortensia) AS Total_Hortensias,
    SUM(Globos) AS Total_Globos,
    SUM(Tarjetas) AS Total_Tarjetas,
    SUM(Orquideas) AS Total_Orquideas,
    SUM(Carmesi) AS Total_Carmesi,
    SUM(Lirios) AS Total_Lirios,
    SUM(Aurora) AS Total_Aurora,
    SUM(Tulipanes) AS Total_Tulipanes,
    SUM(Liston) AS Total_Liston
FROM dbo.Compras;



-- Combinaciones más compradas
SELECT TOP 5 
       Rosas, Claveles, Macetas, Tierra, Girasoles, Hortensia, Globos, Tarjetas, Orquideas, Carmesi, Lirios, Aurora, Tulipanes, Liston,
       COUNT(*) AS Frecuencia
FROM Compras
GROUP BY Rosas, Claveles, Macetas, Tierra, Girasoles, Hortensia, Globos, Tarjetas, Orquideas, Carmesi, Lirios, Aurora, Tulipanes, Liston
ORDER BY Frecuencia DESC;

