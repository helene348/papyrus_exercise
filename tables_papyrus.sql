

create table "PRODUIT" (
    "CODART" char(4) not null,
    "LIBART" varchar(25) not null,
    "STKALE" smallint not null,
    "STKPHY" smallint not null,
    "QTEANN" smallint not null,
    "UNIMES" char(5) not null,
    primary key ("CODART")
);

create table "FOURNIS" (
    "NUMFOU" int not null, 
    "NOMFOU" varchar(30) not null, 
    "RUEFOU" varchar(30) not null, 
    "POSFOU" char(5) not null, 
    "VILFOU" varchar (25) not null, 
    "CONFOU" varchar(15) not null, 
    "SATISF" smallint,
    primary key("NUMFOU")
);

create table "VENTE" (
    "CODART" char(4) not null,
    "NUMFOU" int not null, 
    "DELLIV" smallint not null,
    "QTE1" int ,
    "PRIX1" decimal,
    "QTE2" int,
    "PRIX2" decimal,
    "QTE3" int,
    "PRIX3" decimal,
    primary key("NUMFOU", "CODART"),
    foreign key("NUMFOU") references "FOURNIS"("NUMFOU"),
    foreign key("CODART") references "PRODUIT"("CODART")
);
    
create table "ENTCOM" (
    "NUMCOM" int not null, 
    "OBSCOM" varchar, 
    "DATCOM" date not null, 
    "NUMFOU" int not null, 
    primary key("NUMCOM"),
    foreign key("NUMFOU") references "FOURNIS"("NUMFOU")
);
   
 create table "LIGCOM" (
    "NUMCOM" int not null, 
    "NUMLIG" int not null, 
    "CODART" char (4) not null, 
    "QTECDE" int not null, 
    "PRIUNI" decimal , 
    "QTELIV" int not null, 
    "DERLIV" date,
    primary key("NUMCOM","CODART"),
    foreign key("CODART") references "PRODUIT"("CODART")
);