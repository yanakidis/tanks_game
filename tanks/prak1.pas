{������ ����਩ ����⠪����. ���稪�}
Program tank;
Uses crt;

(********************************************************)
Procedure Pixel(A,B,D: integer);
{���न����, ��� ���⠢��� ���}
(********************************************************)
Begin
  delay(D);
  GotoXY(A,B);
  write(' ');
End;

(********************************************************)
Procedure Play(color: byte; D: integer);
{�� �࠭ - ������}
(********************************************************)
  Var
    W,H,i: integer;
  Begin
    TextBackground(color);
    W:=48;
    H:=13;
    {�}
    for i:=0 to 4 do
      Pixel(W,H+i,D);
    Pixel(W+1,H+3,D);
    Pixel(W+2,H+2,D);
    Pixel(W+3,H+1,D);
    for i:=0 to 4 do
      Pixel(W+4,H+i,D);
    {�}
    W:=54;
    for i:=0 to 4 do
      Pixel(W,H+i,D);
    for i:=0 to 2 do
      Pixel(W+i,H,D);
    {�}
    W:=58;
    for i:=0 to 4 do
      Pixel(W,H+i,D);
    Pixel(W+1,H,D);
    Pixel(W+2,H,D);
    Pixel(W+2,H+1,D);
    Pixel(W+2,H+2,D);
    Pixel(W+1,H+2,D);
    {�}
    W:=64;
    Pixel(W,H,D);
    Pixel(W-1,H+1,D);
    Pixel(W+1,H+1,D);
    for i:=0 to 2 do
      begin
        Pixel(W+2,H+2+i,D);
        Pixel(W-2,H+2+i,D);
      end;
    for i:=0 to 2 do
      Pixel(W-1+i,H+2,D);
    {�}
    W:=68;
    for i:=0 to 2 do
      Pixel(W+i,H,D);
    for i:=1 to 4 do
      Pixel(W+1,H+i,D);
    {�}
    W:=72;
    for i:=0 to 4 do
      Pixel(W,H+i,D);
    Pixel(W+1,H+2,D);
    Pixel(W+2,H+2,D);
    Pixel(W+2,H+3,D);
    Pixel(W+2,H+4,D);
    Pixel(W+1,H+4,D);
  End;

(********************************************************)
Procedure Vihod(color: byte; D: integer);
{�� �࠭ - �����}
(********************************************************)
  Var
    W,H,i: integer;
  Begin
    TextBackground(color);
    W:=48;
    H:=23;
    {�}
    for i:=0 to 4 do
      Pixel(W,H+i,D);
    Pixel(W+1,H,D);
    Pixel(W+2,H,D);
    Pixel(W+2,H+1,D);
    Pixel(W+1,H+2,D);
    Pixel(W+2,H+3,D);
    Pixel(W+2,H+4,D);
    Pixel(W+1,H+4,D);
    {�}
    W:=52;
    for i:=0 to 4 do
      Pixel(W,H+i,D);
    Pixel(W+1,H+2,D);
    Pixel(W+2,H+2,D);
    Pixel(W+2,H+3,D);
    Pixel(W+2,H+4,D);
    Pixel(W+1,H+4,D);
    W:=W+4;
    for i:=0 to 4 do
      Pixel(W,H+i,D);
    {�}
    W:=58;
    for i:=0 to 4 do
      Pixel(W+i,H+i,D);
    for i:=4 downto 0 do
      Pixel(W+i,H+4-i,D);
    {�}
    W:=64;
    for i:=0 to 4 do
      begin
        Pixel(W,H+i,D);
        Pixel(W+3,H+i,D);
      end;
    for i:=1 to 2 do
      begin
        Pixel(W+i,H,D);
        Pixel(W+i,H+4,D);
      end;
    {�}
    W:=69;
    Pixel(W,H+4,D);
    Pixel(W+4,H+4,D);
    Pixel(W,H+3,D);
    Pixel(W+4,H+3,D);
    for i:=0 to 3 do
      Pixel(W+1+i,H+3,D);
    for i:=0 to 2 do
      begin
        Pixel(W+1,H+i,D);
        Pixel(W+3,H+i,D);
      end;
    Pixel(W+2,H,D);
  End;
