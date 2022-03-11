--1.Kocaeli üniversitesi bölümlerini listeleyiniz.
USE Grup_Hosgoru_OBS
SELECT bolum_id,bolum_adi FROM tbl_bolum

--2.Bölümleri ve bölüm baþkanlarýnýn adýný soyadýný unvanlarýný listeleyiniz.
SELECT bolum_id, bolum_adi,ogr_gor_ad,ogr_gor_soyad,unvan_adi FROM tbl_bolum JOIN tbl_bolum_baskani
ON tbl_bolum.bolumbaskani_id=tbl_bolum_baskani.bolumbaskani_id JOIN tbl_ogretim_gorevlisi 
ON tbl_bolum_baskani.ogretim_gorevlisi_id=tbl_ogretim_gorevlisi.ogretim_gorevlisi_id JOIN tbl_unvanlar ON
tbl_unvanlar.unvan_id=tbl_ogretim_gorevlisi.unvan_id


--3.Öðretim görevlilerinden unvaný doç.dr olanlarýn adýný soyadýný unvanlarýný ve bölümlerini listeleyiniz.
SELECT  bolum_adi,ogr_gor_ad,ogr_gor_soyad,unvan_adi FROM tbl_bolum JOIN tbl_ogretim_gorevlisi
ON tbl_bolum.bolum_id=tbl_ogretim_gorevlisi.program_id JOIN tbl_program ON tbl_program.program_id=tbl_bolum.bolum_id
JOIN tbl_unvanlar ON tbl_unvanlar.unvan_id=tbl_ogretim_gorevlisi.unvan_id WHERE  tbl_unvanlar.unvan_id=1

--4.150915002 nolu öðrencinin adý soyadý ve seçtiði dersleri ve dersi veren öðretim görevlisinin adýný soyadýný listeleyiniz.
SELECT  donem_yil,donem_adi,ogr_ad,ogr_soyad,bolum_adi,ders_adi,ogr_gor_ad,ogr_gor_soyad FROM tbl_ogrenci JOIN tbl_program_bolum
ON tbl_ogrenci.program_id=tbl_program_bolum.bolum_id JOIN tbl_bolum ON tbl_bolum.bolum_id=tbl_program_bolum.bolum_id
JOIN tbl_dersler ON tbl_dersler.bolum_id=tbl_program_bolum.bolum_id JOIN tbl_acilan_dersler 
ON tbl_dersler.ders_id=tbl_acilan_dersler.ders_id JOIN tbl_ogretim_gorevlisi
ON tbl_acilan_dersler.ogretim_gorevlisi_id=tbl_ogretim_gorevlisi.ogretim_gorevlisi_id JOIN tbl_donem ON tbl_acilan_dersler.donem_id=tbl_donem.donem_id
 WHERE tbl_ogrenci.ogrenci_no=150915002

--5.Kocaeli üniversitesindeki bölümlerin programlarýný ve ve öðretim görevlilerini listeleyiniz.
Select bolum_adi,program_adi,ogr_gor_ad,ogr_gor_soyad FROM tbl_bolum JOIN tbl_program_bolum ON tbl_bolum.bolum_id=tbl_program_bolum.bolum_id
JOIN tbl_program ON tbl_program.program_id=tbl_program_bolum.program_id JOIN tbl_ogretim_gorevlisi 
ON tbl_ogretim_gorevlisi.program_id=tbl_program.program_id 

--6.BÖTE bölümü öðrencilerini listeleyiniz.
Select bolum_adi,ogr_ad,ogr_soyad FROM tbl_bolum JOIN tbl_program_bolum ON tbl_bolum.bolum_id=tbl_program_bolum.bolum_id
JOIN tbl_program ON tbl_program.program_id=tbl_program_bolum.program_id JOIN tbl_ogrenci
ON tbl_ogrenci.program_id=tbl_program.program_id WHERE tbl_bolum.bolum_id=1

--7.Böte bölümünde 2015-2016 1.yarýyýl güz döneminde açýlan dersleri listeleyiniz.
Select bolum_adi,ders_adi,donem_yil,ogretim_yili,donem_adi FROM tbl_bolum JOIN tbl_program_bolum ON tbl_bolum.bolum_id=tbl_program_bolum.bolum_id
JOIN tbl_dersler ON tbl_dersler.bolum_id=tbl_bolum.bolum_id JOIN tbl_acilan_dersler ON tbl_acilan_dersler.ders_id=tbl_dersler.ders_id
JOIN tbl_donem ON tbl_acilan_dersler.donem_id=tbl_donem.donem_id 
WHERE  tbl_acilan_dersler.donem_id=9 AND tbl_donem.donem_yil='2015-2016'

