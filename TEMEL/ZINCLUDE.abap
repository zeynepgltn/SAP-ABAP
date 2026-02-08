*&---------------------------------------------------------------------*
*& Include Z_EVENT_TOP
*&---------------------------------------------------------------------*

DATA: gV_num1 TYPE int4.

FORM sayiya_bi_ekle.
  gv_num1 = gv_num1 + 1.
ENDFORM.

FORM iki_sayinin_carpimi USING p_num1
                               p_num2.
  DATA: lv_sonuc TYPE i.
  lv_sonuc = p_num1*p_num2. 
  gv_num1 = gv_num1 + 1.
  WRITE lv_sonuc.
ENDFORM.
