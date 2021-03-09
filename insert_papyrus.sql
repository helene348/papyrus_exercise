insert into "PRODUIT" values ('I100','Papier 1ex Continu',100,557,3500,'B1000');
insert into "PRODUIT" values ('I105','Papier 2ex Continu',75,5,2300,'B1000');
insert into "PRODUIT" values ('I108','Papier 3ex Continu',200,557,3500,'B500');
insert into "PRODUIT" values ('I110', 'Papier 4ex Continu',10,12,63,'B400');
insert into "PRODUIT" values ('P220','Pr� imprim� commande', 500, 2500, 24500,'B500');
insert into "PRODUIT" values ('P230','Pr� imprim� facture', 500, 2500, 12500,'B1000');
insert into "PRODUIT" values ('P240','Pr� imprim� bulletin paie', 500, 3000, 6250,'B500');
insert into "PRODUIT" values ('P250','Pr� imprim� bon livraison', 500, 2500, 24500,'B500');
insert into "PRODUIT" values ('P270','Pr� imprim� bon fabric.', 500, 2500, 24500,'B500');
insert into "PRODUIT" values ('R080','Ruban Epson 850', 10, 2, 120,'unit�');
insert into "PRODUIT" values ('R132','Ruban imp1200lignes', 25, 200, 182,'unit�');
insert into "PRODUIT" values ('B002','Bande magnétique 6250', 20, 12, 410,'unit�');
insert into "PRODUIT" values ('B001','Bande magnétique 1200', 20, 87, 240,'unit�');
insert into "PRODUIT" values ('D035','CD R slim 80 mm', 40, 42, 150,'B010');
insert into "PRODUIT" values ('D080','CD R-W 80 mm', 50, 4, 0,'B010');


insert into "FOURNIS"  values (00120,'GROBRIGAN','20 rue du papier','92200','PAPERCITY','Georges',8);
insert into "FOURNIS"  values (00540,'ECLIPSE','55 laisse floter','78250','BUGBUGVILLE','Nestor',7);
insert into "FOURNIS"  values (08700,'MEDICIS','120 rue des plantes','75014','PARIS','Lison');
insert into "FOURNIS"  values (09120,'DISCOBOL','11 rue des sports','85100','LA ROCHE SUR YON','Hercule',8);
insert into "FOURNIS"  values (09150,'DEPANPAP','25 rue des locomotives','59987','CORONCOUNTRY','Pollux',5);
insert into "FOURNIS"  values (09180,'HURRYTAPE','68 boulevard des octets','04044','DUMPVILLE','Track');


insert into "VENTE" values ('I100', 00120, 90, 0, 700, 50, 600, 120, 500);
insert into "VENTE" values ('I100', 00540, 70, 0, 710, 60, 630, 100, 600);
insert into "VENTE" values ('I100', 09120, 60, 0, 800, 70, 600, 90, 500);
insert into "VENTE" values ('I100', 09150, 90, 0, 650, 90, 600, 200, 590);
insert into "VENTE" values ('I100', 09180, 30, 0, 720, 50, 670, 100, 490);
insert into "VENTE" values ('I105', 00120, 90, 10, 705, 50, 630, 120, 500);
insert into "VENTE" values ('I105', 00540, 70, 0, 810, 60, 645, 100, 600);
insert into "VENTE" values ('I105', 09120, 60, 0, 920, 70, 800, 90, 700);
insert into "VENTE" values ('I105', 09150, 90, 0, 685, 90, 600, 200, 590);
insert into "VENTE" values ('I105', 08700, 30, 0, 720, 50, 670, 100, 510);
insert into "VENTE" values ('I108', 00120, 90, 5, 795, 30, 720, 100, 680);
insert into "VENTE" values ('I108', 09120, 60, 0, 920, 70, 820, 100, 780);
insert into "VENTE" values ('I110', 09180, 90, 0, 900, 70, 870, 90, 835);
insert into "VENTE" values ('I110', 09120, 60, 0, 950, 70, 850, 90, 790);
insert into "VENTE" values ('D035', 00120, 0, 0, 40);
insert into "VENTE" values ('D035', 09120, 5, 0, 40, 100, 30);
insert into "VENTE" values ('I105', 09120, 8, 0, 37);
insert into "VENTE" values ('D035', 00120, 0, 0, 40);
insert into "VENTE" values ('D035', 09120, 5, 0, 40, 100, 30, 5, 0);
insert into "VENTE" values ('I105', 09120, 8, 0, 37);
insert into "VENTE" values ('P220', 00120, 15, 0, 3700, 100, 3500);
insert into "VENTE" values ('P230', 00120, 30, 0, 5200, 100, 5000);
insert into "VENTE" values ('P240', 00120, 15, 0, 2200, 100, 2000);
insert into "VENTE" values ('P250', 00120, 30, 0, 1500, 100, 1400, 500, 1200);
insert into "VENTE" values ('P250', 09120, 30, 0, 1500, 100, 1400, 500, 1200);
insert into "VENTE" values ('P220', 08700, 20, 50, 3500, 100, 3350);
insert into "VENTE" values ('P230', 08700, 60, 0, 5000, 50, 4900);
insert into "VENTE" values ('R080', 09120, 10, 0, 120, 100, 100);
insert into "VENTE" values ('R132', 09120, 5, 0, 275);
insert into "VENTE" values ('B001', 08700, 15, 0, 150, 50, 145, 100, 140);
insert into "VENTE" values ('B002', 08700, 15, 0, 210, 50, 200, 100, 185);


