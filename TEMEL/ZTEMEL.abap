REPORT ZTEMEL.

*Değişken türleri
DATA gv_deg TYPE p DECIMALS 2.
DATA gv_deg1 TYPE int4.
DATA gv_deg2 TYPE c.
DATA gv_deg3 TYPE n LENGTH 3.
*numeric ifadelerde belirlenen karaktere kadar dolu olmayan kısımlar sıfırla tamamlanır 
*int da direkt boşluk olur
DATA gv_deg4 TYPE string.

gv_deg = '12.45'.
gv_deg1 = 1234.
gv_deg2 = 'A'.
gv_deg3 = 456.
gv_deg4 = "Merhaba".


" : kullanımı
DATA: gv_deg5  TYPE i,
      gv_sonuc TYPE i,
      gv_metin TYPE string.

gv_sonuc = gv_deg1 / gv_deg.
gv_metin = 'Toplamı = '.

*Ekrana yazdırma
WRITE gv_sonuc.
WRITE: / 'Toplamı=' , gv_sonuc.
WRITE: gv_metin , gv_sonuc.



"Koşul yapıları-if
"Ayrı ayrı ifler de yapılabilir
IF gv_deg1 > gv_deg.
  WRITE: 'Birinci sayı büyük'.

ELSEIF gv_deg1 < gv_deg.
  WRITE: 'İkinci sayı  küçük'.

ELSE.
  WRITE: 'İki sayı eşit'.
ENDIF.

"Case
CASE gv_deg.
  WHEN 1.
    WRITE: '1'.

  WHEN  2.
    WRITE: '2'.

  WHEN OTHERS.
    WRITE: 'Bilinmiyor.'
ENDCASE.



*Döngüler do
DO 10 TIMES.

ENDDO.

*While
DATA gv_degis1 TYPE i.
gv_degis1 = 1.

WHILE gv_degis1 LT 10.
  gv_degis1 = gv_degis1 + 1.
  WRITE: / gv_degis1, ' WHILE dongusunu ogreniyoruz!'.
ENDWHILE.

" <   LT   (Less Than)        
" >   GT   (Greater Than)     
" <=  LE   (Less or Equal)    
" >=  GE   (Greater or Equal) 
" =   EQ   (Equal)            

