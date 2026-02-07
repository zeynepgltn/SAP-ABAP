*&---------------------------------------------------------------------*
*& Report Z_EVENT
*&---------------------------------------------------------------------*
REPORT z_event.

INCLUDE z_event_top.

PARAMETERS: p_num TYPE int4.

INITIALIZATION.
  p_num = 12.

AT SELECTION-SCREEN.
  p_num += 1.

START-OF-SELECTION.
  WRITE: 'START'.
  PERFORM Toplama USING 5
                        10.

END-OF-SELECTION.
  WRITE: / 'FINISH'.

FORM Toplama USING p_num1
                   p_num2.
  DATA: lv_sonuc TYPE int4.
  lv_sonuc = p_num1 + p_num2.
  WRITE lv_sonuc.
ENDFORM.

*g global,l localSE38