insert into "ENTCOM" values (70010, NULL, '10/02/2007', 00120);
insert into "ENTCOM" values (70011,'Commande urgente', '01/03/2007', 00540);
insert into "ENTCOM" values (70020, NULL,'25/04/2007', 09180);
insert into "ENTCOM" values (70025,'Commande urgente', '30/04/2007', 09150);
insert into "ENTCOM" values (70210,'Commande cadenc�e', '05/05/2007', 00120);
insert into "ENTCOM" values (70300, NULL, '06/06/2007', 09120);
insert into "ENTCOM" values (70250,'Commande cadenc�e', '02/10/2007', 08700);
insert into "ENTCOM" values (70620, NULL,'02/10/2007', 00540);
insert into "ENTCOM" values (70625, NULL, '09/10/2007', 00120);
insert into "ENTCOM" values (70629, NULL, '12/10/2007', 09180);


insert into "LIGCOM" values (70010, 01, 'I100', 3000, 470, 3000, '15/03/2007');
insert into "LIGCOM" values (70010, 02, 'I105', 2000, 485, 2000, '05/07/2007');
insert into "LIGCOM" values (70010, 03, 'I108', 1000, 680, 1000, '20/08/2007');
insert into "LIGCOM" values (70010, 04, 'D035', 200, 40, 250, '20/02/2007');
insert into "LIGCOM" values (70010, 05, 'P220', 6000, 3500, 6000, '31/03/2007');
insert into "LIGCOM" values (70010, 06, 'P240', 6000, 2000, 2000, '31/03/2007');
insert into "LIGCOM" values (70011, 01, 'I105', 1000, 600, 1000, '16/05/2007');
insert into "LIGCOM" values (70020, 01, 'B001', 200, 140, 0,'31/12/2007');
insert into "LIGCOM" values (70020, 02, 'B002', 200, 140, 0,'31/12/2007');
insert into "LIGCOM" values (70025, 01, 'I100', 1000, 590, 1000, '15/05/2007');
insert into "LIGCOM" values (70025, 02, 'I105', 500, 590, 500, '15/05/2007');
insert into "LIGCOM" values (70210, 01, 'I100', 1000, 470, 1000, '15/07/2007');
insert into "LIGCOM" values (70210, 02, 'P220', 10000, 3500, 10000, '31/08/2007');
insert into "LIGCOM" values (70300, 01, 'I110', 50, 790, 50, '31/10/2007');
insert into "LIGCOM" values (70250, 01, 'P230', 15000, 4900, 12000, '15/12/2007');
insert into "LIGCOM" values (70250, 02, 'P220', 10000, 3350, 10000, '10/11/2007');
insert into "LIGCOM" values (70620, 01, 'I105', 200, 600, 200, '01/11/2007');
insert into "LIGCOM" values (70625, 01, 'I100', 1000, 470, 1000, '15/10/2007');
insert into "LIGCOM" values (70625, 02, 'P220', 10000, 3500, 10000, '31/10/2007');
insert into "LIGCOM" values (70629, 01, 'B001', 200, 140,0 ,'31/12/2007');
insert into "LIGCOM" values (70629, 02, 'B002', 200, 140,0 ,'31/12/2007');