--8.Umut yengi adýnda 2013 giriþli bölümü böte olan bir öðrenci ekleyiniz.
INSERT INTO tbl_ogrenci(ogrenci_no,tc_no,ogr_ad,ogr_soyad,cinsiyet_id,e_posta,kayit_tarihi,mezun_tarihi,
dogum_tarihi,mezun_lise,ceptel_no,evtel_no,dogum_yeri_id,ogr_adres_id,ogretim_turu_id,punaturu_id,
sinavpuani,program_id,danisman_id,ogrenim_durum_id,kayit_turu_id) VALUES(150915025,78598695841,'Umut','Yengi',1,'umut_yengi@gmail.com',
'2013-08-21','2017-06-21','1994-02-01','Umuttepe lisesi','05395695589','02622596895',1,2,1,1,'300',1,1,1,1)

--9.Temel reis adýnda 2015 giriþli bölümü türkçe olan bir öðrenci ekleyiniz.
INSERT INTO tbl_ogrenci(ogrenci_no,tc_no,ogr_ad,ogr_soyad,cinsiyet_id,e_posta,kayit_tarihi,mezun_tarihi,
dogum_tarihi,mezun_lise,ceptel_no,evtel_no,dogum_yeri_id,ogr_adres_id,ogretim_turu_id,punaturu_id,
sinavpuani,program_id,danisman_id,ogrenim_durum_id,kayit_turu_id) VALUES(150916025,78598695841,'Temel','Reis',1,'umut_yengi@gmail.com',
'2013-08-21','2017-06-21','1994-02-01','Umuttepe lisesi','05395695589','02622596895',1,2,1,1,'300',6,1,1,1)

--10.Hiç Temel REÝS adýnda öðrenci olur mu? Temel REÝS isimli öðrenciyi siliniz
DELETE FROM tbl_ogrenci
WHERE ogr_ad='Temel' AND ogr_soyad='REÝS'

/*11.Hiç 2013 giriþli öðrencinin numarasý 1500 ile baþlar mý? Umut yengi isimli öðrencinin öðrenci numarasýný 
130916025 olarak güncelleyiniz. */
UPDATE tbl_ogrenci SET tc_no = 78598695841
WHERE ogrenci_no = 130915025


--12.Her bir bölümde kaç öðrenci var?
SELECT bolum_id, COUNT (ogrenci_no) as ogr_sayi  FROM tbl_ogrenci JOIN tbl_program_bolum ON tbl_ogrenci.program_id=tbl_program_bolum.program_id
JOIN tbl_program ON tbl_program.program_id=tbl_program_bolum.bolum_id
GROUP BY bolum_id

--13. Bir dönemde açýlan dersleri donemi ders kodu ders adý ve öðretim görevlisi olarak listeleyen
-- Bir dönemde açýlan dersleri donemi ders kodu ders adý ve öðretim görevlisi olarak listeleyen
USE Grup_Hosgoru_OBS
GO
SELECT tbl_donem.donem_yil, tbl_donem.donem_adi, tbl_dersler.ders_kodu, tbl_dersler.ders_adi, tbl_ogretim_gorevlisi.ogr_gor_ad,tbl_ogretim_gorevlisi.ogr_gor_soyad
FROM tbl_acilan_dersler JOIN tbl_ogretim_gorevlisi
ON tbl_acilan_dersler.ogretim_gorevlisi_id=tbl_ogretim_gorevlisi.ogretim_gorevlisi_id join
tbl_dersler on tbl_dersler.ders_id=tbl_acilan_dersler.ders_id join
tbl_donem on tbl_donem.donem_id=tbl_acilan_dersler.donem_id where tbl_acilan_dersler.donem_id=9 

--14.Bir öðrencinin seçtiði bütün dersler
USE Grup_Hosgoru_OBS
GO
SELECT tbl_ogrenci.ogrenci_no, tbl_ogrenci.ogr_ad, tbl_ogrenci.ogr_soyad,tbl_donem.donem_yil,
 tbl_donem.donem_adi, tbl_dersler.ders_kodu, tbl_dersler.ders_adi,tbl_unvanlar.unvan_adi,tbl_ogretim_gorevlisi.ogr_gor_ad,tbl_ogretim_gorevlisi.ogr_gor_soyad
FROM tbl_secilen_dersler join tbl_acilan_dersler
 ON tbl_secilen_dersler.acilan_ders_id=tbl_acilan_dersler.acilan_ders_id join
