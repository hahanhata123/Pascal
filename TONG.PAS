{
Bai 6.1:
Nhap N so thuc, dem va tinh tong cac so duong, am
}

PROGRAM DEM_TINHTONG;
USES    crt;
VAR     n:integer;
        a:array[1..1000] of real;

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

PROCEDURE DEM_TONG;
VAR Sa,Sd:real;i,Da,Dd:integer;
BEGIN
        Sa:=0;Sd:=0;Da:=0;Dd:=0;
        FOR i:=1 TO n DO
                IF a[i]>=0 THEN
                   BEGIN
                        Sd:=Sd+a[i];
                        Dd:=Dd+1;
                   END
                ELSE
                   BEGIN
                        Sa:=Sa+a[i];
                        Da:=Da+1;
                   END;
        Writeln('Tong cua ',Dd,' so duong la: ',Sd:3:2);
        Writeln('Tong cua ',Da,' so am la: ',Sa:3:2);
END;

BEGIN
        NHAP;
        DEM_TONG;
        readln
END.




