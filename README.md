# Seleksi 1 Asisten LabPro 2018
-----------------------------------
NIM : 13516105

Nama Lengkap : Ricky Kennedy

## Bab 1 - Percabangan
---------------------------------
### Problem 9

Tuan Vin ingin mengetahui suhu udara sekarang. Terdapat termometer pada dinding di dekatnya. Namun terkadang, satuan suhu yang tertulis tidak sesuai dengan yang ingin diketahuinya. Dari 3 jenis suhu R, C dan F, berikut adalah perbandingannya:


C : R : (F-32) = 5 : 4 : 9


Tuan Vin meminta bantuan Anda untuk dapat membaca suhu dengan lebih mudah


**Format Input & Output (input di-*bold*)**
***
Masukan satuan suhu termometer: **C**

Masukan besar suhu: **40**

Masukan satuan yang ingin diketahui: **R**

Besar suhu dalam R: 32
***

-------------------
Algoritma melakukan perhitungan sesuai dengan satuan suhu yang dimasukan

yang kemudian di konversi kesatuan suhu yang diinginkan

-------------------

```
program Problem9;

var
    SS1,SS2 : char; (* satuan suhu termometer*)
    suhu : real;
    result : real;
    valid : boolean;
begin
    valid := True;
    write('Masukan satuan suhu pada termometer: '); readln(SS1);
    write('Masukan besar suhu : '); readln(suhu);
    write('Masukan satuan yang ingin diketahui: '); readln(SS2);
    Case SS1 of
        'C' :
          begin
            if ( SS2 = 'R' ) then
              begin
                result := 4 / 5 * suhu;
              end
            else if ( SS2 = 'F' ) then
              begin
                result := ( 9 / 5 * suhu ) + 32;
              end
            else
              begin
                writeln('Masukan tidak valid'); 
                valid := False;
              end;
          end;
        'R' : 
          begin
            if ( SS2 = 'C' ) then
              begin
                result := 5 / 4 * suhu;
              end
            else if ( SS2 = 'F' ) then
              begin
                result := ( 9 / 4 * suhu ) + 32;
              end
            else
              begin
                writeln('Masukan tidak valid'); 
                valid := False;
              end;
          end;
        'F' :
          begin
            suhu := suhu - 32;
            if ( SS2 = 'C' ) then
              begin
                result := 5 / 9  * suhu;
              end
            else if ( SS2 = 'R' ) then
              begin
                result := 4 / 9 * suhu;
              end
            else
              begin
                writeln('Masukan tidak valid'); 
                valid := False;
              end;
          end;
    else
        writeln('Masukan tidak valid');
        valid := False;
    end;
    if ( valid ) then
        writeln('Besar suhu dalam ',SS2,' : ', result:0:2);
end.
```
-------------------------------
## Bab 2 - Pengulangan
### Problem 8


Agar dapat lulus dari kuliah, seorang mahasiswa dituntut untuk dapat menyebutkan bilangan prima diantara **A** dan **B**. Bantulah mahasiswa tersebut untuk menyebutkan bilangan prima tersebut.


**Catatan :** 
Buatlah suatu fungsi yang mengecek apakah suatu bilangan merupakan bilangan prima atau bukan


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukkan nilai A :1 
Masukkan nilai B :10
Bilangan prima diantara 1 sampai 10 adalah
2  
3  
5  
7  
```
```
Masukkan nilai A :10
Masukkan nilai B :20
Bilangan prima diantara 10 sampai 20 adalah 
11  
13  
17  
19
```
---------------------------------
Algoritma melakukan pencarian bilangan prima dengan membagi N dengan (2 .. akar N)

apabila ada pembagian yang menyisakan nol maka N bukan bilangan prima

---------------------------------

```
program problem8;

var 
    A,B : integer;
    i : integer;
    j : integer;
    isPrima : boolean;
begin
    write('Masukan nilai A : '); readln(A);
    write('Masukan nilai B : '); readln(B);
    writeln('Bilangin prima diantera ',A,' sampai ',B,' adalah');
    
    for i:= A to B do
      begin
        
        isPrima := true;
        j := 2;
        
        while ( ( j <= Sqrt(i) ) and ( isPrima ) ) do
          begin 
            if (i mod j = 0 ) then
              begin
                isPrima := false;
              end;
            j := j + 1;
          end;

        if ( ( isPrima ) and ( i <> 1) ) then
            writeln(i);
      end;
