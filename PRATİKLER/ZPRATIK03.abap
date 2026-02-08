REPORT z_pratik03.

***************************************************
PARAMETERS: p_num1 TYPE i,
            p_num2 TYPE i.

DATA: gv_result TYPE p DECIMALS 2.

START-OF-SELECTION.
  PERFORM iki_sayinin_orani USING p_num1 p_num2.


FORM iki_sayinin_orani USING pv_num1 TYPE i
                             pv_num2 TYPE i.

  IF pv_num1 < pv_num2.
    IF pv_num2 = 0.
      WRITE: 'Sıfıra bölme hatası.'.
      RETURN.
    ELSE.
      gv_result = pv_num1 / pv_num2.
    ENDIF.

  ELSEIF pv_num2 < pv_num1.
    IF pv_num1 = 0.
      WRITE: 'Sıfıra bölme hatası.'.
      RETURN.
    ELSE.
      gv_result = pv_num2 / pv_num1.
    ENDIF.
  ELSE.
    WRITE: 'Sayılar eşit, oran 1.'.
    RETURN.
  ENDIF.

  WRITE: gv_result.

ENDFORM.


************************************************

DATA: gv_result TYPE i VALUE 10.

START-OF-SELECTION.

  PERFORM add_7.
  PERFORM add_7.
  PERFORM add_7.
  PERFORM mul_3.
  PERFORM add_7.
  PERFORM sub_4.
  PERFORM sub_4.
  PERFORM sub_4.
  PERFORM sub_4.
  PERFORM div_2.

  WRITE: gv_result.

FORM add_7.
  gv_result = gv_result + 7.
ENDFORM.

FORM sub_4.
  gv_result = gv_result - 4.
ENDFORM.

FORM div_2.
  gv_result = gv_result / 2.
ENDFORM.

FORM mul_3.
  gv_result = gv_result * 3.
ENDFORM.
