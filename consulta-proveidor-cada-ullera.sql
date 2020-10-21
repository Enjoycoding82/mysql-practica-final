SELECT u.id_ullera, u.marcas_id_marca, m.nom_marca, m.proveidors_id_prov, p.nom  AS 'nom proveidor' 
FROM ulleres AS u INNER JOIN marcas AS m 
ON u.marcas_id_marca=m.id_marca
INNER JOIN proveidors AS p
ON m.proveidors_id_prov=p.id_prov