end.
```


## Bab 3 - Fungsi dan Prosedur
### Problem 7

Segitiga Pascal adalah segitiga yang dibuat dimulai dari angka 1 dan tiap angka di baris kedua dan selanjutnya berasal dari jumlah dua angka di atasnya. Berikut contoh 5 baris pertama Segitiga Pascal:

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1



Segitiga Pascal juga dapat dibentuk dari kombinatorik, dengan bilangan pada baris ke-i dan kolom ke-j bernilai C(i-1,j-1). Berikut adalah contoh penerapan pada 5 baris Segitiga Pascal.

C(0,0)

C(1,0) C(1,1)

C(2,0) C(2,1) C(2,2)

C(3,0) C(3,1) C(3,2) C(3,3)

C(4,0) C(4,1) C(4,3) C(4,4) C(4,5)


Buatlah sebuah program yang membuat Segitiga Pascal! (Buat fungsi Kombinasi(n, r) untuk
memudahkan penghitungan)


**Format Input & Output (input di-*bold*)**
***
Masukan jumlah baris: **5**

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1
***
-------------------------------------
Dengan memnfaatkan fungsi Kombinasi C(n,r) dengan memanfaatkan representasi matriks dengan ukuran (i,j)

dimana i dan j sama dengan n

maka akan diprint C(i,j) selama j <= i

-------------------------------------

```
program problem7;

var
    row : real;
    i,j : real;

function faktorial(x : real) : real;
begin
    if (x = 0) then
    begin    
        faktorial := 1;
    end
    else
    begin
        faktorial := x*faktorial(x-1);
    end;
end;

function C(n : real; r : real) : real ;
begin
    C:= faktorial(n) / ( faktorial(r) * faktorial(n-r) );
end;

begin
    write('Masukan jumlah baris : '); readln(row);
    i := 0;
    while ( i < row ) do
    begin
        j := 0;
        while (j <= i) do
        begin
            write(C(i,j):0:0,' ');
            j := j + 1;
        end;
        i := i + 1;
        writeln;
    end;
end.

```



## Bab 4 - *Array*
### Problem 6

Adolf suka membandingkan kekayaan negaranya dan negara lain. Ia ingin mengetahui apa yang tidak dimiliki oleh negaranya di negara tetangga. Buatlah program untuk menentukan mana saja kekayaan negara tetangga yang tidak dimiliki oleh negara Adolf.

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah kekayaan negara Adolf : **5**

Masukkan kekayaan negara Adolf :

**Emas**

**Perak**

**Berlian**

**Tank**

**Nuklir**

Masukkan jumlah kekayaan negara tetangga : **7**

Masukkan kekayaan negara tetangga :

**Emas**

**Perak**

**Tank**

**Nuklir**

**Berlian**

**Gedung**

**Ternak**

Negara adolf tidak memiliki :

Gedung

Ternak
***
***
Masukkan jumlah kekayaan negara Adolf : **5**

Masukkan kekayaan negara Adolf :

**Emas**

**Perak**

**Berlian**

**Tank**

**Nuklir**

Masukkan jumlah kekayaan negara tetangga : **3**

Masukkan kekayaan negara tetangga :

**Emas**

**Perak**

**Tank**

Negara adolf memiliki segalanya
***

```
program problem6;

Const
    MaxIndex = 100;
    MinIndex = 1;
    
type
    TabString = array [MinIndex..MaxIndex] of string;
    TabBool = array [MinIndex..MaxIndex] of boolean;
var
    tab1, tab2 : TabString;
    tabValidasi : TabBool;
    N1,i,j : integer;
    N2 : integer;
    flag : boolean;

function isExist( S : string; T : TabString; N : integer) : boolean;

var
    Exist : boolean;
    k : integer;

begin
    Exist := FALSE;
    k := 1;
    while ( ( k <= N ) and ( not Exist ) ) do
    begin
        if (T[k] = S) then
        begin
            Exist := TRUE;
        end;
        k := k + 1;
    end;
    isExist := Exist;

end;