(********************************************************)
Procedure zastavka;
(********************************************************)

  (********************************************************)
  Procedure tanks(D: integer);
  {�� �࠭ - �����. D - �ᯮ������ � delay}
  (********************************************************)
  Var
    H,W,i: integer;
  Begin
    {T}
    H:=2;
    W:=43;
    delay(D);
    GotoXY(W,H);
    write('       ');
    Pixel(W+3,H+1,D);
    Pixel(W+3,H+2,D);
    Pixel(W+3,H+3,D);
    Pixel(W+3,H+4,D);
    Pixel(W+3,H+5,D);
    {�}
    W:=54;
    Pixel(W,H,D);
    Pixel(W-1,H+1,D);
    Pixel(W+1,H+1,D);
    Pixel(W-2,H+2,D);
    Pixel(W+2,H+2,D);
    Pixel(W+3,H+3,D);
    Pixel(W+3,H+4,D);
    Pixel(W+3,H+5,D);
    Pixel(W-3,H+3,D);
    Pixel(W-3,H+4,D);
    Pixel(W-3,H+5,D);
    delay(D);
    GotoXY(W-2,H+3);
    write('      ');
    {�}
    W:=60;
    for i:=0 to 5 do
      Pixel(W,H+i,D);
    for i:=0 to 3 do
      Pixel(W+i,H+3,D);
    for i:=0 to 5 do
      Pixel(W+4,H+i,D);
    {�}
    W:=67;
    for i:=0 to 5 do
      Pixel(W,H+i,D);
    Pixel(W+1,H+2,D);
    Pixel(W+2,H+1,D);
    Pixel(W+3,H,D);
    Pixel(W+1,H+3,D);
    Pixel(W+2,H+4,D);
    Pixel(W+3,H+5,D);
    {�}
    W:=73;
    for i:=0 to 5 do
      Pixel(W,H+i,D);
    Pixel(W+1,H+4,D);
    Pixel(W+2,H+3,D);
    Pixel(W+3,H+2,D);
    Pixel(W+4,H+1,D);
    for i:=0 to 5 do
      Pixel(W+5,H+i,D);
  End;

  Procedure rama(D: integer);
  Var
    W,H,i,j: integer;
  Begin
    W:=42;
    H:=1;
    TextBackground(red);
    for i:=0 to 7 do
      for j:=0 to 37 do
        Pixel(W+j,H+i,D);
    for i:=0 to 5 do
      begin
        Pixel(W+38,H+1+i,D);
        Pixel(W+39,H+1+i,D);
        Pixel(W-1,H+1+i,D);
        Pixel(W-2,H+1+i,D);
      end;
    for i:=0 to 3 do
      begin
        Pixel(W+40,H+2+i,D);
        Pixel(W+41,H+2+i,D);
        Pixel(W-3,H+2+i,D);
        Pixel(W-4,H+2+i,D);
      end;
  End;

  (********************************************************)
  Procedure Upravlenie(D: integer);
  {�� �࠭ - �� �ࠢ�����}
  (********************************************************)
  Var
    W,H,i,j: integer;
  Begin
    TextBackground(brown);
    W:=10;
    H:=11;
    for i:=1 to 25 do
      for j:=1 to 7 do
        Pixel(W+i,H+j,D);
    for i:=2 to 24 do
      begin
        Pixel(W+i,H,D);
        Pixel(W+i,H+8,D);
      end;
    for i:=2 to 6 do
      begin
        Pixel(W,H+i,D);
        Pixel(W+26,H+i,D);
      end;
    GotoXY(W+10,H+1);
    TextColor(black);
    writeln('CONTROL');
    GotoXY(W+2,H+3);
    TextColor(blue);
    writeln('PLAYER');
    GotoXY(W+2,H+5);
    writeln('MOVEMENT');
    GotoXY(W+2,H+7);
    writeln('FIRE');
    GotoXY(W+15,H+3);
    writeln('I');
    GotoXY(W+21,H+3);
    writeln('II');
    TextColor(white);
    GotoXY(W+13,H+5);
    writeln('WASD');
    GotoXY(W+19,H+5);
    writeln('Arrows');
    GotoXY(W+15,H+7);
    writeln('C');
    GotoXY(W+21,H+7);
    writeln('M');
  End;

  (********************************************************)
  Procedure Information(D: integer);
  {�� �࠭ - ������� ���ଠ樨}
  (********************************************************)
  Var
    W,H,i,j: integer;
  Begin
    W:=86;
    H:=11;
    TextBackground(brown);
    for i:=1 to 25 do
      for j:=1 to 7 do
        Pixel(W+i,H+j,D);
    for i:=2 to 24 do
      begin
        Pixel(W+i,H,D);
        Pixel(W+i,H+8,D);
      end;
    for i:=2 to 6 do
      begin
        Pixel(W,H+i,D);
        Pixel(W+26,H+i,D);
      end;
    TextColor(black);
    GotoXY(W+6,H+1);
    writeln('SOME INFORMATION');
    TextColor(blue);
    GotoXY(W+7,H+3);
    writeln('FIRST TO SCORE');
    TextColor(white);
    GotoXY(W+6,H+5);
    writeln('10 POINTS - WIN');
    Textcolor(blue);
    GotoXY(W+6,H+7);
    writeln('ENJOY THE GAME :)');
    H:=24;
    for i:=4 to 22 do
      for j:=1 to 2 do
        Pixel(W+i,H+j,D);
    for i:=5 to 21 do
      begin
        Pixel(W+i,H,D);
        Pixel(W+i,H+3,D);
      end;
    GotoXY(W+10,H+1);
    TextColor(white);
    writeln('MADE BY');
    GotoXY(W+6,H+2);
    Textcolor(red);
    writeln('DMITRIY YANAKOV');
  End;

