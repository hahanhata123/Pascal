{
Cho day n so nguyen, doi thu tu cac so sao cho
a[1] <-> a[n]
a[2] <-> a[n-1]
....
}

PROGRAM DOICHO;
USES    CRT;
VAR     n:integer;
        a:array[1..100] of integer;

PROCEDURE NHAP;
VAR i:integer;
BEGIN
        writeln('N=');
        readln(n);
        FOR i:=1 TO n DO
            BEGIN
                writeln('a[',i,']=');
                readln(a[i]);
            END;
END;

PROCEDURE DOICHO;
VAR i,TG:integer;
BEGIN
        FOR i:=1 TO (n div 2) DO
            BEGIN
                TG:=a[i];
                a[i]:=a[n-i+1];
                a[n-i+1]:=TG;
            END;
        write('Day da doi: ');
        FOR i:=1 TO n DO
                write(a[i]:3);
END;

BEGIN
        NHAP;
        DOICHO;
        readln
END.