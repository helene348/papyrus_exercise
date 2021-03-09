select * from "PRODUIT" p ;
SELECT * FROM "FOURNIS" WHERE "NOMFOU" LIKE '%AP';
select distinct "DEPANPAP" from "FOURNIS";
select distinct "VILFOU" from "FOURNIS" f; -- f nom de FOURNIS
SELECT count(*) FROM "PRODUIT"; 
select "CODART" as code_produit from "PRODUIT" p ;

select "NUMCOM" from "ENTCOM" where "NUMFOU" = '9120';
select distinct "NUMFOU" from "ENTCOM" order by "NUMFOU" asc ;
 
select SUM(round("QTECDE"*"PRIUNI")) as total FROM "LIGCOM";
select COUNT("NUMCOM") as nombre_commandes_passées, COUNT(distinct "NUMFOU") as nombre_fournisseurs_concernés from "ENTCOM";

select "CODART", "LIBART" from "PRODUIT" where "STKPHY" <= "STKALE" and "QTEANN" < 1000;
select "NUMFOU", "NOMFOU" from "FOURNIS" where "POSFOU" like '75%' or "POSFOU" like '77%' or "POSFOU" like '78%' or "POSFOU" like '92%' order by "NOMFOU" asc ;

select "NUMCOM" from "ENTCOM" where "DATCOM" between '01/03/2007' and '30/04/2007';
select "NUMCOM" from "ENTCOM" where date_part(month, "DATCOM");

select "NUMCOM" from "ENTCOM" where "OBSCOM" is not null ;

select round("QTECDE"*"PRIUNI") as total_prix_commande from "LIGCOM" order by total_prix_commande desc; 

select "NUMCOM", "NUMLIG" from "LIGCOM" where round("QTECDE"*"PRIUNI") > 10000 and "QTECDE" < 1000 ;

select e."NUMCOM", f."NOMFOU" from "FOURNIS" f inner join "ENTCOM" e on f."NUMFOU" = e."NUMFOU" order by "NOMFOU" asc;

select l."CODART" from "LIGCOM" l inner join "ENTCOM"e on l."NUMCOM" = e."NUMCOM" where e."OBSCOM" like '%urgent%';

select f."NOMFOU",p."LIBART", p."STKPHY", p."STKALE" from "FOURNIS" f inner join "ENTCOM" e on f."NUMFOU" = e."NUMFOU" inner join "LIGCOM" l on e."NUMCOM" =l."NUMCOM" inner join "PRODUIT" p on l."CODART" = p."CODART" where p."STKPHY" <= round(150*p."STKALE"/100) order by p."LIBART" asc, f."NOMFOU" asc; 

