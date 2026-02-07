REPORT ZOPENSQLSORULARI.


DATA: gv_persid    TYPE zbk_persid_de,
      gv_persad    TYPE zbk_persad_de,
      gv_perssoyad TYPE zbk_persoyad_de,
      gv_perscins  TYPE zbk_percins_de,
      "Değişkenler
      gs_pers_t    TYPE zbk_pers_t,
      "Structure
      gt_pers_t    TYPE TABLE OF zbk_pers_t.
      "Internal Table


*SELECT
SELECT * FROM zbk_pers_t
  INTO TABLE gt_pers_t
  WHERE pers_id EQ 1.

SELECT SINGLE * FROM zbk_pers_t
  INTO gs_pers_t.

SELECT SINGLE pers_id FROM zbk_pers_t
  INTO  gv_persid.


*UPDATE
UPDATE zbk_pers_t SET pers_ad = 'RABIA'
  WHERE pers_id EQ 1.


*INSERT
*Structure doldurma
 gs_pers_t-pers_id = 3.
 gs_pers_t-pers_ad = 'RABIA'.
 gs_pers_t-pers_soyad = 'GULTEN'.
 gs_pers_t-pers_cins = 'K'.

INSERT zbk_pers_t FROM gs_pers_t.


*DELETE
DELETE FROM zbk_pers_t
  WHERE pers_id EQ 4.

 
*MODIFY
*update + insert şeklinde çalışır
*keylere bakarak çalışır, o keyde bir satır varsa update yoksa insert yapar
MODIFY zbk_pers_t FROM gs_pers_t.
