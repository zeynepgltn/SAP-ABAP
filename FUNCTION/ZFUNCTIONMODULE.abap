FUNCTION ZBK_FONKSIYONLAR.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IV_NUM1) TYPE  INT4 DEFAULT 10
*"     REFERENCE(IV_NUM2) TYPE  INT4 DEFAULT 2
*"  EXPORTING
*"     REFERENCE(EV_SONUC) TYPE  INT4
*"  CHANGING
*"     REFERENCE(CV_MES) TYPE  CHAR20
*"  EXCEPTIONS
*"      DIVIDED_BY_ZERO
*"----------------------------------------------------------------------

*IF iv_num2 EQ 0 denebilir
IF iv_num2 IS INITIAL. "default değerine erişmek
  RAISE DIVIDED_BY_ZERO.
ENDIF.


ev_sonuc = iv_num1 / iv_num2.

cv_mes = 'Değiştirilmiş mesaj.'.

ENDFUNCTION.
