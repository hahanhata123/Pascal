{
Nhap 1 day n so nguyen, in day:
a) Theo thu tu nho den lon
b) Dao nguoc thu tu
c) Gan gia tri ngau nhien cho tung phan tu
}

PROGRAM SAPXEP;
USES    crt;
VAR     a:array[1..1000] of integer;
        n:integer;

PROCEDURE NHAP;
VAR i:integer;
BEGIN
        Writeln('N=');readln(n);
        FOR i:=1 TO n DO
            BEGIN
                writeln('a[',i,']=');
                readln(a[i]);
            END;
END;

PROCEDURE SAPXEP;
VAR i,j,TG:integer;
BEGIN
        FOR i:=1 TO n-1 DO
            FOR j:=i+1 TO n DO
                IF a[i]>a[j] THEN
                        BEGIN
                                TG:=a[i];
                                a[i]:=a[j];
                                a[j]:=TG;
                        END;

        write('Nho den lon: ');
        FOR i:=1 TO n DO
            write(a[i]:3);
        writeln;

        write('Lon den nho: ');
        FOR i:=n DOWNTO 1 DO
            write(a[i]:3);
        writeln;
END;

PROCEDURE RAND;
VAR i:integer;
BEGIN
        FOR i:=1 TO n DO
            a[i]:=random(100);
        write('Random: ');
        FOR i:=1 to n do
            write(a[i]:3);
END;

BEGIN
        clrscr;
        NHAP;
        SAPXEP;
        RAND;
        readln;
END.