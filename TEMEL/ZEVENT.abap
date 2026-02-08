*&---------------------------------------------------------------------*
*& Report Z_EVENT
*&---------------------------------------------------------------------*
REPORT z_event.

INCLUDE z_event_top.
PARAMETERS: p_num TYPE int4.

"Ekrana girilen inputlardan önce kullanılan alan.
INITIALIZATION.
  p_num = 12.

"Screeen üzerinde kullandığımız parametreleri özelleştirdiğimiz yapı
"Örn her ENTER a bastığında arttır.
AT SELECTION-SCREEN.
  p_num += 1.

"Run ettiğimizde çalışacak yapı,parametre alındıktan sonra kod run olur.
START-OF-SELECTION.
  WRITE: 'START'.
  PERFORM sayiya_bi_ekle.
  PERFORM iki_sayinin_carpimi USING 5
                                    10 .
  "İsme iki tıklayınca perform kendi oluşur.                                  

"En son işlemler. 
END-OF-SELECTION.
  WRITE: / 'FINISH'.
