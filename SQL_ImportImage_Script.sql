--DECLARE @Daire_Resim image 
--DECLARE CRS_Resim  cursor for
--Select Daire_Plan From TBL_FIYAT_LISTE
--OPEN CRS_Resim

--fetch next from CRS_Resim into @Daire_Plan
--WHILE @@FETCH_STATUS = 0
--	BEGIN
select * from TBL_FIYAT_LISTE order by fNO
	Update TBL_FIYAT_LISTE set Daire_Plan = (SELECT  BulkColumn FROM OPENROWSET(BULK  N'F:\Yeni klasör\wetransfer-2fa5e0\A1a.jpg', SINGLE_BLOB) AS x) 
	where TBL_FIYAT_LISTE.fKOD like '%A1a%' AND TBL_FIYAT_LISTE.fBRUTALAN = '75.36'
	
