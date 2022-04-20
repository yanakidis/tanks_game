{Янаков Дмитрий Спартакович. Танчики}
Program tank;
Uses crt;

(********************************************************)
Procedure Pixel(A,B,D: integer);
{координаты, где поставить точку}
(********************************************************)
Begin
  delay(D);
  GotoXY(A,B);
  write(' ');
End;

(********************************************************)
Procedure Play(color: byte; D: integer);
{На экран - ИГРАТЬ}
(********************************************************)
  Var
    W,H,i: integer;
  Begin
    TextBackground(color);
    W:=48;
    H:=13;
    {И}
    for i:=0 to 4 do
      Pixel(W,H+i,D);
    Pixel(W+1,H+3,D);
    Pixel(W+2,H+2,D);
    Pixel(W+3,H+1,D);
    for i:=0 to 4 do
      Pixel(W+4,H+i,D);
    {Г}
    W:=54;
    for i:=0 to 4 do
      Pixel(W,H+i,D);
    for i:=0 to 2 do
      Pixel(W+i,H,D);
    {Р}
    W:=58;
    for i:=0 to 4 do
      Pixel(W,H+i,D);
    Pixel(W+1,H,D);
    Pixel(W+2,H,D);
    Pixel(W+2,H+1,D);
    Pixel(W+2,H+2,D);
    Pixel(W+1,H+2,D);
    {А}
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
    {Т}
    W:=68;
    for i:=0 to 2 do
      Pixel(W+i,H,D);
    for i:=1 to 4 do
      Pixel(W+1,H+i,D);
    {Ь}
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
{На экран - ВЫХОД}
(********************************************************)
  Var
    W,H,i: integer;
  Begin
    TextBackground(color);
    W:=48;
    H:=23;
    {В}
    for i:=0 to 4 do
      Pixel(W,H+i,D);
    Pixel(W+1,H,D);
    Pixel(W+2,H,D);
    Pixel(W+2,H+1,D);
    Pixel(W+1,H+2,D);
    Pixel(W+2,H+3,D);
    Pixel(W+2,H+4,D);
    Pixel(W+1,H+4,D);
    {Ы}
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
    {Х}
    W:=58;
    for i:=0 to 4 do
      Pixel(W+i,H+i,D);
    for i:=4 downto 0 do
      Pixel(W+i,H+4-i,D);
    {О}
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
    {Д}
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
  {На экран - ТАНКИ. D - используется в delay}
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
    {А}
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
    {Н}
    W:=60;
    for i:=0 to 5 do
      Pixel(W,H+i,D);
    for i:=0 to 3 do
      Pixel(W+i,H+3,D);
    for i:=0 to 5 do
      Pixel(W+4,H+i,D);
    {К}
    W:=67;
    for i:=0 to 5 do
      Pixel(W,H+i,D);
    Pixel(W+1,H+2,D);
    Pixel(W+2,H+1,D);
    Pixel(W+3,H,D);
    Pixel(W+1,H+3,D);
    Pixel(W+2,H+4,D);
    Pixel(W+3,H+5,D);
    {И}
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
  {На экран - про управление}
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
  {На экран - немного информации}
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
  {Танки + рамка}
  TextBackground(lightgray);
  ClrScr;
  rama(0);
  TextBackground(black);
  tanks(5);
  {Играть + Выход}
  delay(10);
  play(black,0);
  vihod(black,0);
  upravlenie(0);
  information(0);
End;

(********************************************************)
Procedure Change_Pos(flag: boolean; D: integer);
{Процедура, меняющая выделенное слово по нажатию клавиши}
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
{Процедура, для взаимодействия пользователя с меню}
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
  flag:=true; {true - когда стоит на играть}
  delay(30);
  change_pos(flag,0); {сразу выделим слово играть}
  while sit do
    begin
      if keypressed then
        begin
          c:=readkey;
          case ord(c) of
            ord('w'),ord('W'),ord('Ц'),ord('ц'): move(flag); {WwЦц}
            ord('s'),ord('S'),ord('Ы'),ord('ы'): move(flag); {SsЫы}
          end;
          if ord(c)=0 then
            begin
              c:=readkey;
              case ord(c) of
                72: move(flag); {стрелка вверх}
                80: move(flag); {стрелка вниз}
              end;
            end;
          if ord(c)=13 then {если нажали enter}
            sit:=false; {значит, либо выходим, либо играем}
          while keypressed do
           c:=readkey; {очищаем буфер, если эти клавиши зажимают}
        end;
     end;
End;

(********************************************************)
Procedure Game(var sit,flag: boolean);
{Основная процедура игры}
{sit отвечает за выход из игры через паузу}
(********************************************************)
Const
  Wid=130;
  Hei=30;
