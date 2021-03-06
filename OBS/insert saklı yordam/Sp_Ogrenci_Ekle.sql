USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Ogrenci_Ekle]    Script Date: 13.5.2018 01:32:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_Ogrenci_Ekle]
(
	@ogrenci_no varchar(9),
	@tc_no varchar(11),
	@ogr_ad varchar(50),
	@ogr_soyad varchar(70),
	@cinsiyet_id int,
	@e_posta varchar(100),
	@kayit_tarihi  date ,
	@mezun_tarihi date ,
	@dogum_tarihi date,
	@mezun_lise varchar(200),
	@ceptel_no VARCHAR(11),
	@evtel_no VARCHAR(11),
	@dogum_yeri_id int,
	@ogr_adres_id int,
	@ogretim_turu_id int,
	@puanturu_id int,
	@sinavpuani VARCHAR(10),
	@program_id int,
	@danisman_id int,
	@ogrenim_durum_id int,
	@kayit_turu_id int
)
AS
BEGIN
SET NOCOUNT ON;
			INSERT INTO tbl_ogrenci(ogrenci_no,tc_no,ogr_ad,ogr_soyad,cinsiyet_id,e_posta,kayit_tarihi,
			mezun_tarihi,dogum_tarihi,mezun_lise,ceptel_no,evtel_no,dogum_yeri_id,ogr_adres_id,ogretim_turu_id,
			puanturu_id,sinavpuani,program_id,danisman_id,ogrenim_durum_id,kayit_turu_id) 
			values(@ogrenci_no,@tc_no,@ogr_ad,@ogr_soyad,@cinsiyet_id,@e_posta,@kayit_tarihi,
			@mezun_tarihi,@dogum_tarihi,@mezun_lise,@ceptel_no,@evtel_no,@dogum_yeri_id,@ogr_adres_id,@ogretim_turu_id,
			@puanturu_id,@sinavpuani,@program_id,@danisman_id,@ogrenim_durum_id,@kayit_turu_id)
		
		SELECT ogrenci_no,tbl_ogrenci.tc_no,ogr_ad,ogr_soyad,tbl_cinsiyet.cinsiyet,tbl_ogrenci.e_posta,kayit_tarihi,
			mezun_tarihi,dogum_tarihi,mezun_lise,ceptel_no,tbl_ogrenci.evtel_no,il_adi,ilce_adi,cadde,mahalle,sokak,numara,daire,
			tbl_ogretim_turu.ogretim_tur_adi,tbl_puan_turu.puantur_adi,sinavpuani,tbl_ogrenci.program_id,tbl_bolum.bolum_adi,
			tbl_ogretim_gorevlisi.ogr_gor_ad,tbl_ogretim_gorevlisi.ogr_gor_soyad,tbl_ogrenim_durum.durum_adi,tbl_kayit_turu.kayittur_adi 
			FROM tbl_ogrenci JOIN tbl_cinsiyet ON tbl_ogrenci.cinsiyet_id=tbl_cinsiyet.cinsiyet_id JOIN tbl_ilceler               
			ON tbl_ogrenci.dogum_yeri_id=tbl_ilceler.ilce_id JOIN tbl_iller ON tbl_iller.il_id=tbl_ilceler.il_id JOIN tbl_adres 
			ON tbl_adres.ilce_id=tbl_ilceler.ilce_id JOIN tbl_ogretim_turu ON tbl_ogretim_turu.ogretim_tur_id =tbl_ogrenci.ogretim_turu_id
			JOIN tbl_puan_turu ON tbl_ogrenci.puanturu_id=tbl_puan_turu.puan_turu_id JOIN tbl_program ON tbl_ogrenci.program_id=tbl_program.program_id
			JOIN tbl_program_bolum ON tbl_program_bolum.program_id=tbl_program.program_id 
			JOIN  tbl_bolum ON tbl_bolum.bolum_id=tbl_program_bolum.
			bolum_id JOIN tbl_ogretim_gorevlisi ON tbl_ogrenci.danisman_id=tbl_ogretim_gorevlisi.ogretim_gorevlisi_id
			JOIN tbl_ogrenim_durum ON tbl_ogrenim_durum.durum_id=tbl_ogrenci.ogrenim_durum_id JOIN tbl_kayit_turu
			ON tbl_ogrenci.kayit_turu_id=tbl_kayit_turu.kayit_turu_id

		END
	