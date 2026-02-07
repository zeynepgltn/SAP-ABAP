REPORT z.

*1
PARAMETERS: p_sayi TYPE i.

START-OF-SELECTION.

IF p_sayi GE 0 AND p_sayi LE 25.
  WRITE: 'Sayı 0 ve 25 arasında'.
ELSEIF p_sayi GT 25 AND p_sayi LE 50.
  WRITE: 'Sayı 25 ve 50 arasında'.
ELSEIF p_sayi GT 50 AND p_sayi LE 75.
  WRITE: 'Sayı 50 ve 75 arasında'.
ELSEIF p_sayi GT 75 AND p_sayi LE 100.
  WRITE: 'Sayı 75 ve 100 arasında'.
ELSEIF p_sayi GT 100.
  WRITE: 'Sayı 100 den büyük'.
ELSE.
  WRITE: 'Geçersiz değer'.
ENDIF.


*2
PARAMETERS: p_num TYPE i.

START-OF-SELECTION.

CASE p_num.
  WHEN 0  TO 20.
    WRITE 'FF'.
  WHEN 21 TO 40.
    WRITE 'DD'.
  WHEN 41 TO 60.
    WRITE 'CC'.
  WHEN 61 TO 80.
    WRITE 'BB'.
  WHEN 81 TO 100.
    WRITE 'AA'.
  WHEN OTHERS.
    WRITE 'Yanlış not girdiniz!'.
ENDCASE.


*3
PARAMETERS:
  p_num1 TYPE i,
  p_num2 TYPE i,
  p_num3 TYPE i.

START-OF-SELECTION.

IF ( p_num1 LT p_num2 AND p_num1 GT p_num3 )
 OR ( p_num1 GT p_num2 AND p_num1 LT p_num3 ).

  WRITE: / 'Birinci sayı diğer iki sayının ortasındadır!'.

ELSEIF ( p_num2 LT p_num1 AND p_num2 GT p_num3 )
   OR  ( p_num2 GT p_num1 AND p_num2 LT p_num3 ).

  WRITE: / 'İkinci sayı diğer iki sayının ortasındadır!'.

ELSEIF ( p_num3 LT p_num1 AND p_num3 GT p_num2 )
   OR  ( p_num3 GT p_num1 AND p_num3 LT p_num2 ).

  WRITE: / 'Üçüncü sayı diğer iki sayının ortasındadır!'.

ELSE.
  WRITE: / 'Ortanca sayı belirlenemedi (eşit sayılar olabilir)'.

ENDIF.


*4
PARAMETERS:
  p_num1 TYPE i,
  p_num2 TYPE i,
  p_pros TYPE c LENGTH 1.   " + - * /

DATA:
  gv_result TYPE i.

START-OF-SELECTION.

CASE p_pros.
  WHEN '+'.
    gv_result = p_num1 + p_num2.

  WHEN '-'.
    gv_result = p_num1 - p_num2.

  WHEN '*'.
    gv_result = p_num1 * p_num2.

  WHEN '/'.
    IF p_num2 = 0.
      WRITE: / 'Hata: Sıfıra bölme yapılamaz!'.
      RETURN.
    ELSE.
      gv_result = p_num1 / p_num2.
    ENDIF.

  WHEN OTHERS.
    WRITE: / 'Geçersiz işlem! (+ - * / kullanın)'.
    RETURN.
ENDCASE.

WRITE: / 'Sonuç:', gv_result.


*5
PARAMETERS:
  p_2 AS CHECKBOX,
  p_3 AS CHECKBOX,
  p_5 AS CHECKBOX.

DATA:
  gv_result TYPE i VALUE 10.

START-OF-SELECTION.

IF p_2 = abap_true.
  gv_result = gv_result + 2.
ENDIF.

IF p_3 = abap_true.
  gv_result = gv_result + 3.
ENDIF.

IF p_5 = abap_true.
  gv_result = gv_result + 5.
ENDIF.

WRITE: / 'Sonuç:', gv_result.


*6
PARAMETERS:
  p_num1 TYPE i,
  p_num2 TYPE i.

PARAMETERS:
  p_sum RADIOBUTTON GROUP gr1 DEFAULT 'X',
  p_sub RADIOBUTTON GROUP gr1,
  p_mul RADIOBUTTON GROUP gr1,
  p_div RADIOBUTTON GROUP gr1.

DATA: gv_result TYPE i.

START-OF-SELECTION.

  CASE abap_true.
    WHEN p_sum.
      gv_result = p_num1 + p_num2.

    WHEN p_sub.
      gv_result = p_num1 - p_num2.

    WHEN p_mul.
      gv_result = p_num1 * p_num2.

    WHEN p_div.
      IF p_num2 = 0.
        WRITE: 'Hata: Sıfıra bölme yapılamaz'.
        RETURN.
      ENDIF.
      gv_result = p_num1 / p_num2.
  ENDCASE.

  WRITE: 'Sonuç:', gv_result.

"7
PARAMETERS:
  p_num1 TYPE i,
  p_num2 TYPE i.

PARAMETERS:
  p_sum RADIOBUTTON GROUP gr1 DEFAULT 'X',
  p_sub RADIOBUTTON GROUP gr1,
  p_mul RADIOBUTTON GROUP gr1,
  p_div RADIOBUTTON GROUP gr1.

PARAMETERS:
  p_m10 AS CHECKBOX,
  p_d2  AS CHECKBOX.

DATA: gv_result TYPE i.

START-OF-SELECTION.

  CASE abap_true.
    WHEN p_sum.
      PERFORM sum_numbers.

    WHEN p_sub.
      PERFORM sub_numbers.

    WHEN p_mul.
      PERFORM mul_numbers.

    WHEN p_div.
      IF p_num2 = 0.
        WRITE: 'Hata: Sıfıra bölme yapılamaz'.
        RETURN.
      ENDIF.
      PERFORM div_numbers.
  ENDCASE.

  IF p_m10 EQ abap_true.
    gv_result = gv_result * 10.
  ENDIF.

  IF p_d2 EQ abap_true.
    gv_result = gv_result / 2.
  ENDIF.

  WRITE: 'Sonuç:', gv_result.

  FORM sum_numbers.
    gv_result = p_num1 + p_num2.
  ENDFORM.

  FORM sub_numbers.
    gv_result = p_num1 - p_num2.
  ENDFORM.

  FORM mul_numbers.
    gv_result = p_num1 * p_num2.
  ENDFORM.

  FORM div_numbers.
    gv_result = p_num1 / p_num2.
  ENDFORM.