tbl_dersler on tbl_dersler.ders_id=tbl_acilan_dersler.ders_id join
tbl_donem on tbl_donem.donem_id=tbl_acilan_dersler.donem_id join
tbl_ogretim_gorevlisi on tbl_ogretim_gorevlisi.ogretim_gorevlisi_id=tbl_acilan_dersler.ogretim_gorevlisi_id join
tbl_unvanlar on tbl_unvanlar.unvan_id=tbl_ogretim_gorevlisi.unvan_id join
tbl_ogrenci on tbl_ogrenci.ogrenci_no=tbl_secilen_dersler.ogr_no where tbl_ogrenci.ogrenci_no='150915001'
--15.böte hocalarýný listeleme
select tbl_unvanlar.unvan_adi, tbl_ogretim_gorevlisi.ogr_gor_ad, tbl_ogretim_gorevlisi.ogr_gor_soyad,tbl_program.program_adi
from tbl_ogretim_gorevlisi join tbl_unvanlar 
on tbl_ogretim_gorevlisi.unvan_id=tbl_unvanlar.unvan_id join
tbl_program on tbl_program.program_id= tbl_ogretim_gorevlisi.program_id where tbl_program.program_adi='BÖTE Bölümü'


--16.bir öðrencinin bir döneme ait derslerini listeleme
USE Grup_Hosgoru_OBS
GO
SELECT tbl_ogrenci.ogrenci_no, tbl_ogrenci.ogr_ad, tbl_ogrenci.ogr_soyad,tbl_donem.donem_yil,
 tbl_donem.donem_adi, tbl_dersler.ders_kodu, tbl_dersler.ders_adi,tbl_ders_turu.ders_tur_adi, tbl_unvanlar.unvan_adi,tbl_ogretim_gorevlisi.ogr_gor_ad,tbl_ogretim_gorevlisi.ogr_gor_soyad
FROM tbl_secilen_dersler join tbl_acilan_dersler
 ON tbl_secilen_dersler.acilan_ders_id=tbl_acilan_dersler.acilan_ders_id join
tbl_dersler on tbl_dersler.ders_id=tbl_acilan_dersler.ders_id join
tbl_donem on tbl_donem.donem_id=tbl_acilan_dersler.donem_id join
tbl_ogretim_gorevlisi on tbl_ogretim_gorevlisi.ogretim_gorevlisi_id=tbl_acilan_dersler.ogretim_gorevlisi_id join
tbl_unvanlar on tbl_unvanlar.unvan_id=tbl_ogretim_gorevlisi.unvan_id join
tbl_ogrenci on tbl_ogrenci.ogrenci_no=tbl_secilen_dersler.ogr_no join
tbl_ders_turu on tbl_ders_turu.ders_tur_id=tbl_dersler.derstur_id where tbl_ogrenci.ogrenci_no='150915001' and tbl_donem.donem_id=9

--17.Her bir unvandan kaç personel var?
SELECT tbl_unvanlar.unvan_adi, COUNT (tbl_ogretim_gorevlisi.unvan_id) as ogr_gor_sayi FROM tbl_ogretim_gorevlisi
JOIN tbl_unvanlar ON tbl_ogretim_gorevlisi.unvan_id=tbl_unvanlar.unvan_id
GROUP BY tbl_unvanlar.unvan_adi

--18.Her bir bölümde kaç öðrenci var?
SELECT bolum_adi, COUNT (tbl_ogrenci.ogrenci_no) as ogrenci_sayi FROM tbl_ogrenci
JOIN tbl_program ON tbl_ogrenci.program_id=tbl_program.program_id JOIN tbl_program_bolum ON tbl_program_bolum.bolum_id=tbl_program.program_id
JOIN tbl_bolum ON tbl_bolum.bolum_id=tbl_program_bolum.bolum_id
GROUP BY bolum_adi


--19. --Eðitim fakültesindeki türkçe dersi veren bölümlerin listelenmesi
SELECT DISTINCT bolum_adi,ders_adi,akts,ders_tur_adi FROM tbl_bolum JOIN tbl_program_bolum ON tbl_program_bolum.bolum_id=tbl_bolum.bolum_id
JOIN tbl_dersler ON tbl_dersler.bolum_id=tbl_bolum.bolum_id JOIN tbl_ders_turu ON tbl_dersler.derstur_id=tbl_ders_turu.ders_tur_id 
WHERE ders_kodu='EGT165'

