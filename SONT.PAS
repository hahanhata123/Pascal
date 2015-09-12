PROGRAM INSNT;
USES    crt;
VAR     n:integer;f:text;

PROCEDURE NHAP(var n:integer);
BEGIN
     writeln('N=');readln(n);
END;

PROCEDURE XUAT(n:integer);
BEGIN
     write(f,n,' ');
END;

FUNCTION NTO(x:integer):boolean;
VAR i:integer;
BEGIN
     NTO:=TRUE;
     if x<2 then exit;
     For i:=2 to trunc(sqrt(x)) do
         if x mod i = 0 then  begin
            NTO:=FALSE;
            exit;
         end;
END;

PROCEDURE XULI(n:integer);
VAR       i:integer;
BEGIN
     for i:=1 to n do
         if NTO(i)=TRUE then
            begin
                 XUAT(i);
                 write(i:3);
            end;
END;

BEGIN
     assign(f,'SONT.TXT');
     rewrite(f);
     NHAP(n);
     XULI(n);
     close(f);
     readln
END.