Type
  Mas = array[0..Wid,0..Hei] of integer; {основная матрица игры}
  {0 - свободное поле, 1 - стена, 2 - танк, 3 - прицел танка, 4 - пуля}
  Napr = (right,left,down,up);
  Menu = Array [1..3] of byte;
Var
  Osn: Mas; {основная матрица игры}
  i,j: integer;
  T1X,T1Y,T2X,T2Y: integer; {координаты танков}
  N1,N2: Napr; {направление танка}
  endgame: boolean; {выход из игры}
  c: char;
  sc1,sc2: integer; {счет каждого игрока}


  (********************************************************)
  Procedure P_M(Var A:Mas; x,y: integer; C: integer; D: integer);
  {Процедура заполнения пикселя в матрице и на карте
   x,y - координаты, с - что ставится, d - задержка }
  (********************************************************)
  Begin
        A[x,y]:=c;
        Pixel(x,y,D);
  End;

  (********************************************************)
  Procedure P_M_D(Var A:Mas; x,y: integer; D: integer);
  {Процедура удаления элемента на карте и замена в матрице на свободное
   поле, x,y - координаты, d - задержка }
  (********************************************************)
  Begin
        A[x,y]:=0;
        Pixel(x,y,D);
  End;

  Procedure Change_Score(Var sc1,sc2: integer);
  {процедура, показывающая на экарн счёт}
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
  {Процедура заполнения стен на карте и в матрице}
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
    {рисуем границу}
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
    sc1:=0; {начальный счет}
    sc2:=0;
    Change_Score(sc1,sc2);
  End;

  (********************************************************)
  Procedure Zapoln_tankov(Var A:Mas);
  {Процедура заполнения танков на карте и в матрице}
  (********************************************************)
  Var
    i,j: integer;
  Begin
    TextBackground(black);
    {рисуем танки}
    for i:=1 to 3 do
      for j:=1 to 3 do
        P_M(A,10+j,5+i,2,0);
    T1X:=12; {координаты центра танка}
    T1Y:=7;
    for i:=1 to 3 do
      for j:=1 to 3 do
        P_M(A,85+j,15+i,2,0);
    T2X:=87;
    T2Y:=17;
    TextBackground(red);
    {рисуем прицелы}
    P_M(A,12,5,3,0);
    N1:=up;
    P_M(A,85,17,3,0);
    N2:=left;
  End;

  (********************************************************)
  Procedure Movement(Var A:Mas; Dir: Napr; Var N: Napr; Var TX,TY: integer);
  {Процедура передвижения танков
   Nomer - номер танка (1- который с WASD, 2 - который со стрелочками,
   N - направление этого танка,Dir - направление, куда танк должен пойти
   TX,TY - центральные координаты танка}
  (********************************************************)

    Function Check_Move(var A: Mas; TX,TY: integer; Dir,N: Napr): boolean;
    {можем ли мы двинуться
     Dir - куда направление новое,N - старое}

      Function Check(var A: Mas; X,Y: integer): boolean;
      {проверка (от центра танка +-2 в зависимоти от направления,
       так как должен поместиться прицел}
      Begin
        if Dir=N then
          case Dir of
            {проврка на прицел и два ближайших к нему блока танка}
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
    {Процедура сдвига танка}
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
    {Процедура смены направления движения танка
     N - начальное, Dir - конечное}
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
    {циклический свдиг в паузе и в конце игры}
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
  {Процедура для паузы}
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
    shift:=true; {свдиг паузы}
    B[1]:=red;
    B[2]:=white;
    B[3]:=white;
    Smena(B,W,H);
    esc:=false; {выход из паузы}
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
                          {вверх в паузе}
                      80: begin cikl_sdvig(B,false); smena(B,W,H); end;
                          {вниз по паузе}
                    end;
                  end
                else
                  begin
                   case c of
                     'W','w','Ц','ц': begin cikl_sdvig(B,true); smena(B,W,H); end;
                     'S','s','Ы','ы': begin cikl_sdvig(B,false); smena(B,W,H); end;
                   end;
                   if ord(c)=13 then {если нажали enter}
                     begin
                       if B[2]=red then {если на exit to menu}
                         begin
                           endgame:=true;
                           flag:=false;
                         end;
                       if B[3]=red then {если на exit from the game}
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
    {возврат прежней картинки}
    if not endgame then {если мы не вышли}
      begin
        for i:=1 to 30 do
          for j:=1 to 9 do
            begin
              case A[W+i,H+j] of {что находится на этом месте}
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
  {Процедура стрельбы}
  {Me - мои координаты и направление, En - противника}
  (********************************************************)
  Var
    fl,str: boolean;
    x,y: integer; {координаты пули}
    D: integer;
    i,j: integer;

    Procedure Check_Y(var flag,str: boolean; p: integer; var x,y: integer);
    {p - параметр для лево и право}
    Var
      i: integer;
      gr: integer;
    Begin
          i:=Me_X+3*p;
          if p=1 then
            gr:=130
          else
            gr:=0;
          while not flag and (i<>gr) do {просто идем в левую сторону}
            begin
              flag:=(A[i,Me_Y]<>0);
              i:=i+p;
            end;
          i:=i-p; {тут координата пули предпоследняя до столкновения}
          case A[i,Me_Y] of
            1: flag:=false;
            2,3: flag:=true;
          end;
          if Me_X+2*p<>i-p then
            x:=i-p {чтобы чуть правее поставить пулю на поле}
          else
            begin
              if not flag {or (Me_X+4*p=En_X) or (Me_X+5*p=En_X)} then {если впритык к стене стреляем
                                                    или к противнику}
                str:=false;
              x:=i;
            end;
          y:=Me_y;
    End;

    Procedure Check_X(var flag,str: boolean; p: integer; var x,y: integer);
    {p - параметр для лево и право}
    Var
      i: integer;
      gr: integer;
    Begin
          i:=Me_Y+3*p;
          if p=1 then
            gr:=0
          else
            gr:=30;
          while not flag and (i<>gr) do {просто идем в левую сторону}
            begin
              flag:=(A[Me_X,i]<>0);
              i:=i+p;
            end;
          i:=i-p; {тут координата пули предпоследняя до столкновения}
          case A[Me_X,i] of
            1: flag:=false;
            2,3: flag:=true;
          end;
          if Me_Y+2*p<>i-p then
            y:=i-p {чтобы чуть правее поставить пулю на поле}
          else
            begin
              if not flag {or (Me_Y+4*p=En_Y) or (Me_Y+5*p=En_Y)} then
                 {если впритык к стене стреляем или к противнику}
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
  {Процедура конца игры}
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
    shift:=true; {свдиг конца игры}
    B[1]:=red;
    B[2]:=white;
    B[3]:=white;
    Smena(B,W,H);
    esc:=false; {выход из паузы}
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
                          {вверх в паузе}
                      80: begin cikl_sdvig(B,false); smena(B,W,H); end;
                          {вниз по паузе}
                    end;
                  end
                else
                  begin
                   case c of
                     'W','w','Ц','ц': begin cikl_sdvig(B,true); smena(B,W,H); end;
                     'S','s','Ы','ы': begin cikl_sdvig(B,false); smena(B,W,H); end;
                   end;
                   if ord(c)=13 then {если нажали enter}
                     begin
                       if B[1]=red then {если на replay}
                         endgame:=true;
                       if B[2]=red then {если на exit to menu}
                         begin
                           endgame:=true;
                           flag:=false;
                         end;
                       if B[3]=red then {если на exit from the game}
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
    str:=true; {можно ли вообще стрелять}
    case Me_N of
    {в зависимости от того, куда мы стреляем}
      left: Check_Y(fl,str,-1,x,y);
      right: Check_Y(fl,str,1,x,y);
      down: Check_X(fl,str,1,x,y);
      up: Check_X(fl,str,-1,x,y);
    end;
    if str then
    {если в принципе можно стрелять}
      begin
        TextBackground(magenta);
        P_M(A,x,y,4,0);
        if not fl then {если не попали по противнику}
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
            {убираем танки с карты и заново их ставим}
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
              'C','c','С','с': sc1:=sc1+1;
              'M','m','Ь','ь': sc2:=sc2+1;
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
                75: movement(Osn,left,N2,T2X,T2Y); {влево}
                72: movement(Osn,up,N2,T2X,T2Y); {вверх}
                77: movement(Osn,right,N2,T2X,T2Y); {вправо}
                80: movement(Osn,down,N2,T2X,T2Y); {вниз}
              end;
            end
          else
            begin
              case c of
                'A','a','Ф','ф': movement(Osn,left,N1,T1X,T1Y);
                'W','w','Ц','ц': movement(Osn,up,N1,T1X,T1Y);
                'D','d','В','в': movement(Osn,right,N1,T1X,T1Y);
                'S','s','Ы','ы': movement(Osn,down,N1,T1X,T1Y);
                'C','c','С','с': shoot(T1X,T1Y,N1,T2X,T2Y,N2,Osn,sc1,sc2,endgame,sit,flag);
                'M','m','Ь','ь': shoot(T2X,T2Y,N2,T1X,T1Y,N1,Osn,sc1,sc2,endgame,sit,flag);
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
      while flag do {если вышли из меню с нажатой кнопкой играть
                     или потом в игре нажали restart}
        begin
          sit:=true; {так как в процедуре menu изменили sit на false}
          game(sit,flag);
        end;
    end;
End.
