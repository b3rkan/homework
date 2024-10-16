CREATE DATABASE mdata;
USE mdata


CREATE TABLE musteri (
id INT AUTO_INCREMENT PRIMARY KEY,
ad VARCHAR(50),
soyad VARCHAR(50)
);

CREATE TABLE sanatci (
id INT AUTO_INCREMENT PRIMARY KEY,
muzisyen VARCHAR(50),
muzik_turu VARCHAR(50)
);

CREATE TABLE urun (
id INT AUTO_INCREMENT PRIMARY KEY,
urun_adi VARCHAR(50),
urun_fiyatı INT,
urun_turu VARCHAR(50)
);


INSERT INTO musteri
VALUES (1, "Berkan","Hetfield"), 
(2,"Cansu","Türkcan"), 
(3,"Murat","Çamlı"),
(4,"İpek","Güler"), 
(5,"İlker","White");


INSERT INTO sanatci
VALUES (1,"Led Zeppelin","Rock"), 
(2,"Metallica","Metal"),
(3,"Michael Jackson","Pop"), 
(4,"Elvis Presley","Rock'N Roll"), 
(5,"Cem Karaca","Anadolu Rock");

INSERT INTO urun
VALUES (1,"Mothership",1500,"Rock"),
(2,"Master of Puppets",1100, "Metal"),
(3,"Thriller",2000,"Pop"),
(4,"Blue Hawaii",650,"Rock'N Roll"),
(5,"Nem Kaldı?",2500,"Anadolu Rock");


SELECT * FROM musteri

SELECT * FROM musteri
where id = 1

SELECT * FROM musteri
where ad = "İpek"

SELECT * FROM musteri
where soyad = "White"

SELECT * FROM sanatci
where muzik_turu = "Rock"

SELECT * FROM sanatci
where muzik_turu = "Metal"

SELECT * FROM sanatci
where muzisyen = "Elvis Presley"

SELECT * FROM sanatci
where muzisyen = "Michael Jackson"

SELECT * FROM sanatci,urun where sanatci.id = urun.id

SELECT * FROM sanatci
where id < 4 

SELECT * FROM sanatci
where id > 3

SELECT * FROM urun
where urun_turu = "Rock"

SELECT * FROM urun
where urun_turu = "Rock'N Roll"

SELECT * FROM urun
where urun_fiyatı >  600

SELECT * FROM urun
where urun_fiyatı >  800

SELECT * FROM urun
where urun_fiyatı <  1200 

SELECT muzisyen FROM sanatci

SELECT * FROM musteri 
ORDER BY id asc

SELECT * FROM sanatci
ORDER BY id asc

SELECT * FROM urun
ORDER BY id asc

SELECT * FROM urun
ORDER BY urun_fiyatı asc

SELECT * FROM urun
ORDER BY urun_turu asc

SELECT * FROM sanatci
ORDER BY muzisyen asc

SELECT * FROM sanatci
ORDER BY muzik_turu asc

SELECT * FROM musteri,urun WHERE musteri.id = urun.id
order by urun_fiyatı
