create schema keepgroup;


create table keepgroup.coche(
	matricula VARCHAR(10) primary key,
	"id_marca" INT not null,
	"modelo" VARCHAR(15) not null,
	"id_color" INT not null,
	"fecha_compra" DATE not null,
	"kilometros_totales" INT not null,
	"id_aseguradora" INT not null,
	"id_revisión" int not null,
	constraint fk_marca foreign key (id_marca) references keepgroup.marca(id),
	constraint fk_color foreign key (id_color) references keepgroup.color(id),
	constraint fk_revision foreign key (id_revisión) references keepgroup.revisión(id),
	constraint fk_aseguradora foreign key (id_aseguradora) references keepgroup.aseguradora(id)
	
);


create table keepgroup.marca(
	id serial primary key,
	"marca" VARCHAR(25) not null,
	"grupo" VARCHAR (30) not null
);


create table keepgroup.color(
	id serial primary key,
	"color" VARCHAR(10) not null
);


create table keepgroup.aseguradora(
	id serial primary key,
	"aseguradora" VARCHAR(15) not null,
	"numero_poliza" INT not null,
	"fecha_alta" INT not null
);


create table keepgroup.revisión(
	id serial primary key,
	"fecha_revisión" DATE not null,
	"kilometros_revisión" INT not null,
	"importe_revisión" INT not null,
	"id_moneda" INT not null,
	constraint fk_moneda foreign key (id_moneda) references keepgroup.moneda(id)
);


create table keepgroup.moneda(
	id serial primary key,
	"moneda" VARCHAR(15) not null
);

--inserts moneda

insert into keepgroup.moneda(id, moneda) 
values(1, 'Euro'),(2, 'Dolar'),(3, 'Peso Colombiano'),(4, 'Peso Mexicano')

--inserts color

insert into keepgroup.color(id, color)
values(1, 'Negro'),(2, 'Blanco'),(3, 'Rojo'),(4, 'Verde'),(5, 'Plateado')

--inserts marca

insert into keepgroup.marca(id, marca, grupo)
values(1, 'Renault', 'Renault GROUP'),(2, 'KIA', 'Hyundai Motor Group'),
(3, 'Nissan', 'Nissan Alliance'), (4, 'Peugeot', 'PSA Peugeot S.A.'),
(5, 'Citroen', 'PSA Peugeot S.A.'),(6, 'Dacia', 'Renault GROUP')

--inserts vehiculos

------------1------------
insert into
keepgroup.aseguradora (id, aseguradora, numero_poliza, fecha_alta)
values(1,'Allianz', 25786, 06.2009)

insert into
keepgroup.revisión (id, fecha_revisión, kilometros_revisión, importe_revisión, id_moneda)
values(1,'2020-07-07', 29564, 1076032.5, 3)

insert into
keepgroup.coche (matricula, id_marca, modelo, id_color, fecha_compra, kilometros_totales, id_aseguradora, id_revisión)
values('7343FRT', 1, 'Clio', 3, '2009-06-01', 47644, 1, 1)

------------2-------------
insert into
keepgroup.aseguradora (id, aseguradora, numero_poliza, fecha_alta)
values(2, 'Allianz', 195443, 04.2010 )

insert into
keepgroup.revisión (id, fecha_revisión, kilometros_revisión, importe_revisión, id_moneda)
values(2, '2010-05-13', 12028, 734.7, 2)

insert into
keepgroup.coche (matricula, id_marca, modelo, id_color, fecha_compra, kilometros_totales, id_aseguradora, id_revisión)
values('2438GSV', 5, 'DS4', 5, '2010-04-17', 52349, 2, 2)

------------3--------------
insert into
keepgroup.aseguradora (id, aseguradora, numero_poliza, fecha_alta)
values(3, 'Axa', 110761, 08.2011)

insert into
keepgroup.revisión (id, fecha_revisión, kilometros_revisión, importe_revisión, id_moneda)
values(3, '2016-05-17', 28312, 460, 1)

insert into
keepgroup.coche (matricula, id_marca, modelo, id_color, fecha_compra, kilometros_totales, id_aseguradora, id_revisión)
values('7221BJG', 2, 'Ceed', 4, '2013-04-17', 76349, 3, 3)

------------4--------------
insert into
keepgroup.aseguradora (id, aseguradora, numero_poliza, fecha_alta)
values(4, 'Mapfre', 142266, 07.2011)

insert into
keepgroup.revisión (id, fecha_revisión, kilometros_revisión, importe_revisión, id_moneda)
values(4,'2012-01-19', 21955, 3615469.2, 3)

insert into
keepgroup.coche (matricula, id_marca, modelo, id_color, fecha_compra, kilometros_totales, id_aseguradora, id_revisión)
values('6756GXW', 4, '206', 1, '2011-07-19', 112881, 4, 4)

-------------5-------------
insert into
keepgroup.aseguradora (id, aseguradora, numero_poliza, fecha_alta)
values(5, 'Generali', 174969, 12.2011)

insert into
keepgroup.revisión (id, fecha_revisión, kilometros_revisión, importe_revisión, id_moneda)
values(5, '2012-04-17', 18060, 1463404.2, 3)

insert into
keepgroup.coche (matricula, id_marca, modelo, id_color, fecha_compra, kilometros_totales, id_aseguradora, id_revisión)
values('7457BFT', 3, 'Leaf', 4, '2011-12-19', 76024, 5, 5)

--------------6-------------
insert into
keepgroup.aseguradora (id, aseguradora, numero_poliza, fecha_alta)
values(6, 'Mapfre', 172754, 03.2006)

insert into
keepgroup.revisión (id, fecha_revisión, kilometros_revisión, importe_revisión, id_moneda)
values(6, '2021-04-19', 42110, 74.4, 2)

insert into
keepgroup.coche (matricula, id_marca, modelo, id_color, fecha_compra, kilometros_totales, id_aseguradora, id_revisión)
values('8177JPM', 1, 'Clio', 5, '2016-11-27', 77082, 6, 6)