REPORT z_login.

"-------------------------------
" Parametreler (Login Ekranı)
"-------------------------------
PARAMETERS: p_user   TYPE char10,
            p_passwd TYPE char10.

"-------------------------------------------------
" Şifre alanını gizlemek için ekran event'i
"-------------------------------------------------
AT SELECTION-SCREEN OUTPUT.

  LOOP AT SCREEN.
    IF screen-name = 'P_PASSWD'.
      screen-invisible = 1.   " **** şeklinde göster
      MODIFY SCREEN.
    ENDIF.
  ENDLOOP.

"---------------------------------
" Kullanıcı Enter'a bastığında
"---------------------------------
START-OF-SELECTION.

  IF p_user = 'SAPUSER' AND p_passwd = '12345678'.
    WRITE: 'Başarılı bir şekilde sisteme bağlandınız.'.
  ELSE.
    WRITE: 'Kullanıcı adı ya da şifre hatalı!'.
  ENDIF.