--20.--Bir dönemde her bölümden kaç ders alýndýðýný listeleyiniz
USE Grup_Hosgoru_OBS
Select COUNT (tbl_secilen_dersler.secilen_ders_id) as ders_sayi FROM tbl_bolum JOIN tbl_program_bolum ON tbl_bolum.bolum_id=tbl_program_bolum.bolum_id
JOIN tbl_dersler ON tbl_dersler.bolum_id=tbl_bolum.bolum_id JOIN tbl_acilan_dersler ON tbl_acilan_dersler.ders_id=tbl_dersler.ders_id
JOIN tbl_donem ON tbl_acilan_dersler.donem_id=tbl_donem.donem_id JOIN tbl_secilen_dersler ON tbl_secilen_dersler.acilan_ders_id=tbl_acilan_dersler.acilan_ders_id
WHERE tbl_acilan_dersler.donem_id=9 AND tbl_donem.donem_yil='2015-2016'
GROUP BY tbl_secilen_dersler.acilan_ders_id

--21.Böte bölümü öðretim görevlilerini listeleme
select tbl_unvanlar.unvan_adi, tbl_ogretim_gorevlisi.ogr_gor_ad, tbl_ogretim_gorevlisi.ogr_gor_soyad,tbl_bolum.bolum_adi
from tbl_ogretim_gorevlisi join tbl_unvanlar 
on tbl_ogretim_gorevlisi.unvan_id=tbl_unvanlar.unvan_id join
tbl_program on tbl_program.program_id= tbl_ogretim_gorevlisi.program_id join
tbl_program_bolum on tbl_program_bolum.bolum_id=tbl_program.program_id join
tbl_bolum on tbl_bolum.bolum_id=tbl_program_bolum.bolum_id where tbl_bolum.bolum_adi='BÖTE'

--22. Bir bölüme ait ders listesi
select tbl_bolum.bolum_adi, tbl_dersler.ders_kodu, tbl_dersler.ders_adi, tbl_ders_turu.ders_tur_adi, tbl_dersler.ogretim_yili
from tbl_bolum join tbl_dersler
on tbl_bolum.bolum_id=tbl_dersler.bolum_id join
tbl_ders_turu on tbl_ders_turu.ders_tur_id=tbl_dersler.derstur_id where tbl_bolum.bolum_adi='BÖTE'

--23.Bir öðrenciye ait bir dönemde aldýðý notu girilmiþ dersleri listeleme
USE Grup_Hosgoru_OBS
GO
SELECT tbl_ogrenci.ogrenci_no, tbl_ogrenci.ogr_ad, tbl_ogrenci.ogr_soyad,tbl_donem.donem_yil,
 tbl_donem.donem_adi, tbl_dersler.ders_kodu, tbl_dersler.ders_adi, tbl_not_cesitleri.cesit_adi ,tbl_ogrenciders_notu.puan
FROM tbl_secilen_dersler join tbl_acilan_dersler
 ON tbl_secilen_dersler.acilan_ders_id=tbl_acilan_dersler.acilan_ders_id join
tbl_dersler on tbl_dersler.ders_id=tbl_acilan_dersler.ders_id join
tbl_donem on tbl_donem.donem_id=tbl_acilan_dersler.donem_id join
tbl_ogrenci on tbl_ogrenci.ogrenci_no=tbl_secilen_dersler.ogr_no join
tbl_ogrenciders_notu on tbl_ogrenciders_notu.ogr_no=tbl_ogrenci.ogrenci_no join
tbl_ders_degerlendirme_olcut on tbl_ders_degerlendirme_olcut.ders_not_id=tbl_ogrenciders_notu.ders_not_id join
tbl_not_cesitleri on tbl_not_cesitleri.not_cesit_id=tbl_ders_degerlendirme_olcut.not_cesit_id
where (tbl_ogrenci.ogrenci_no='150915001' and tbl_donem.donem_id=9 )

--24.FAKÜLTEDE BULUNAN BÖLÜM BAÞKANLARINI LÝSTELEME
select tbl_fakulte.fakulte_adi, tbl_unvanlar.unvan_adi, tbl_ogretim_gorevlisi.ogr_gor_ad, 
tbl_ogretim_gorevlisi.ogr_gor_soyad,tbl_bolum.bolum_adi
from tbl_ogretim_gorevlisi join tbl_unvanlar 
on tbl_ogretim_gorevlisi.unvan_id=tbl_unvanlar.unvan_id join
tbl_program on tbl_program.program_id= tbl_ogretim_gorevlisi.program_id join
tbl_program_bolum on tbl_program_bolum.bolum_id=tbl_program.program_id join
tbl_bolum on tbl_bolum.bolum_id=tbl_program_bolum.bolum_id join
tbl_fakulte on tbl_fakulte.fakulte_id=tbl_bolum.fakulte_id join
tbl_bolum_baskani on tbl_bolum_baskani.ogretim_gorevlisi_id=tbl_ogretim_gorevlisi.ogretim_gorevlisi_id 
where tbl_fakulte.fakulte_adi='Eðitim Fakültesi'
