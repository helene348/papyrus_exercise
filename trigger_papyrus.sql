

CREATE FUNCTION maj_crefou_dtcfou() returns trigger as $trigger_creation$
    begin
	    update "FOURNIS" set "DTCFOU"=now(), "CREFOU"='USRCRE' where "NOMFOU"=new."NOMFOU";
	   	return new;
    end;
$trigger_creation$ language plpgsql


create trigger trigger_creation
    AFTER INSERT
    ON "FOURNIS"
    FOR EACH ROW
    EXECUTE PROCEDURE maj_crefou_dtcfou();
   
drop trigger trigger_creation on "FOURNIS";
drop function maj_crefou_dtcfou(); 
drop table "FOURNIS" cascade;
drop table "VENTE";
drop table "ENTCOM";
drop table cascade;
    
ALTER TABLE "FOURNIS" ALTER COLUMN "DTCFOU" TYPE timestamp;
insert into "FOURNIS"  values (00888,'PAPYRUS','15 Avenue des Oiseaux', '57000','METZ', 'Ginette');
delete from "FOURNIS" where "NOMFOU" = 'PAPYRUS';
   
select * from "FOURNIS" f;

CREATE FUNCTION maj_modfou_dtmfou() returns trigger as $trigger_modif$
    begin
	    if new."VILFOU" <> old."VILFOU" then
	    	update "FOURNIS" set "DTMDOU"=now(), "MODFOU"='USRMOD' where "VILFOU"=new."VILFOU" ;
	   	end if;
	   	return new;
    end;
$trigger_modif$ language plpgsql

create trigger trigger_modif
    AFTER UPDATE
    ON "FOURNIS"
    FOR EACH ROW
    EXECUTE PROCEDURE maj_modfou_dtmfou();
   
drop trigger trigger_modif on "FOURNIS";
drop function maj_modfou_dtmfou();
   
update "FOURNIS"
set "RUEFOU" = '155 rue des mouettes', 
    "POSFOU" = '54000', 
    "VILFOU" = 'NANCY' 
where "NUMFOU" = '00120';
   
ALTER TABLE "FOURNIS" ALTER COLUMN "DTCFOU" TYPE timestamp;

update "FOURNIS"
set "RUEFOU" = '20 rue du papier', 
    "POSFOU" = '92200', 
    "VILFOU" = 'PAPERCITY',
    "CREFOU" = null
where "NUMFOU" = '00120';



