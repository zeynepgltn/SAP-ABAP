REPORT z_function.

DATA: gv_num1  TYPE int4,
      gv_num2  TYPE int4,
      gv_sonuc TYPE int4,
      gv_mes   TYPE char20.

START-OF-SELECTION.

  gv_num1 = 20.
  gv_num2 = 5.
  gv_mes = 'Mesaj'.

  CALL FUNCTION 'ZBK_FONKSIYONLAR'
    EXPORTING
      iv_num1         = gv_num1
      iv_num2         = gv_num2
    IMPORTING
      ev_sonuc        = gv_sonuc
    CHANGING
      cv_mes          = gv_mes
    EXCEPTIONS
      divided_by_zero = 1
      OTHERS          = 2.

  IF sy-subrc EQ 0.
    WRITE: / 'Sonuc:', gv_sonuc.
    WRITE: / 'Mesaj:', gv_mes.
  ELSEIF sy-subrc EQ 1.
    WRITE: / 'Hata: Sıfıra bölme hatası!'.
  ELSEIF sy-subrc EQ 2.
    WRITE: / 'Hata: Diğer bir hata oluştu!'.
  ENDIF.
