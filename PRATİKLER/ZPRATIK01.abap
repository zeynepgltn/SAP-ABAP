REPORT zpratik01.

DATA gv_deg TYPE i.

gv_deg = 0.

WHILE gv_deg LE 100.

  IF gv_deg MOD 2 = 0.
    WRITE: / 'Çift sayı:', gv_deg.
  ELSE.
    WRITE: / 'Tek sayı:', gv_deg.
  ENDIF.

  gv_deg = gv_deg + 1.

ENDWHILE.

DO 101 TIMES.
  gv_deg = sy-index - 1.

  IF gv_deg MOD 2 = 0.
    WRITE: / 'Çift sayı:', gv_deg.
  ELSE.
    WRITE: / 'Tek sayı:', gv_deg.
  ENDIF.
ENDDO.