begin

    write('Masukan jumlah kekayaan negara Adolf : '); readln(N1);
    writeln('Masukan kekayaan negara Adolf :');
    for i:= 1 to N1 do
    begin
        readln(tab1[i]);
    end;

    write('Masukan jumlah kekayaan negara tetangga : '); readln(N2);
    writeln('Masukan kekayaan negara tetangga :');
    for i:= 1 to N2 do
    begin
        readln(tab2[i]);
    end;

    flag := TRUE;
    for i:= 1 to N2 do
    begin
        tabValidasi[i] := isExist(tab2[i], tab1, N1 );
        if ( not tabValidasi[i] and flag ) then
        begin
            flag := false;
            writeln('Negara adolf tidak memiliki :');
            writeln(tab2[i]);
        end
        else if( not tabValidasi[i] ) then
             begin
                writeln(tab2[i]);
             end;
    end;

    if ( flag ) then
        writeln('Negara adolf memiliki segalanya');
end.

```


## Bab 5 - Matriks dan File Eksternal
### Problem 5

Tuan Krab mempunyai diberikan teka-teki oleh Plankton. Dia diberikan suatu matriks, kemudian dia diminta untuk menentukan apakah matriks tersebut merupakan *magic square* atau bukan. 
*Magic square* merupakan suatu matriks persegi berukuran `N`x`N` dengan elemen yang berbeda-beda. Masing-masing elemen berada pada rentang dari 1 hingga `N`^2. Matriks tersebut dikatakan merupakan *magic square* jika penjumlahan elemen-elemen pada setiap kolom, baris, dan diagonal memiliki nilai yang sama.
Karena cukup kesulitan, Tuan Krab meminta bantuan Anda untuk menyelesaikan permasalahan tersebut.
**Format *Input* dan *Output***
*Input* matriks diambil dari file eksternal `matriks.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Jika matriks merupakan *magic square*, maka dituliskan **Yes** pada layar. Sebaliknya, jika bukan *magic square*, maka dituliskan **No**. 
- matriks.txt

```
3
2   7   6
9   5   1
4   3   8
```

- *runtime program*

```
matriks loaded!
Yes
```
```
program problem5;

Const
    MaxIndex = 10000;
    MinIndex = 1;

type
    mat = array [MinIndex .. MaxIndex,MinIndex.. MaxIndex] of integer;

var
    s : string;
    c : char;
    fileS : Text;
    i,j,n : integer;
    tab : mat;
    number : integer;
    isMagic : boolean;
    k,l : integer;
    len,sum,sum1,sum2 : integer;

function charToInt(c:char):integer;
begin
    case c of
        '1' : charToInt := 1;
        '2' : charToInt := 2;
        '3' : charToInt := 3;
        '4' : charToInt := 4;
        '5' : charToInt := 5;
        '6' : charToInt := 6;
        '7' : charToInt := 7;
        '8' : charToInt := 8;
        '9' : charToInt := 9;
        '0' : charToInt := 0;
    end;
end;

begin
    for i:= 1 to MaxIndex do
        for j := 0 to MaxIndex do
            tab[i][j] := 0;
    isMagic := True;

    Assign(fileS,'matriks.txt');
    reset(fileS);

    readln(fileS,c);

    for i:= 1 to charToInt(c) do
    begin
        readln(fileS, s);
        number := 1;
        for j := 1 to length(s) do
        begin
            if (s[j] <> ' ') then
            begin
                tab[i][number] := tab[i][number]*10 + charToInt(s[j]);
            end 
            else
            begin
                number := number + 1;
            end;
        end;
    end; 

    close(fileS);

    writeln('matriks loaded!');
    
    len := charToInt(c);
    sum := 0;
    
    for k := 1 to len do
    begin
        sum := sum + tab[1][k];
    end;

    // cek baris dan kolom
    k := 1;
    while ( (k <= len) and (isMagic) ) do
    begin
        l := 1; 
        sum1 := 0;
        sum2 := 0;
        while ( (l <= len) and (isMagic) ) do
        begin
            sum1 := sum1 + tab[k][l];
            sum2 := sum2 + tab[l][k];
            l := l + 1;
        end;
        if ( (sum1 <> sum) or (sum2 <> sum) ) then
            isMagic := false;
        k := k + 1;
    end;

    sum1 := 0;
    sum2 := 0;
    k := 1;
    l := len;
    while ( ( k <= len) and isMagic ) do
    begin
        sum1 := sum1 + tab[k][k];
        sum2 := sum2 + tab[l][k];
        k := k + 1;
        l := l - 1;
        if( k > len) then
        begin
            if ( (sum1 <> sum) or (sum2 <> sum) ) then
                isMagic := false;
        end;
    end;

    if(isMagic) then
        writeln('YES')
    else
        writeln('NO');
end.    
```


-----------------------------------
