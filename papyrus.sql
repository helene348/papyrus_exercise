DROP TABLE IF EXISTS "vente";
DROP TABLE IF EXISTS "ligcom";
DROP TABLE IF EXISTS "entcom";
DROP TABLE IF EXISTS "fournis";
DROP TABLE IF EXISTS "produit";


CREATE TABLE "produit" {
    "codart" CHAR(4) UNIQUE NOT NULL,
    "libart" VARCHAR(25) NOT NULL,
    "stkale" SMALLINT NOT NULL,
    "stkphy" SMALLINT NOT NULL,
    "qteann" SMALLINT NOT NULL,
    "unimes" CHAR(5) NOT NULL,
    PRIMARY KEY("codart")
};

CREATE TABLE "fournis" {
    "numfou" UNIQUE NOT NULL,
    "nomfou" VARCHAR(30) NOT NULL,
    "ruefou" VARCHAR(25) NOT NULL,
    "posfou" CHAR(5) NOT NULL,
    "vilfou" VARCHAR(25) NOT NULL,
    "confou" VARCHAR(15) NOT NULL,
    "satisf" SMALLINT,
    PRIMARY KEY("numfou")
};

CREATE TABLE "entcom" {
    "numcom" INT NOT NULL,
    "obscom" VARCHAR(25),
    "datcom" DATE NOT NULL,
    "numfou" INT NOT NULL,
    PRIMARY KEY("numcom")
};

CREATE TABLE "ligcom" {
    "numcom" NOT NULL,
    "codart" NOT NULL,
    "numlig" SMALLINT NOT NULL,
    "qtecde" SMALLINT NOT NULL,
    "priuni" NUMBER(7,2) NOT NULL,
    "qteliv" SMALLINT,
    "derliv" DATE NOT NULL,
    PRIMARY KEY("numcom", "codart"),
    FOREIGN KEY("numcom") REFERENCES "entcom"("numcom"),
    FOREIGN KEY("codart") REFERENCES "produit"("codart")
};

CREATE TABLE "vente" {
    "codart" CHAR(4) UNIQUE NOT NULL,
    "numfou" NOT NULL,
    "delliv" SMALLINT NOT NULL,
    "qte1" SMALLINT NOT NULL,
    "prix1" NUMBER(7,2) NOT NULL,
    "qte2" SMALLINT,
    "prix2" NUMBER(7,2),
    "qte3" SMALLINT,
    "prix3" NUMBER(7,2),
    PRIMARY KEY("codart", "numfou"),
    FOREIGN KEY("numfou") REFERENCES "vente"("numfou"),
    FOREIGN KEY("codart") REFERENCES "produit"("codart")
};