Begin
  {����� + ࠬ��}
  TextBackground(lightgray);
  ClrScr;
  rama(0);
  TextBackground(black);
  tanks(5);
  {����� + ��室}
  delay(10);
  play(black,0);
  vihod(black,0);
  upravlenie(0);
  information(0);
End;

(********************************************************)
Procedure Change_Pos(flag: boolean; D: integer);
{��楤��, ������� �뤥������ ᫮�� �� ������ ������}
(********************************************************)
Begin
  if flag then
    begin
      Vihod(black,0);
      Play(blue,0);
    end
  else
    begin
      Play(black,0);
      Vihod(blue,0);
    end;
End;

(********************************************************)
Procedure Menu_1(var flag,sit: boolean);
{��楤��, ��� ����������⢨� ���짮��⥫� � ����}
(********************************************************)
  Procedure Move(var flag: boolean);
  Begin
    flag:=not flag;
    change_pos(flag,0);
  End;
Var
  c: char;
Begin
  sit:=true;
  flag:=true; {true - ����� �⮨� �� �����}
  delay(30);
  change_pos(flag,0); {�ࠧ� �뤥��� ᫮�� �����}
  while sit do
    begin
      if keypressed then
        begin
          c:=readkey;
          case ord(c) of
            ord('w'),ord('W'),ord('�'),ord('�'): move(flag); {Ww��}
            ord('s'),ord('S'),ord('�'),ord('�'): move(flag); {Ss��}
          end;
          if ord(c)=0 then
            begin
              c:=readkey;
              case ord(c) of
                72: move(flag); {��५�� �����}
                80: move(flag); {��५�� ����}
              end;
            end;
          if ord(c)=13 then {�᫨ ������ enter}
            sit:=false; {�����, ���� ��室��, ���� ��ࠥ�}
          while keypressed do
           c:=readkey; {��頥� ����, �᫨ �� ������ ��������}
        end;
     end;
End;

(********************************************************)
Procedure Game(var sit,flag: boolean);
{�᭮���� ��楤�� ����}
{sit �⢥砥� �� ��室 �� ���� �१ ����}
(********************************************************)
Const
  Wid=130;
  Hei=30;
Type
  Mas = array[0..Wid,0..Hei] of integer; {�᭮���� ����� ����}
  {0 - ᢮������ ����, 1 - �⥭�, 2 - ⠭�, 3 - ��楫 ⠭��, 4 - ���}
  Napr = (right,left,down,up);
  Menu = Array [1..3] of byte;
