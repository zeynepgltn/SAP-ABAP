*&---------------------------------------------------------------------*
*& Report ZBK_VERI_GIRIS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbk_veri_giris.

TABLES: zbk_pers_t.
DATA: gv_psrsoyad TYPE zbk_persoyad_de.

PARAMETERS: p_id    TYPE zbk_persid_de,
            p_ad    TYPE zbk_persad_de,
            p_soyad TYPE zbk_persoyad_de,
            p_cinsi TYPE zbk_percins_de.

SELECT-OPTIONS: s_perssd FOR gv_psrsoyad,
                s_perscn FOR zbk_pers_t-pers_cins.
                
PARAMETERS: p_cbox1 AS CHECKBOX.



SELECTION-SCREEN BEGIN OF BLOCK b11 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_erkek RADIOBUTTON GROUP grp1,
              p_kadin RADIOBUTTON GROUP grp1.
SELECTION-SCREEN END OF BLOCK b11.

PARAMETERS: p_genc  RADIOBUTTON GROUP grp2,
            p_yasli RADIOBUTTON GROUP grp2.