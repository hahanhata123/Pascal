PROGRAM HOANVI;
USES	Crt;
VAR		S:STRING;

PROCEDURE NHAP;
BEGIN
	Writeln('S=');
	readln(S);
END;

PROCEDURE DOICHO(VAR a,b : CHAR);
VAR p : CHAR;
BEGIN
	p:=a; 
	a:=b;
	b:=p;
END;

PROCEDURE TAO(S : STRING;i : BYTE);
VAR j : BYTE;
	p : CHAR;
BEGIN
	IF i=length(s) THEN Writeln(S);
	FOR j:=i TO length(s) DO
		BEGIN
			DOICHO(S[i],S[j]);
			TAO(S,i+1);
		END;
END;
BEGIN
	Clrscr;
	NHAP;
	writeln('So da hoan vi:');
	TAO(S,1);
	Readln;
END.
