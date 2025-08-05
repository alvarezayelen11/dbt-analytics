WITH base AS (
    SELECT *
    FROM {{ ref('stg_zapateria') }}
)

SELECT
    ID,
    nombre,
    apellido,
    -- Normalizamos el campo genero:
    CASE 
        WHEN genero = 'Sin datos' THEN 'Prefiero no contestar' 
        ELSE genero
    END AS genero,
    fecha_nac,
    fecha_de_alta,
    edad,
    talle_calzado,
    telefono,
    te_gustaria_recibir_descuentos
FROM base