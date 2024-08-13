SELECT 1 as Active, -- verificacion  si esta activo
    a.id AS Id_A,  -- Id del item a updagrear
    a.CodeName128 AS CodeName_A,  -- Nombre del item a updagrear
    b.id AS Id_B, --  Id del item destino 
    b.CodeName128 AS CodeName_B , -- nombre  Id del item destino
	10 as PlusReq --plus requerido
FROM 
    _RefObjCommon a
JOIN 
    _RefObjCommon b
ON 

-- Comparcion de item 
    REPLACE(a.CodeName128, '_set_A_rare', '') -- Nombre del item a updagrear
	= 
	REPLACE(b.CodeName128, '_set_B_rare', '') -- nombre  Id del item destino
WHERE 
    a.CodeName128 LIKE '%set_A_rare' --primer  Nombre del item a buscar 
AND 
    b.CodeName128 LIKE '%set_B_rare'; -- segundo Nombre del item a buscar 


/*
Explicación:
REPLACE(a.CodeName128, '_set_A_rare', '') = REPLACE(b.CodeName128, '_set_B_rare', ''):

Esta parte de la consulta compara las cadenas eliminando las partes _set_A_rare y _set_B_rare para encontrar ítems que tengan el mismo prefijo, lo que indica que son el mismo ítem en diferentes niveles.
WHERE a.CodeName128 LIKE '%set_A_rare' AND b.CodeName128 LIKE '%set_B_rare':

Filtra para asegurarse de que solo se están comparando ítems de los niveles set_A y set_B.
Resultado:
La consulta devolverá solo los ítems que están presentes en ambos niveles (set_A y set_B) con el mismo prefijo, permitiéndote trabajar únicamente con aquellos ítems que corresponden directamente entre los dos niveles.

Esto es útil para asegurar que no estés comparando ítems que no tienen equivalentes en el otro nivel.
*/
