-----Query-------
select keepgroup.coche.matricula ,keepgroup.coche.fecha_compra,
keepgroup.marca.marca, keepgroup.coche.modelo,
keepgroup.marca.grupo, keepgroup.color.color ,
keepgroup.coche.kilometros_totales, keepgroup.aseguradora.aseguradora,
keepgroup.aseguradora.numero_poliza 
from keepgroup.coche
join keepgroup.marca
on keepgroup.coche.id_marca = keepgroup.marca.id
join keepgroup.color
on keepgroup.coche.id_color = keepgroup.color.id
join keepgroup.aseguradora
on keepgroup.coche.id_aseguradora = keepgroup.aseguradora.id 