Var
  Osn: Mas; {�᭮���� ����� ����}
  i,j: integer;
  T1X,T1Y,T2X,T2Y: integer; {���न���� ⠭���}
  N1,N2: Napr; {���ࠢ����� ⠭��}
  endgame: boolean; {��室 �� ����}
  c: char;
  sc1,sc2: integer; {��� ������� ��ப�}


  (********************************************************)
  Procedure P_M(Var A:Mas; x,y: integer; C: integer; D: integer);
  {��楤�� ���������� ���ᥫ� � ����� � �� ����
   x,y - ���न����, � - �� �⠢����, d - ����প� }
  (********************************************************)
  Begin
        A[x,y]:=c;
        Pixel(x,y,D);
  End;

  (********************************************************)
  Procedure P_M_D(Var A:Mas; x,y: integer; D: integer);
  {��楤�� 㤠����� ����� �� ���� � ������ � ����� �� ᢮������
   ����, x,y - ���न����, d - ����প� }
  (********************************************************)
  Begin
        A[x,y]:=0;
        Pixel(x,y,D);
  End;

  Procedure Change_Score(Var sc1,sc2: integer);
  {��楤��, �����뢠��� �� �� ����}
  Begin
    TextBackground(lightgray);
    TextColor(black);
    GotoXY(59,28);
    write(sc1);
    GotoXY(61,28);
    write(sc2);
  End;

  (********************************************************)
  Procedure Zapoln_sten(Var A:Mas; var sc1,sc2: integer);
  {��楤�� ���������� �⥭ �� ���� � � �����}
  (********************************************************)
  Var
    i: integer;
  Begin
    Textbackground(blue);
    for i:=1 to 5 do
      P_M(A,15,i+20,1,0);
    for i:=1 to 6 do
      P_M(A,15+i,13,1,0);
    for i:=1 to 4 do
      P_M(A,21,13-i,1,0);
    for i:=1 to 10 do
      P_M(A,34+i,20,1,0);
    for i:=1 to 6 do
      P_M(A,50+i,6,1,0);
    for i:=1 to 4 do
      P_M(A,56,6+i,1,0);
    for i:=1 to 9 do
      P_M(A,75,13+i,1,0);
    for i:=1 to 10 do
      P_M(A,95+i,8,1,0);
    for i:=1 to 9 do
      P_M(A,96+i,23,1,0);
    for i:=1 to 7 do
      P_M(A,98-i,24,1,0);
    {��㥬 �࠭���}
    for i:=2 to 119 do
      P_M(A,i,1,1,0);
    for i:=2 to 29 do
      P_M(A,120,i,1,0);
    for i:=119 downto 2 do
      P_M(A,i,30,1,0);
    for i:=29 downto 2 do
      P_M(A,1,i,1,0);
    TextBackground(lightgreen);
    P_M(A,60,27,1,0);
    P_M(A,60,28,1,0);
    P_M(A,59,27,1,0);
    P_M(A,61,27,1,0);
    P_M(A,58,27,1,0);
    P_M(A,62,27,1,0);
    P_M(A,58,28,1,0);
    P_M(A,62,28,1,0);
    for i:=58 to 62 do
      P_M(A,i,29,1,0);
    sc1:=0; {��砫�� ���}
    sc2:=0;
    Change_Score(sc1,sc2);
  End;

  (********************************************************)
  Procedure Zapoln_tankov(Var A:Mas);
  {��楤�� ���������� ⠭��� �� ���� � � �����}
  (********************************************************)
  Var
    i,j: integer;
  Begin
    TextBackground(black);
    {��㥬 ⠭��}
    for i:=1 to 3 do
      for j:=1 to 3 do
        P_M(A,10+j,5+i,2,0);
    T1X:=12; {���न���� 業�� ⠭��}
    T1Y:=7;
    for i:=1 to 3 do
      for j:=1 to 3 do
        P_M(A,85+j,15+i,2,0);
    T2X:=87;
    T2Y:=17;
    TextBackground(red);
    {��㥬 ��楫�}
    P_M(A,12,5,3,0);
    N1:=up;
    P_M(A,85,17,3,0);
    N2:=left;
  End;

  (********************************************************)
  Procedure Movement(Var A:Mas; Dir: Napr; Var N: Napr; Var TX,TY: integer);
  {��楤�� ��।������� ⠭���
   Nomer - ����� ⠭�� (1- ����� � WASD, 2 - ����� � ��५�窠��,
   N - ���ࠢ����� �⮣� ⠭��,Dir - ���ࠢ�����, �㤠 ⠭� ������ ����
   TX,TY - 業�ࠫ�� ���न���� ⠭��}
  (********************************************************)

    Function Check_Move(var A: Mas; TX,TY: integer; Dir,N: Napr): boolean;
    {����� �� �� ���������
     Dir - �㤠 ���ࠢ����� �����,N - ��஥}

      Function Check(var A: Mas; X,Y: integer): boolean;
      {�஢�ઠ (�� 業�� ⠭�� +-2 � ����ᨬ�� �� ���ࠢ�����,
       ⠪ ��� ������ ���������� ��楫}
      Begin
        if Dir=N then
          case Dir of
            {�஢ઠ �� ��楫 � ��� �������� � ���� ����� ⠭��}
            left: Check:=(A[X-3,Y]=0) and (A[X-2,Y+1]=0) and (A[X-2,Y-1]=0);
            right: Check:=(A[X+3,Y]=0) and (A[X+2,Y+1]=0) and (A[X+2,Y-1]=0);
            up: Check:=(A[X,Y-3]=0) and (A[X+1,Y-2]=0) and (A[X-1,Y-2]=0);
            down: Check:=(A[X,Y+3]=0) and (A[X+1,Y+2]=0) and (A[X-1,Y+2]=0);
          end
        else
          case Dir of
            left: Check:=A[X-2,Y]=0;
            right: Check:=A[X+2,Y]=0;
            up: Check:=A[X,Y-2]=0;
            down: Check:=A[X,Y+2]=0;
          end;
      End;

    Begin
       Check_Move:=Check(A,TX,TY);
    End;

    Procedure Move(var A: Mas; var TX,TY: integer; N: Napr);
    {��楤�� ᤢ��� ⠭��}
    Var
      i: integer;
    Begin
      case N of
        left: begin
                TextBackground(lightgray);
                for i:=1 to 3 do
                  P_M_D(A,TX+1,TY-2+i,0);
                TextBackground(black);
                for i:=1 to 3 do
                  P_M(A,TX-2,TY-2+i,2,0);
                TextBackground(red);
                  P_M(A,TX-3,TY,3,0);
                TX:=TX-1;
              end;
        right: begin
                 TextBackground(lightgray);
                 for i:=1 to 3 do
                   P_M_D(A,TX-1,TY-2+i,0);
                 TextBackground(black);
                 for i:=1 to 3 do
                   P_M(A,TX+2,TY-2+i,2,0);
                 TextBackground(Red);
                 P_M(A,TX+3,TY,3,0);
                 TX:=TX+1;
               end;
        up: begin
              TextBackground(lightgray);
              for i:=1 to 3 do
                P_M_D(A,TX-2+i,TY+1,0);
              TextBackground(black);
              for i:=1 to 3 do
                P_M(A,TX-2+i,TY-2,2,0);
              TextBackground(red);
              P_M(A,TX,TY-3,3,0);
              TY:=TY-1;
            end;
        down: begin
                TextBackground(lightgray);
                for i:=1 to 3 do
                  P_M_D(A,TX-2+i,TY-1,0);
                TextBackground(black);
                for i:=1 to 3 do
                  P_M(A,Tx-2+i,TY+2,2,0);
                TextBackground(Red);
                P_M(A,TX,TY+3,3,0);
                TY:=TY+1;
              end;
      end;
    End;

    Procedure Change_Dir(var A: Mas; var TX,TY: integer; var N: Napr;
                         Dir: Napr);
    {��楤�� ᬥ�� ���ࠢ����� �������� ⠭��
     N - ��砫쭮�, Dir - ����筮�}
    Begin
      TextBackground(lightgray);
      case N of
        left: P_M_D(A,TX-2,TY,0);
        right: P_M_D(A,TX+2,TY,0);
        up: P_M_D(A,TX,TY-2,0);
        down: P_M_D(A,TX,TY+2,0);
      end;
      N:=Dir;
      TextBackground(red);
      case Dir of
        left: P_M(A,TX-2,TY,3,0);
        right: P_M(A,TX+2,TY,3,0);
        up: P_M(A,TX,TY-2,3,0);
        down: P_M(A,TX,TY+2,3,0);
      end;
    End;

  Begin
    if check_move(A,TX,TY,Dir,N) then
      if N=Dir then
        move(A,TX,TY,N)
      else
        change_dir(A,TX,TY,N,Dir);
  End;

    Procedure Cikl_Sdvig(var A: menu; napr: boolean);
    {横���᪨� ᢤ�� � ��㧥 � � ���� ����}
    Var
      i: integer;
    Begin
      if napr then
        if A[1]=red then
          begin
            A[3]:=red;
            A[1]:=white;
          end
        else
          begin
            for i:=1 to 2 do
              A[i]:=A[i+1];
              A[3]:=white;
          end
      else
        if A[3]=red then
          begin
            A[1]:=red;
            A[3]:=white;
          end
        else
          begin
            for i:=3 downto 2 do
              A[i]:=A[i-1];
            A[1]:=white;
          end;
    End;

  (********************************************************)
  Procedure Pause(var A:Mas; var endgame,sit: boolean);
  {��楤�� ��� ����}
  (********************************************************)

    Procedure Smena(var A: menu; W,H: integer);
    Begin
      TextColor(A[1]);
      GotoXY(W+12,H+4);
      Write('Continue');
      TextColor(A[2]);
      GotoXY(W+11,H+6);
      Write('Exit to menu');
      GotoXY(W+9,H+8);
      TextColor(A[3]);
      Write('Exit from the game');
    End;

  Var
    i,j: integer;
    W,H: integer;
    shift: boolean;
    esc: boolean;
    c: char;
    B: menu;
  Begin
    TextBackground(brown);
    W:=45;
    H:=11;
    for i:=1 to 30 do
      for j:=1 to 9 do
        Pixel(W+i,H+j,0);
    TextBackground(black);
    TextColor(lightred);
    GotoXY(W+13,H+2);
    Write('PAUSE');
    TextBackground(brown);
    shift:=true; {ᢤ�� ����}
    B[1]:=red;
    B[2]:=white;
    B[3]:=white;
    Smena(B,W,H);
    esc:=false; {��室 �� ����}
    while not esc do
      begin
        if keypressed then
          begin
            c:=readkey;
            if ord(c)=27 then
              esc:=true
            else
              begin
                if ord(c)=0 then
                  begin
                    c:=readkey;
                    case ord(c) of
                      72: begin cikl_sdvig(B,true); smena(B,W,H); end;
                          {����� � ��㧥}
                      80: begin cikl_sdvig(B,false); smena(B,W,H); end;
                          {���� �� ��㧥}
                    end;
                  end
                else
                  begin
                   case c of
                     'W','w','�','�': begin cikl_sdvig(B,true); smena(B,W,H); end;
                     'S','s','�','�': begin cikl_sdvig(B,false); smena(B,W,H); end;
                   end;
                   if ord(c)=13 then {�᫨ ������ enter}
                     begin
                       if B[2]=red then {�᫨ �� exit to menu}
                         begin
                           endgame:=true;
                           flag:=false;
                         end;
                       if B[3]=red then {�᫨ �� exit from the game}
                         begin
                           sit:=false;
                           endgame:=true;
                           flag:=false;
                         end;
                       esc:=not esc;
                     end;
             end;
            end;
          end;
      end;
    {������ �०��� ���⨭��}
    if not endgame then {�᫨ �� �� ��諨}
      begin
        for i:=1 to 30 do
          for j:=1 to 9 do
            begin
              case A[W+i,H+j] of {�� ��室���� �� �⮬ ����}
                0: TextBackground(lightgray);
                1: TextBackground(blue);
                2: TextBackground(black);
                3: TextBackground(red);
              end;
              Pixel(W+i,H+j,0);
            end;
      end;
  End;

  Procedure Clear_Bufer;
  Var
    C: char;
  Begin
    while keypressed do
      c:=readkey;
  End;

  (********************************************************)
  Procedure Shoot(Var Me_X,Me_Y: integer; Var Me_N: Napr;
                  Var En_X,En_Y: integer; Var En_N: Napr; Var A: Mas;
                  Var sc1,sc2: integer; Var endgame,sit,flag: boolean);
  {��楤�� ��५��}
  {Me - ��� ���न���� � ���ࠢ�����, En - ��⨢����}
  (********************************************************)
  Var
    fl,str: boolean;
    x,y: integer; {���न���� �㫨}
    D: integer;
    i,j: integer;

    Procedure Check_Y(var flag,str: boolean; p: integer; var x,y: integer);
    {p - ��ࠬ��� ��� ���� � �ࠢ�}
    Var
      i: integer;
      gr: integer;
    Begin
          i:=Me_X+3*p;
          if p=1 then
            gr:=130
          else
            gr:=0;
          while not flag and (i<>gr) do {���� ���� � ����� ��஭�}
            begin
              flag:=(A[i,Me_Y]<>0);
              i:=i+p;
            end;
          i:=i-p; {��� ���न��� �㫨 �।��᫥���� �� �⮫��������}
          case A[i,Me_Y] of
            1: flag:=false;
            2,3: flag:=true;
          end;
          if Me_X+2*p<>i-p then
            x:=i-p {�⮡� ���� �ࠢ�� ���⠢��� ��� �� ����}
          else
            begin
              if not flag {or (Me_X+4*p=En_X) or (Me_X+5*p=En_X)} then {�᫨ ����� � �⥭� ��५塞
                                                    ��� � ��⨢����}
                str:=false;
              x:=i;
            end;
          y:=Me_y;
    End;

    Procedure Check_X(var flag,str: boolean; p: integer; var x,y: integer);
    {p - ��ࠬ��� ��� ���� � �ࠢ�}
    Var
      i: integer;
      gr: integer;
    Begin
          i:=Me_Y+3*p;
          if p=1 then
            gr:=0
          else
            gr:=30;
          while not flag and (i<>gr) do {���� ���� � ����� ��஭�}
            begin
              flag:=(A[Me_X,i]<>0);
              i:=i+p;
            end;
          i:=i-p; {��� ���न��� �㫨 �।��᫥���� �� �⮫��������}
          case A[Me_X,i] of
            1: flag:=false;
            2,3: flag:=true;
          end;
          if Me_Y+2*p<>i-p then
            y:=i-p {�⮡� ���� �ࠢ�� ���⠢��� ��� �� ����}
          else
            begin
              if not flag {or (Me_Y+4*p=En_Y) or (Me_Y+5*p=En_Y)} then
                 {�᫨ ����� � �⥭� ��५塞 ��� � ��⨢����}
                str:=false;
              y:=i;
            end;
          x:=Me_X;
    End;

    Procedure Ubr_Pricel(var A: mas; var X,Y: integer; var N:Napr; D: integer);
    Begin
      case N of
        right: P_M_D(A,X+2,Y,D);
        left: P_M_D(A,X-2,Y,D);
        up: P_M_D(A,X,Y-2,D);
        down: P_M_D(A,X,Y+2,D);
      end;
    End;

  (********************************************************)
  Procedure Win(var endgame,sit,flag: boolean; n: integer);
  {��楤�� ���� ����}
  (********************************************************)
  Type
    Menu = Array [1..3] of byte;

    Procedure Smena(var A: menu; W,H: integer);
    Begin
      TextColor(A[1]);
      GotoXY(W+12,H+4);
      Write('Restart');
      TextColor(A[2]);
      GotoXY(W+11,H+6);
      Write('Exit to menu');
      GotoXY(W+9,H+8);
      TextColor(A[3]);
      Write('Exit from the game');
    End;

  Var
    i,j: integer;
    W,H: integer;
    shift: boolean;
    esc: boolean;
    c: char;
    B: menu;
  Begin
    TextBackground(brown);
    W:=45;
    H:=11;
    for i:=1 to 30 do
      for j:=1 to 9 do
        Pixel(W+i,H+j,0);
    TextBackground(black);
    TextColor(lightred);
    GotoXY(W+8,H+2);
    if n=1 then
      Write('1 PLAYER HAS WON')
    else
      Write('2 PLAYER HAS WON');
    TextBackground(brown);
    shift:=true; {ᢤ�� ���� ����}
    B[1]:=red;
    B[2]:=white;
    B[3]:=white;
    Smena(B,W,H);
    esc:=false; {��室 �� ����}
    while not esc do
      begin
        if keypressed then
          begin
            c:=readkey;
                if ord(c)=0 then
                  begin
                    c:=readkey;
                    case ord(c) of
                      72: begin cikl_sdvig(B,true); smena(B,W,H); end;
                          {����� � ��㧥}
                      80: begin cikl_sdvig(B,false); smena(B,W,H); end;
                          {���� �� ��㧥}
                    end;
                  end
                else
                  begin
                   case c of
                     'W','w','�','�': begin cikl_sdvig(B,true); smena(B,W,H); end;
                     'S','s','�','�': begin cikl_sdvig(B,false); smena(B,W,H); end;
                   end;
                   if ord(c)=13 then {�᫨ ������ enter}
                     begin
                       if B[1]=red then {�᫨ �� replay}
                         endgame:=true;
                       if B[2]=red then {�᫨ �� exit to menu}
                         begin
                           endgame:=true;
                           flag:=false;
                         end;
                       if B[3]=red then {�᫨ �� exit from the game}
                         begin
                           sit:=false;
                           flag:=false;
                           endgame:=true;
                         end;
                       esc:=not esc;
                     end;
                 end;
          end;
      end;
  End;

  Begin
    fl:=false;
    str:=true; {����� �� ����� ��५���}
    case Me_N of
    {� ����ᨬ��� �� ⮣�, �㤠 �� ��५塞}
      left: Check_Y(fl,str,-1,x,y);
      right: Check_Y(fl,str,1,x,y);
      down: Check_X(fl,str,1,x,y);
      up: Check_X(fl,str,-1,x,y);
    end;
    if str then
    {�᫨ � �ਭ樯� ����� ��५���}
      begin
        TextBackground(magenta);
        P_M(A,x,y,4,0);
        if not fl then {�᫨ �� ������ �� ��⨢����}
          begin
           Delay(100);
           TextBackground(lightgray);
           P_M_D(A,x,y,0);
          end
        else
          begin
            Delay(150);
            P_M(A,En_X,En_Y,4,0);
            Delay(150);
            P_M(A,EN_X+1,EN_Y-1,4,0);
            Delay(150);
            P_M(A,En_X+1,EN_Y+1,4,0);
            Delay(150);
            P_M(A,En_X-1,En_Y+1,4,0);
            Delay(150);
            P_M(A,En_X-1,En_Y-1,4,0);
            Delay(150);
            {㡨ࠥ� ⠭�� � ����� � ������ �� �⠢��}
            TextBackground(lightgray);
            for i:=-1 to 1 do
              for j:=-1 to 1 do
                begin
                  P_M_D(A,En_X+i,En_Y+j,30);
                  P_M_D(A,Me_X+i,Me_Y+j,30);
                end;
            Ubr_Pricel(A,Me_X,Me_Y,Me_N,30);
            Ubr_Pricel(A,En_X,En_Y,En_N,30);
            P_M_D(A,x,y,30);
            case c of
              'C','c','�','�': sc1:=sc1+1;
              'M','m','�','�': sc2:=sc2+1;
            end;
            if (sc1<>10) and (sc2<>10) then
              begin
                Change_Score(sc1,sc2);
                zapoln_tankov(A);
              end
            else
              if sc1=10 then
                Win(endgame,sit,flag,1)
              else
                Win(endgame,sit,flag,2);
         end;
      end;

  End;

Begin
  endgame:= false;
  for i:=0 to Wid do
    for j:=0 to Hei do
      Osn[i,j]:=0;
  Textbackground(lightgray);
  clrscr;
  zapoln_sten(Osn,sc1,sc2);
  zapoln_tankov(Osn);
  while not endgame do
    begin
      if keypressed then
        begin
          c:=readkey;
          if ord(c)=0 then
            begin
              c:=readkey;
              case ord(c) of
                75: movement(Osn,left,N2,T2X,T2Y); {�����}
                72: movement(Osn,up,N2,T2X,T2Y); {�����}
                77: movement(Osn,right,N2,T2X,T2Y); {��ࠢ�}
                80: movement(Osn,down,N2,T2X,T2Y); {����}
              end;
            end
          else
            begin
              case c of
                'A','a','�','�': movement(Osn,left,N1,T1X,T1Y);
                'W','w','�','�': movement(Osn,up,N1,T1X,T1Y);
                'D','d','�','�': movement(Osn,right,N1,T1X,T1Y);
                'S','s','�','�': movement(Osn,down,N1,T1X,T1Y);
                'C','c','�','�': shoot(T1X,T1Y,N1,T2X,T2Y,N2,Osn,sc1,sc2,endgame,sit,flag);
                'M','m','�','�': shoot(T2X,T2Y,N2,T1X,T1Y,N1,Osn,sc1,sc2,endgame,sit,flag);
              end;
              if ord(c)=27 then
                pause(Osn,endgame,sit);
            end;
          Clear_Bufer;
        end;
    end;
End;

Var
  flag,sit: boolean;
Begin
  ClrScr;
  window(0,0,130,30);
  sit:=true;
  Textbackground(Red);
  while sit do
    begin
      zastavka;
      menu_1(flag,sit);
      while flag do {�᫨ ��諨 �� ���� � ����⮩ ������� �����
                     ��� ��⮬ � ��� ������ restart}
        begin
          sit:=true; {⠪ ��� � ��楤�� menu �������� sit �� false}
          game(sit,flag);
        end;
    end;
End.
