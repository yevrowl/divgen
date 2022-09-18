DefInt A-Z

declare sub number1 ()
declare sub number2 ()
declare sub number3 ()
declare sub number4 ()
declare sub number5 ()
declare sub number6 ()
declare sub number7 ()
declare sub number8 ()
declare sub number9 ()
declare sub number0 ()
declare sub numberA ()
declare sub numberB ()
declare sub numberC ()
declare sub numberD ()
declare sub numberE ()
declare sub numberF ()
declare sub numberG ()
declare sub numberH ()
declare sub numberI ()
declare sub numberJ ()
declare sub letter1 ()
declare sub letter2 ()
declare sub letter3 ()
declare sub letter4 ()
declare sub letter5 ()
declare sub letter6 ()
declare sub letter7 ()
declare sub letter8 ()
declare sub letter9 ()
declare sub letter0 ()
declare sub letterA ()
declare sub letterB ()
declare sub letterC ()
declare sub letterD ()
declare sub letterE ()
declare sub letterF ()
declare sub letterG ()
declare sub letterH ()
declare sub letterI ()
declare sub letterJ ()
declare sub king ()
declare sub queen ()
declare sub bishop ()
declare sub knight ()
declare sub rook ()
declare sub pawn ()
declare sub cannon ()
declare sub lance ()
declare sub general ()
declare sub tokin ()
declare sub dragon ()
declare sub horse ()
declare sub dame ()
declare sub checker ()
declare sub cells ()
declare sub chessboard ()
declare sub makrukboard ()
declare sub xiangqiboard ()
declare sub shogiboard ()
declare sub draughtsboard ()
declare sub chess ()
declare sub makruk ()
declare sub xiangqi ()
declare sub shogi ()
declare sub draughts ()
declare sub message ()

Common Shared x, y, cd1, cd2, cn, ck, cf, cb1, cb2, cb3, cb4, cb5 As Integer
Common Shared dc1x, dc1y, dc2x, dc2y, dc3x, dc3y, dc4x, dc4y, dc5x, dc5y, row, col, index, count As Integer
cd1 = 2: cd2 = 1: cn = 7: ck = 1: cf = 8: cb1 = 7: cb2 = 6: cb3 = 3: cb4 = 13: cb5 = 9

Dim Shared chebo(8, 8) As Integer
index = 100
For row = 1 To 8: For col = 1 To 8
    chebo(row, col) = index + 1
    index = index + 1
Next col: Next row

Dim Shared xiabo(10, 9) As Integer
index = 100
For row = 1 To 10: For col = 1 To 9
    xiabo(row, col) = index + 1
    index = index + 1
Next col: Next row

Dim Shared shobo(9, 9) As Integer
index = 100
For row = 1 To 9: For col = 1 To 9
    shobo(row, col) = index + 1
    index = index + 1
Next col: Next row

Dim Shared drabo(10, 10) As Integer
index = 100
For row = 1 To 10: For col = 1 To 10
    drabo(row, col) = index + 1
    index = index + 1
Next col: index = index + 1: Next row

begin:
Cls
Randomize Timer
Screen 12
Line (2, 2)-(122, 4), 14, BF: Line -(120, 338), 14, BF: Line -(2, 336), 14, BF: Line -(4, 2), 14, BF
Line (4, 42)-(120, 44), 14, BF: Paint (20, 20), 8, 14
Line (128, 2)-(248, 4), 14, BF: Line -(246, 338), 14, BF: Line -(128, 336), 14, BF: Line -(130, 2), 14, BF
Line (130, 42)-(246, 44), 14, BF: Paint (160, 20), 8, 14
Line (254, 2)-(394, 4), 14, BF: Line -(392, 386), 14, BF: Line -(254, 384), 14, BF: Line -(256, 2), 14, BF
Line (256, 42)-(392, 44), 14, BF: Paint (300, 20), 8, 14
Line (400, 2)-(637, 4), 14, BF: Line -(635, 338), 14, BF: Line -(400, 336), 14, BF: Line -(402, 2), 14, BF
Line (402, 42)-(635, 44), 14, BF: Paint (440, 20), 8, 14
Color 14, 8: Locate 2, 4: Print "1 - Chess": Locate 2, 19: Print "2 - Makruk": Locate 2, 36: Print "3 - Xiangqi": Locate 2, 61: Print "4 - Shogi"
Color 12, 0: Locate 23, 52: Print "Press number to select game": Locate 24, 59: Print "or Esc to exit"

Color 11, 0
x = 10: For y = 50 To 300 Step 48
    Call cells
Next y
x = 10: y = 50: Call king
x = 10: y = y + 48: Call queen
x = 10: y = y + 48: Call bishop
x = 10: y = y + 48: Call knight
x = 10: y = y + 48: Call rook
x = 10: y = y + 48: Call pawn
Locate 5, 9: Print "King": Locate 8, 9: Print "Queen"
Locate 11, 9: Print "Bishop": Locate 14, 9: Print "Knight"
Locate 17, 9: Print "Rook": Locate 20, 9: Print "Pawn"
x = 136: For y = 50 To 300 Step 48
    Call cells
Next y
x = 136: y = 50: Call king
x = 136: y = y + 48: Call queen
x = 136: y = y + 48: Call bishop
x = 136: y = y + 48: Call knight
x = 136: y = y + 48: Call rook
x = 136: y = y + 48: Call checker
Locate 5, 25: Print "Lord": Locate 8, 25: Print "Seed"
Locate 11, 25: Print "Noble": Locate 14, 25: Print "Horse"
Locate 17, 25: Print "Boat": Locate 20, 25: Print "Shell"
x = 262: For y = 50 To 350 Step 48
    Call cells
Next y
x = 262: y = 50: Call king
x = 262: y = y + 48: Call queen
x = 262: y = y + 48: Call bishop
x = 262: y = y + 48: Call knight
x = 262: y = y + 48: Call rook
x = 262: y = y + 48: Call cannon
x = 262: y = y + 48: Call pawn
Locate 5, 41: Print "General": Locate 8, 41: Print "Advisor"
Locate 11, 41: Print "Elephant": Locate 14, 41: Print "Horse"
Locate 17, 41: Print "Chariot": Locate 20, 41: Print "Cannon"
Locate 23, 41: Print "Soldier"
x = 408: For y = 50 To 300 Step 48
    Call cells
Next y
x = 528: For y = 50 To 250 Step 48
    Call cells
Next y
x = 408: y = 50: Call king
x = 408: y = y + 48: Call queen
x = 408: y = y + 48: Call general
x = 408: y = y + 48: Call bishop
x = 408: y = y + 48: Call knight
x = 408: y = y + 48: Call rook
x = 528: y = 50: Call lance
x = 528: y = y + 48: Call pawn
x = 528: y = y + 48: Call horse
x = 528: y = y + 48: Call dragon
x = 528: y = y + 48: Call tokin
Locate 5, 59: Print "King": Locate 8, 59: Print "Gold"
Locate 11, 59: Print "Silver": Locate 14, 59: Print "Bishop"
Locate 17, 59: Print "Knight": Locate 20, 59: Print "Rook"
Locate 5, 74: Print "Lance": Locate 8, 74: Print "Pawn"
Locate 11, 74: Print "Horse": Locate 14, 74: Print "Dragon"
Locate 17, 74: Print "Tokin"

Do
    Select Case InKey$
        Case Is = Chr$(49)
            Cls
            Call message
            Call chessboard
            Call chess
            GoTo begin
        Case Is = Chr$(50)
            Cls
            Call message
            Call makrukboard
            Call makruk
            GoTo begin
        Case Is = Chr$(51)
            Cls
            Call message
            Call xiangqiboard
            Call xiangqi
            GoTo begin
        Case Is = Chr$(52)
            Cls
            Call message
            Call shogiboard
            Call shogi
            GoTo begin
        Case Is = Chr$(53)
            Cls
            Call message
            Call draughtsboard
            Call draughts
            GoTo begin
        Case Is = Chr$(27)
            Exit Do
    End Select
Loop
End

Sub number1
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (5 + x, 8 + y)-(6 + x, 1 + y), cn, BF
    Line (4 + x, 2 + y)-(1 + x, 5 + y), cn
    Line (4 + x, 3 + y)-(1 + x, 6 + y), cn
End Sub

Sub number2
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (1 + x, 8 + y)-(2 + x, 7 + y), cn, BF
    Line (10 + x, 4 + y)-(9 + x, 3 + y), cn, BF
End Sub

Sub number3
    Line (2 + x, 2 + y)-(9 + x, 1 + y), cn, BF
    Line (2 + x, 10 + y)-(9 + x, 9 + y), cn, BF
    Line (5 + x, 5 + y)-(9 + x, 6 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 4 + y), cn, BF
    Line (9 + x, 7 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub number4
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 1 + y)-(2 + x, 4 + y), cn, BF
    Line (9 + x, 1 + y)-(10 + x, 10 + y), cn, BF
End Sub

Sub number5
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (10 + x, 8 + y)-(9 + x, 7 + y), cn, BF
    Line (2 + x, 4 + y)-(1 + x, 3 + y), cn, BF
End Sub

Sub number6
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (10 + x, 8 + y)-(9 + x, 7 + y), cn, BF
    Line (1 + x, 8 + y)-(2 + x, 3 + y), cn, BF
End Sub

Sub number7
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (10 + x, 3 + y)-(3 + x, 10 + y), cn
    Line (9 + x, 3 + y)-(2 + x, 10 + y), cn
    Line (8 + x, 3 + y)-(1 + x, 10 + y), cn
End Sub

Sub number8
    Line (2 + x, 2 + y)-(9 + x, 1 + y), cn, BF
    Line (2 + x, 10 + y)-(9 + x, 9 + y), cn, BF
    Line (2 + x, 6 + y)-(9 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(2 + x, 4 + y), cn, BF
    Line (1 + x, 7 + y)-(2 + x, 9 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 4 + y), cn, BF
    Line (9 + x, 7 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub number9
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (10 + x, 8 + y)-(9 + x, 3 + y), cn, BF
    Line (2 + x, 4 + y)-(1 + x, 3 + y), cn, BF
End Sub

Sub number0
    Line (2 + x, 2 + y)-(9 + x, 1 + y), cn, BF
    Line (2 + x, 10 + y)-(9 + x, 9 + y), cn, BF
    Line (1 + x, 2 + y)-(2 + x, 9 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub numberA
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(2 + x, 10 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 10 + y), cn, BF
    Line (2 + x, 2 + y)-(9 + x, 1 + y), cn, BF
End Sub

Sub numberB
    Line (1 + x, 1 + y)-(2 + x, 10 + y), cn, BF
    Line (1 + x, 10 + y)-(9 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(9 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(9 + x, 1 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 4 + y), cn, BF
    Line (9 + x, 7 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub numberC
    Line (1 + x, 2 + y)-(2 + x, 9 + y), cn, BF
    Line (2 + x, 1 + y)-(10 + x, 2 + y), cn, BF
    Line (2 + x, 10 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub numberD
    Line (2 + x, 2 + y)-(9 + x, 1 + y), cn, BF
    Line (2 + x, 10 + y)-(9 + x, 9 + y), cn, BF
    Line (1 + x, 1 + y)-(2 + x, 10 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub numberE
    Line (1 + x, 1 + y)-(2 + x, 10 + y), cn, BF
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(6 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
End Sub

Sub numberF
    Line (1 + x, 1 + y)-(2 + x, 10 + y), cn, BF
    Line (1 + x, 6 + y)-(6 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
End Sub

Sub numberG
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (8 + x, 6 + y)-(6 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (10 + x, 8 + y)-(9 + x, 5 + y), cn, BF
    Line (1 + x, 8 + y)-(2 + x, 3 + y), cn, BF
End Sub

Sub numberH
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 1 + y)-(2 + x, 10 + y), cn, BF
    Line (9 + x, 1 + y)-(10 + x, 10 + y), cn, BF
End Sub

Sub numberI
    Line (3 + x, 2 + y)-(8 + x, 1 + y), cn, BF
    Line (3 + x, 10 + y)-(8 + x, 9 + y), cn, BF
    Line (5 + x, 3 + y)-(6 + x, 8 + y), cn, BF
End Sub

Sub numberJ
    Line (1 + x, 6 + y)-(2 + x, 9 + y), cn, BF
    Line (9 + x, 1 + y)-(10 + x, 9 + y), cn, BF
    Line (2 + x, 9 + y)-(9 + x, 10 + y), cn, BF
End Sub

Sub letter1
    Line (4 + x, 36 + y)-(36 + x, 32 + y), ck, BF
    Line (18 + x, 31 + y)-(22 + x, 4 + y), ck, BF
    Line (17 + x, 4 + y)-(4 + x, 17 + y), ck
    Line (17 + x, 5 + y)-(5 + x, 17 + y), ck
    Line (17 + x, 6 + y)-(6 + x, 17 + y), ck
    Line (17 + x, 7 + y)-(7 + x, 17 + y), ck
End Sub

Sub letter2
    Line (4 + x, 4 + y)-(36 + x, 8 + y), ck, BF
    Line (4 + x, 18 + y)-(36 + x, 22 + y), ck, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), ck, BF
    Line (32 + x, 9 + y)-(36 + x, 17 + y), ck, BF
    Line (4 + x, 23 + y)-(8 + x, 31 + y), ck, BF
End Sub

Sub letter3
    Line (4 + x, 4 + y)-(34 + x, 8 + y), ck, BF
    Line (4 + x, 36 + y)-(34 + x, 32 + y), ck, BF
    Line (36 + x, 23 + y)-(32 + x, 34 + y), ck, BF
    Line (32 + x, 6 + y)-(36 + x, 17 + y), ck, BF
    Line (18 + x, 18 + y)-(34 + x, 22 + y), ck, BF
    Line (30 + x, 17 + y)-(31 + x, 17 + y), ck
    Line (30 + x, 23 + y)-(31 + x, 23 + y), ck
    Line (30 + x, 9 + y)-(31 + x, 9 + y), ck
    Line (30 + x, 31 + y)-(31 + x, 31 + y), ck
    PSet (31 + x, 10 + y), ck: PSet (31 + x, 30 + y), ck
    PSet (31 + x, 16 + y), ck: PSet (31 + x, 24 + y), ck
    PSet (35 + x, 18 + y), ck: PSet (35 + x, 22 + y), ck
    PSet (35 + x, 5 + y), ck: PSet (35 + x, 35 + y), ck
End Sub

Sub letter4
    Line (4 + x, 4 + y)-(8 + x, 17 + y), ck, BF
    Line (32 + x, 4 + y)-(36 + x, 36 + y), ck, BF
    Line (4 + x, 18 + y)-(34 + x, 22 + y), ck, BF
End Sub

Sub letter5
    Line (4 + x, 4 + y)-(36 + x, 8 + y), ck, BF
    Line (4 + x, 18 + y)-(36 + x, 22 + y), ck, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), ck, BF
    Line (4 + x, 9 + y)-(8 + x, 17 + y), ck, BF
    Line (32 + x, 23 + y)-(36 + x, 31 + y), ck, BF
End Sub

Sub letter6
    Line (4 + x, 4 + y)-(36 + x, 8 + y), ck, BF
    Line (4 + x, 18 + y)-(36 + x, 22 + y), ck, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), ck, BF
    Line (4 + x, 9 + y)-(8 + x, 31 + y), ck, BF
    Line (32 + x, 23 + y)-(36 + x, 31 + y), ck, BF
End Sub

Sub letter7
    Line (4 + x, 4 + y)-(36 + x, 8 + y), ck, BF
    Line (8 + x, 36 + y)-(35 + x, 9 + y), ck
    Line (7 + x, 36 + y)-(34 + x, 9 + y), ck
    Line (6 + x, 36 + y)-(33 + x, 9 + y), ck
    Line (5 + x, 36 + y)-(32 + x, 9 + y), ck
End Sub

Sub letter8
    Line (8 + x, 23 + y)-(4 + x, 34 + y), ck, BF
    Line (4 + x, 6 + y)-(8 + x, 17 + y), ck, BF
    Line (6 + x, 4 + y)-(34 + x, 8 + y), ck, BF
    Line (6 + x, 36 + y)-(34 + x, 32 + y), ck, BF
    Line (36 + x, 23 + y)-(32 + x, 34 + y), ck, BF
    Line (32 + x, 6 + y)-(36 + x, 17 + y), ck, BF
    Line (6 + x, 18 + y)-(34 + x, 22 + y), ck, BF
    Line (30 + x, 17 + y)-(31 + x, 17 + y), ck
    Line (30 + x, 23 + y)-(31 + x, 23 + y), ck
    Line (10 + x, 17 + y)-(9 + x, 17 + y), ck
    Line (10 + x, 23 + y)-(9 + x, 23 + y), ck
    Line (9 + x, 31 + y)-(10 + x, 31 + y), ck
    Line (30 + x, 31 + y)-(31 + x, 31 + y), ck
    Line (9 + x, 9 + y)-(10 + x, 9 + y), ck
    Line (30 + x, 9 + y)-(31 + x, 9 + y), ck
    PSet (35 + x, 5 + y), ck: PSet (35 + x, 35 + y), ck
    PSet (5 + x, 5 + y), ck: PSet (5 + x, 35 + y), ck
    PSet (9 + x, 30 + y), ck: PSet (31 + x, 30 + y), ck
    PSet (9 + x, 10 + y), ck: PSet (31 + x, 10 + y), ck
    PSet (5 + x, 18 + y), ck: PSet (5 + x, 22 + y), ck
    PSet (9 + x, 16 + y), ck: PSet (9 + x, 24 + y), ck
    PSet (31 + x, 16 + y), ck: PSet (31 + x, 24 + y), ck
    PSet (35 + x, 18 + y), ck: PSet (35 + x, 22 + y), ck
End Sub

Sub letter9
    Line (4 + x, 4 + y)-(36 + x, 8 + y), ck, BF
    Line (4 + x, 18 + y)-(36 + x, 22 + y), ck, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), ck, BF
    Line (32 + x, 9 + y)-(36 + x, 31 + y), ck, BF
End Sub

Sub letter0
    Line (6 + x, 4 + y)-(34 + x, 8 + y), ck, BF
    Line (6 + x, 36 + y)-(34 + x, 32 + y), ck, BF
    Line (4 + x, 6 + y)-(8 + x, 34 + y), ck, BF
    Line (36 + x, 6 + y)-(32 + x, 34 + y), ck, BF
    Line (9 + x, 9 + y)-(10 + x, 9 + y), ck
    Line (30 + x, 9 + y)-(31 + x, 9 + y), ck
    Line (9 + x, 31 + y)-(10 + x, 31 + y), ck
    Line (30 + x, 31 + y)-(31 + x, 31 + y), ck
    Line (9 + x, 9 + y)-(10 + x, 9 + y), ck
    Line (30 + x, 9 + y)-(31 + x, 9 + y), ck
    PSet (35 + x, 5 + y), ck: PSet (35 + x, 35 + y), ck
    PSet (5 + x, 5 + y), ck: PSet (5 + x, 35 + y), ck
    PSet (9 + x, 30 + y), ck: PSet (31 + x, 30 + y), ck
    PSet (9 + x, 10 + y), ck: PSet (31 + x, 10 + y), ck
End Sub

Sub letterA
    Line (4 + x, 6 + y)-(8 + x, 36 + y), ck, BF
    Line (32 + x, 6 + y)-(36 + x, 36 + y), ck, BF
    Line (4 + x, 18 + y)-(34 + x, 22 + y), ck, BF
    Line (6 + x, 4 + y)-(34 + x, 8 + y), ck, BF
    Line (30 + x, 9 + y)-(31 + x, 9 + y), ck
    Line (9 + x, 9 + y)-(10 + x, 9 + y), ck
    PSet (9 + x, 10 + y), ck: PSet (31 + x, 10 + y), ck
    PSet (5 + x, 5 + y), ck: PSet (35 + x, 5 + y), ck
End Sub

Sub letterB
    Line (4 + x, 9 + y)-(8 + x, 31 + y), ck, BF
    Line (4 + x, 4 + y)-(34 + x, 8 + y), ck, BF
    Line (4 + x, 36 + y)-(34 + x, 32 + y), ck, BF
    Line (36 + x, 23 + y)-(32 + x, 34 + y), ck, BF
    Line (32 + x, 6 + y)-(36 + x, 17 + y), ck, BF
    Line (9 + x, 18 + y)-(34 + x, 22 + y), ck, BF
    Line (30 + x, 17 + y)-(31 + x, 17 + y), ck
    Line (30 + x, 23 + y)-(31 + x, 23 + y), ck
    Line (30 + x, 9 + y)-(31 + x, 9 + y), ck
    Line (30 + x, 31 + y)-(31 + x, 31 + y), ck
    PSet (31 + x, 10 + y), ck: PSet (31 + x, 30 + y), ck
    PSet (31 + x, 16 + y), ck: PSet (31 + x, 24 + y), ck
    PSet (35 + x, 18 + y), ck: PSet (35 + x, 22 + y), ck
    PSet (35 + x, 5 + y), ck: PSet (35 + x, 35 + y), ck
End Sub

Sub letterC
    Line (6 + x, 4 + y)-(36 + x, 8 + y), ck, BF
    Line (6 + x, 36 + y)-(36 + x, 32 + y), ck, BF
    Line (4 + x, 6 + y)-(8 + x, 34 + y), ck, BF
    Line (9 + x, 9 + y)-(10 + x, 9 + y), ck
    Line (9 + x, 31 + y)-(10 + x, 31 + y), ck
    PSet (9 + x, 10 + y), ck: PSet (9 + x, 30 + y), ck
    PSet (5 + x, 5 + y), ck: PSet (5 + x, 35 + y), ck
End Sub

Sub letterD
    Line (4 + x, 4 + y)-(34 + x, 8 + y), ck, BF
    Line (4 + x, 36 + y)-(34 + x, 32 + y), ck, BF
    Line (4 + x, 4 + y)-(8 + x, 36 + y), ck, BF
    Line (32 + x, 6 + y)-(36 + x, 34 + y), ck, BF
    Line (30 + x, 9 + y)-(31 + x, 9 + y), ck
    Line (30 + x, 31 + y)-(31 + x, 31 + y), ck
    PSet (31 + x, 10 + y), ck: PSet (31 + x, 30 + y), ck
    PSet (35 + x, 5 + y), ck: PSet (35 + x, 35 + y), ck
End Sub

Sub letterE
    Line (4 + x, 4 + y)-(36 + x, 8 + y), ck, BF
    Line (4 + x, 18 + y)-(22 + x, 22 + y), ck, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), ck, BF
    Line (4 + x, 4 + y)-(8 + x, 36 + y), ck, BF
End Sub

Sub letterF
    Line (4 + x, 4 + y)-(36 + x, 8 + y), ck, BF
    Line (4 + x, 18 + y)-(22 + x, 22 + y), ck, BF
    Line (4 + x, 4 + y)-(8 + x, 36 + y), ck, BF
End Sub

Sub letterG
    Line (4 + x, 4 + y)-(36 + x, 8 + y), ck, BF
    Line (20 + x, 18 + y)-(36 + x, 22 + y), ck, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), ck, BF
    Line (4 + x, 9 + y)-(8 + x, 31 + y), ck, BF
    Line (32 + x, 23 + y)-(36 + x, 31 + y), ck, BF
End Sub

Sub letterH
    Line (4 + x, 4 + y)-(8 + x, 36 + y), ck, BF
    Line (32 + x, 4 + y)-(36 + x, 36 + y), ck, BF
    Line (4 + x, 18 + y)-(34 + x, 22 + y), ck, BF
End Sub

Sub letterI
    Line (8 + x, 36 + y)-(32 + x, 32 + y), ck, BF
    Line (18 + x, 31 + y)-(22 + x, 9 + y), ck, BF
    Line (8 + x, 8 + y)-(32 + x, 3 + y), ck, BF
End Sub

Sub letterJ
    Line (6 + x, 36 + y)-(34 + x, 32 + y), ck, BF
    Line (32 + x, 4 + y)-(36 + x, 34 + y), ck, BF
    Line (4 + x, 18 + y)-(8 + x, 34 + y), ck, BF
    Line (9 + x, 31 + y)-(10 + x, 31 + y), ck
    Line (30 + x, 31 + y)-(31 + x, 31 + y), ck
    PSet (9 + x, 30 + y), ck: PSet (31 + x, 30 + y), ck
    PSet (5 + x, 35 + y), ck: PSet (35 + x, 35 + y), ck
End Sub

Sub king
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (12 + x, 31 + y)-(28 + x, 31 + y), cf
    Line (13 + x, 30 + y)-(27 + x, 30 + y), cf
    Line (14 + x, 29 + y)-(26 + x, 29 + y), cf
    Line (15 + x, 28 + y)-(25 + x, 28 + y), cf
    Line (16 + x, 27 + y)-(24 + x, 10 + y), cf, BF
    Line (15 + x, 24 + y)-(25 + x, 24 + y), cf
    Line (14 + x, 23 + y)-(26 + x, 23 + y), cf
    Line (13 + x, 22 + y)-(27 + x, 22 + y), cf
    Line (12 + x, 21 + y)-(28 + x, 21 + y), cf
    Line (11 + x, 20 + y)-(29 + x, 20 + y), cf
    Line (10 + x, 19 + y)-(30 + x, 19 + y), cf
    Line (9 + x, 18 + y)-(31 + x, 18 + y), cf
    Line (8 + x, 17 + y)-(32 + x, 17 + y), cf
    Line (7 + x, 16 + y)-(33 + x, 16 + y), cf
    Line (6 + x, 15 + y)-(34 + x, 15 + y), cf
    Line (5 + x, 14 + y)-(35 + x, 14 + y), cf
    Line (4 + x, 13 + y)-(36 + x, 12 + y), cf, BF
    Line (4 + x, 11 + y)-(14 + x, 10 + y), cf, BF
    Line (5 + x, 9 + y)-(13 + x, 9 + y), cf
    Line (6 + x, 8 + y)-(12 + x, 8 + y), cf
    Line (7 + x, 7 + y)-(11 + x, 7 + y), cf
    Line (26 + x, 11 + y)-(36 + x, 10 + y), cf, BF
    Line (27 + x, 9 + y)-(35 + x, 9 + y), cf
    Line (28 + x, 8 + y)-(34 + x, 8 + y), cf
    Line (29 + x, 7 + y)-(33 + x, 7 + y), cf
    Line (17 + x, 9 + y)-(23 + x, 8 + y), cf, BF
    Line (18 + x, 7 + y)-(22 + x, 6 + y), cf, BF
    Line (19 + x, 5 + y)-(21 + x, 4 + y), cf, BF
End Sub

Sub queen
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 14 + y), cf, BF
    Line (11 + x, 24 + y)-(29 + x, 24 + y), cf
    Line (10 + x, 23 + y)-(30 + x, 23 + y), cf
    Line (9 + x, 22 + y)-(31 + x, 22 + y), cf
    Line (8 + x, 21 + y)-(32 + x, 21 + y), cf
    Line (7 + x, 20 + y)-(33 + x, 20 + y), cf
    Line (6 + x, 19 + y)-(34 + x, 18 + y), cf, BF
    Line (6 + x, 17 + y)-(7 + x, 10 + y), cf, BF
    Line (5 + x, 11 + y)-(8 + x, 14 + y), cf, BF
    Line (4 + x, 12 + y)-(9 + x, 13 + y), cf, BF
    Line (34 + x, 17 + y)-(33 + x, 10 + y), cf, BF
    Line (35 + x, 11 + y)-(32 + x, 14 + y), cf, BF
    Line (36 + x, 12 + y)-(31 + x, 13 + y), cf, BF
    Line (12 + x, 13 + y)-(13 + x, 6 + y), cf, BF
    Line (11 + x, 7 + y)-(14 + x, 10 + y), cf, BF
    Line (10 + x, 8 + y)-(15 + x, 9 + y), cf, BF
    Line (27 + x, 13 + y)-(28 + x, 6 + y), cf, BF
    Line (26 + x, 7 + y)-(29 + x, 10 + y), cf, BF
    Line (25 + x, 8 + y)-(30 + x, 9 + y), cf, BF
    Line (19 + x, 13 + y)-(21 + x, 4 + y), cf, BF
    Line (18 + x, 5 + y)-(22 + x, 8 + y), cf, BF
    Line (17 + x, 6 + y)-(23 + x, 7 + y), cf, BF
End Sub

Sub bishop
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (18 + x, 31 + y)-(22 + x, 6 + y), cf, BF
    Line (19 + x, 5 + y)-(21 + x, 4 + y), cf, BF
    Line (12 + x, 31 + y)-(28 + x, 31 + y), cf
    Line (13 + x, 30 + y)-(27 + x, 30 + y), cf
    Line (14 + x, 29 + y)-(26 + x, 29 + y), cf
    Line (15 + x, 28 + y)-(25 + x, 28 + y), cf
    Line (16 + x, 27 + y)-(24 + x, 27 + y), cf
    Line (17 + x, 26 + y)-(23 + x, 26 + y), cf
    Line (17 + x, 21 + y)-(23 + x, 8 + y), cf, BF
    Line (16 + x, 19 + y)-(24 + x, 10 + y), cf, BF
    Line (15 + x, 17 + y)-(25 + x, 12 + y), cf, BF
    Line (14 + x, 15 + y)-(26 + x, 14 + y), cf, BF
End Sub

Sub knight
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (12 + x, 31 + y)-(28 + x, 31 + y), cf
    Line (13 + x, 30 + y)-(29 + x, 30 + y), cf
    Line (14 + x, 29 + y)-(30 + x, 29 + y), cf
    Line (15 + x, 28 + y)-(31 + x, 28 + y), cf
    Line (16 + x, 27 + y)-(32 + x, 27 + y), cf
    Line (17 + x, 26 + y)-(33 + x, 26 + y), cf
    Line (18 + x, 25 + y)-(34 + x, 25 + y), cf
    Line (19 + x, 24 + y)-(35 + x, 24 + y), cf
    Line (20 + x, 23 + y)-(36 + x, 18 + y), cf, BF
    Line (4 + x, 17 + y)-(35 + x, 17 + y), cf
    Line (4 + x, 16 + y)-(34 + x, 16 + y), cf
    Line (5 + x, 15 + y)-(33 + x, 15 + y), cf
    Line (6 + x, 14 + y)-(32 + x, 14 + y), cf
    Line (7 + x, 13 + y)-(31 + x, 13 + y), cf
    Line (8 + x, 12 + y)-(30 + x, 12 + y), cf
    Line (9 + x, 11 + y)-(29 + x, 11 + y), cf
    Line (10 + x, 10 + y)-(28 + x, 10 + y), cf
    Line (11 + x, 9 + y)-(27 + x, 9 + y), cf
    Line (12 + x, 8 + y)-(26 + x, 8 + y), cf
    Line (13 + x, 7 + y)-(25 + x, 7 + y), cf
    Line (14 + x, 6 + y)-(24 + x, 6 + y), cf
    Line (15 + x, 5 + y)-(23 + x, 5 + y), cf
    Line (16 + x, 4 + y)-(22 + x, 4 + y), cf
End Sub

Sub rook
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (4 + x, 4 + y)-(8 + x, 12 + y), cf, BF
    Line (13 + x, 4 + y)-(17 + x, 12 + y), cf, BF
    Line (23 + x, 4 + y)-(27 + x, 12 + y), cf, BF
    Line (32 + x, 4 + y)-(36 + x, 12 + y), cf, BF
    Line (4 + x, 12 + y)-(36 + x, 16 + y), cf, BF
    Line (12 + x, 16 + y)-(28 + x, 32 + y), cf, BF
    Line (9 + x, 16 + y)-(11 + x, 16 + y), cf
    Line (29 + x, 16 + y)-(31 + x, 16 + y), cf
    Line (10 + x, 17 + y)-(11 + x, 17 + y), cf
    Line (29 + x, 17 + y)-(30 + x, 17 + y), cf
    PSet (11 + x, 18 + y), cf: PSet (29 + x, 18 + y), cf
    Line (9 + x, 31 + y)-(11 + x, 31 + y), cf
    Line (29 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(11 + x, 30 + y), cf
    Line (29 + x, 30 + y)-(30 + x, 30 + y), cf
    PSet (11 + x, 29 + y), cf: PSet (29 + x, 29 + y), cf
End Sub

Sub pawn
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (18 + x, 32 + y)-(22 + x, 4 + y), cf, BF
    Line (12 + x, 9 + y)-(28 + x, 14 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 28 + y), cf
    Line (13 + x, 27 + y)-(27 + x, 27 + y), cf
    Line (14 + x, 26 + y)-(26 + x, 26 + y), cf
    Line (15 + x, 25 + y)-(25 + x, 25 + y), cf
    Line (16 + x, 24 + y)-(24 + x, 24 + y), cf
    Line (17 + x, 23 + y)-(23 + x, 23 + y), cf
    Line (17 + x, 19 + y)-(23 + x, 19 + y), cf
    Line (16 + x, 18 + y)-(24 + x, 18 + y), cf
    Line (15 + x, 17 + y)-(25 + x, 17 + y), cf
    Line (14 + x, 16 + y)-(26 + x, 16 + y), cf
    Line (13 + x, 15 + y)-(27 + x, 15 + y), cf
    Line (13 + x, 8 + y)-(27 + x, 8 + y), cf
    Line (14 + x, 7 + y)-(26 + x, 7 + y), cf
    Line (15 + x, 6 + y)-(25 + x, 6 + y), cf
    Line (16 + x, 5 + y)-(24 + x, 5 + y), cf
    Line (17 + x, 4 + y)-(23 + x, 4 + y), cf
End Sub

Sub cannon
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 28 + y), cf
    Line (13 + x, 27 + y)-(27 + x, 27 + y), cf
    Line (14 + x, 26 + y)-(26 + x, 26 + y), cf
    Line (15 + x, 25 + y)-(25 + x, 25 + y), cf
    Line (16 + x, 24 + y)-(24 + x, 4 + y), cf, BF
    Line (6 + x, 9 + y)-(36 + x, 12 + y), cf, BF
    Line (4 + x, 10 + y)-(6 + x, 11 + y), cf, BF
    Line (14 + x, 16 + y)-(25 + x, 16 + y), cf
    Line (12 + x, 15 + y)-(26 + x, 15 + y), cf
    Line (10 + x, 14 + y)-(27 + x, 14 + y), cf
    Line (8 + x, 13 + y)-(28 + x, 13 + y), cf
    Line (8 + x, 8 + y)-(28 + x, 8 + y), cf
    Line (10 + x, 7 + y)-(27 + x, 7 + y), cf
    Line (12 + x, 6 + y)-(26 + x, 6 + y), cf
    Line (14 + x, 5 + y)-(25 + x, 5 + y), cf
    Line (16 + x, 4 + y)-(24 + x, 4 + y), cf
End Sub

Sub general
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 28 + y), cf
    Line (13 + x, 27 + y)-(27 + x, 27 + y), cf
    Line (14 + x, 26 + y)-(26 + x, 26 + y), cf
    Line (13 + x, 25 + y)-(27 + x, 22 + y), cf, BF
    Line (16 + x, 21 + y)-(24 + x, 20 + y), cf, BF
    Line (18 + x, 19 + y)-(22 + x, 12 + y), cf, BF
    Line (19 + x, 11 + y)-(21 + x, 4 + y), cf, BF
    Line (18 + x, 10 + y)-(22 + x, 5 + y), cf, BF
    Line (17 + x, 9 + y)-(23 + x, 6 + y), cf, BF
    Line (16 + x, 8 + y)-(24 + x, 7 + y), cf, BF
    Line (15 + x, 20 + y)-(16 + x, 19 + y), cf, BF
    Line (14 + x, 19 + y)-(15 + x, 18 + y), cf, BF
    Line (13 + x, 18 + y)-(14 + x, 17 + y), cf, BF
    Line (24 + x, 20 + y)-(25 + x, 19 + y), cf, BF
    Line (25 + x, 19 + y)-(26 + x, 18 + y), cf, BF
    Line (26 + x, 18 + y)-(27 + x, 17 + y), cf, BF
    Line (11 + x, 18 + y)-(12 + x, 11 + y), cf, BF
    Line (10 + x, 17 + y)-(13 + x, 12 + y), cf, BF
    Line (9 + x, 16 + y)-(14 + x, 13 + y), cf, BF
    Line (8 + x, 15 + y)-(15 + x, 14 + y), cf, BF
    Line (28 + x, 18 + y)-(29 + x, 11 + y), cf, BF
    Line (27 + x, 17 + y)-(30 + x, 12 + y), cf, BF
    Line (26 + x, 16 + y)-(31 + x, 13 + y), cf, BF
    Line (25 + x, 15 + y)-(32 + x, 14 + y), cf, BF
    Line (4 + x, 24 + y)-(36 + x, 23 + y), cf, BF
    Line (29 + x, 25 + y)-(35 + x, 22 + y), cf, BF
    Line (30 + x, 26 + y)-(34 + x, 21 + y), cf, BF
    Line (31 + x, 27 + y)-(33 + x, 20 + y), cf, BF
    Line (5 + x, 25 + y)-(11 + x, 22 + y), cf, BF
    Line (6 + x, 26 + y)-(10 + x, 21 + y), cf, BF
    Line (7 + x, 27 + y)-(9 + x, 20 + y), cf, BF
End Sub

Sub tokin
    Line (10 + x, 10 + y)-(30 + x, 30 + y), cf, BF
    Line (4 + x, 4 + y)-(5 + x, 5 + y), cf, BF
    Line (5 + x, 5 + y)-(7 + x, 7 + y), cf, BF
    Line (6 + x, 6 + y)-(9 + x, 9 + y), cf, BF
    Line (7 + x, 7 + y)-(11 + x, 11 + y), cf, BF
    Line (8 + x, 8 + y)-(12 + x, 12 + y), cf, BF
    Line (36 + x, 4 + y)-(35 + x, 5 + y), cf, BF
    Line (35 + x, 5 + y)-(33 + x, 7 + y), cf, BF
    Line (34 + x, 6 + y)-(31 + x, 9 + y), cf, BF
    Line (33 + x, 7 + y)-(29 + x, 11 + y), cf, BF
    Line (32 + x, 8 + y)-(28 + x, 12 + y), cf, BF
    Line (36 + x, 36 + y)-(35 + x, 35 + y), cf, BF
    Line (35 + x, 35 + y)-(33 + x, 33 + y), cf, BF
    Line (34 + x, 34 + y)-(31 + x, 31 + y), cf, BF
    Line (33 + x, 33 + y)-(29 + x, 29 + y), cf, BF
    Line (32 + x, 32 + y)-(28 + x, 28 + y), cf, BF
    Line (4 + x, 36 + y)-(5 + x, 35 + y), cf, BF
    Line (5 + x, 35 + y)-(7 + x, 33 + y), cf, BF
    Line (6 + x, 34 + y)-(9 + x, 31 + y), cf, BF
    Line (7 + x, 33 + y)-(11 + x, 29 + y), cf, BF
    Line (8 + x, 32 + y)-(12 + x, 28 + y), cf, BF
    Line (17 + x, 9 + y)-(23 + x, 8 + y), cf, BF
    Line (18 + x, 7 + y)-(22 + x, 6 + y), cf, BF
    Line (19 + x, 5 + y)-(21 + x, 4 + y), cf, BF
    Line (17 + x, 31 + y)-(23 + x, 32 + y), cf, BF
    Line (18 + x, 33 + y)-(22 + x, 34 + y), cf, BF
    Line (19 + x, 35 + y)-(21 + x, 36 + y), cf, BF
    Line (8 + x, 17 + y)-(9 + x, 23 + y), cf, BF
    Line (6 + x, 18 + y)-(7 + x, 22 + y), cf, BF
    Line (4 + x, 19 + y)-(5 + x, 21 + y), cf, BF
    Line (32 + x, 17 + y)-(31 + x, 23 + y), cf, BF
    Line (34 + x, 18 + y)-(33 + x, 22 + y), cf, BF
    Line (36 + x, 19 + y)-(35 + x, 21 + y), cf, BF
End Sub

Sub lance
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 28 + y), cf
    Line (13 + x, 27 + y)-(27 + x, 27 + y), cf
    Line (14 + x, 26 + y)-(26 + x, 24 + y), cf, BF
    Line (15 + x, 23 + y)-(25 + x, 20 + y), cf, BF
    Line (16 + x, 19 + y)-(24 + x, 16 + y), cf, BF
    Line (17 + x, 15 + y)-(23 + x, 12 + y), cf, BF
    Line (18 + x, 11 + y)-(22 + x, 8 + y), cf, BF
    Line (19 + x, 7 + y)-(21 + x, 4 + y), cf, BF
End Sub

Sub dragon
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 28 + y), cf
    Line (13 + x, 27 + y)-(27 + x, 27 + y), cf
    Line (14 + x, 26 + y)-(26 + x, 26 + y), cf
    Line (15 + x, 25 + y)-(25 + x, 25 + y), cf
    Line (15 + x, 20 + y)-(25 + x, 20 + y), cf
    Line (14 + x, 19 + y)-(26 + x, 19 + y), cf
    Line (13 + x, 18 + y)-(27 + x, 18 + y), cf
    Line (16 + x, 24 + y)-(24 + x, 8 + y), cf, BF
    Line (17 + x, 7 + y)-(23 + x, 6 + y), cf, BF
    Line (18 + x, 5 + y)-(22 + x, 5 + y), cf
    Line (19 + x, 4 + y)-(21 + x, 4 + y), cf
    Line (9 + x, 12 + y)-(31 + x, 17 + y), cf, BF
    Line (10 + x, 11 + y)-(13 + x, 11 + y), cf
    Line (11 + x, 10 + y)-(12 + x, 10 + y), cf
    Line (27 + x, 11 + y)-(30 + x, 11 + y), cf
    Line (28 + x, 10 + y)-(29 + x, 10 + y), cf
    Line (10 + x, 11 + y)-(10 + x, 18 + y), cf
    Line (9 + x, 12 + y)-(9 + x, 19 + y), cf
    Line (8 + x, 13 + y)-(8 + x, 20 + y), cf
    Line (7 + x, 14 + y)-(7 + x, 21 + y), cf
    Line (6 + x, 15 + y)-(6 + x, 22 + y), cf
    Line (5 + x, 16 + y)-(5 + x, 23 + y), cf
    Line (4 + x, 17 + y)-(4 + x, 24 + y), cf
    Line (30 + x, 11 + y)-(30 + x, 18 + y), cf
    Line (31 + x, 12 + y)-(31 + x, 19 + y), cf
    Line (32 + x, 13 + y)-(32 + x, 20 + y), cf
    Line (33 + x, 14 + y)-(33 + x, 21 + y), cf
    Line (34 + x, 15 + y)-(34 + x, 22 + y), cf
    Line (35 + x, 16 + y)-(35 + x, 23 + y), cf
    Line (36 + x, 17 + y)-(36 + x, 24 + y), cf
End Sub

Sub horse
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (10 + x, 31 + y)-(11 + x, 26 + y), cf, BF
    Line (16 + x, 31 + y)-(17 + x, 26 + y), cf, BF
    Line (23 + x, 31 + y)-(24 + x, 26 + y), cf, BF
    Line (29 + x, 31 + y)-(30 + x, 26 + y), cf, BF
    Line (8 + x, 25 + y)-(32 + x, 14 + y), cf, BF
    Line (7 + x, 24 + y)-(7 + x, 15 + y), cf
    Line (6 + x, 23 + y)-(6 + x, 16 + y), cf
    Line (5 + x, 22 + y)-(5 + x, 17 + y), cf
    Line (4 + x, 21 + y)-(4 + x, 18 + y), cf
    Line (33 + x, 24 + y)-(33 + x, 15 + y), cf
    Line (34 + x, 23 + y)-(34 + x, 16 + y), cf
    Line (35 + x, 22 + y)-(35 + x, 17 + y), cf
    Line (36 + x, 21 + y)-(36 + x, 18 + y), cf
    Line (14 + x, 13 + y)-(26 + x, 10 + y), cf, BF
    Line (10 + x, 9 + y)-(30 + x, 7 + y), cf, BF
    Line (10 + x, 6 + y)-(13 + x, 6 + y), cf
    Line (10 + x, 5 + y)-(12 + x, 5 + y), cf
    Line (10 + x, 4 + y)-(11 + x, 4 + y), cf
    Line (30 + x, 6 + y)-(27 + x, 6 + y), cf
    Line (30 + x, 5 + y)-(28 + x, 5 + y), cf
    Line (30 + x, 4 + y)-(29 + x, 4 + y), cf
    Line (16 + x, 6 + y)-(24 + x, 6 + y), cf
    Line (17 + x, 5 + y)-(23 + x, 5 + y), cf
    Line (18 + x, 4 + y)-(22 + x, 4 + y), cf
End Sub

Sub dame
    Line (14 + x, 36 + y)-(26 + x, 28 + y), cf, BF
    Line (14 + x, 4 + y)-(26 + x, 12 + y), cf, BF
    Line (4 + x, 14 + y)-(12 + x, 26 + y), cf, BF
    Line (28 + x, 14 + y)-(36 + x, 26 + y), cf, BF
    Line (17 + x, 36 + y)-(17 + x, 27 + y), cf
    Line (16 + x, 36 + y)-(16 + x, 26 + y), cf
    Line (15 + x, 36 + y)-(15 + x, 25 + y), cf
    Line (14 + x, 36 + y)-(14 + x, 24 + y), cf
    Line (13 + x, 35 + y)-(13 + x, 23 + y), cf
    Line (12 + x, 34 + y)-(12 + x, 22 + y), cf
    Line (23 + x, 36 + y)-(23 + x, 27 + y), cf
    Line (24 + x, 36 + y)-(24 + x, 26 + y), cf
    Line (25 + x, 36 + y)-(25 + x, 25 + y), cf
    Line (26 + x, 36 + y)-(26 + x, 24 + y), cf
    Line (27 + x, 35 + y)-(27 + x, 23 + y), cf
    Line (28 + x, 34 + y)-(28 + x, 22 + y), cf
    Line (17 + x, 4 + y)-(17 + x, 13 + y), cf
    Line (16 + x, 4 + y)-(16 + x, 14 + y), cf
    Line (15 + x, 4 + y)-(15 + x, 15 + y), cf
    Line (14 + x, 4 + y)-(14 + x, 16 + y), cf
    Line (13 + x, 5 + y)-(13 + x, 17 + y), cf
    Line (12 + x, 6 + y)-(12 + x, 18 + y), cf
    Line (23 + x, 4 + y)-(23 + x, 13 + y), cf
    Line (24 + x, 4 + y)-(24 + x, 14 + y), cf
    Line (25 + x, 4 + y)-(25 + x, 15 + y), cf
    Line (26 + x, 4 + y)-(26 + x, 16 + y), cf
    Line (27 + x, 5 + y)-(27 + x, 17 + y), cf
    Line (28 + x, 6 + y)-(28 + x, 18 + y), cf
    Line (5 + x, 13 + y)-(5 + x, 27 + y), cf
    Line (6 + x, 12 + y)-(6 + x, 28 + y), cf
    Line (7 + x, 11 + y)-(7 + x, 29 + y), cf
    Line (8 + x, 10 + y)-(8 + x, 30 + y), cf
    Line (9 + x, 9 + y)-(9 + x, 31 + y), cf
    Line (10 + x, 8 + y)-(10 + x, 32 + y), cf
    Line (11 + x, 7 + y)-(11 + x, 33 + y), cf
    Line (35 + x, 13 + y)-(35 + x, 27 + y), cf
    Line (34 + x, 12 + y)-(34 + x, 28 + y), cf
    Line (33 + x, 11 + y)-(33 + x, 29 + y), cf
    Line (32 + x, 10 + y)-(32 + x, 30 + y), cf
    Line (31 + x, 9 + y)-(31 + x, 31 + y), cf
    Line (30 + x, 8 + y)-(30 + x, 32 + y), cf
    Line (29 + x, 7 + y)-(29 + x, 33 + y), cf
End Sub

Sub checker
    Line (14 + x, 36 + y)-(26 + x, 32 + y), cf, BF
    Line (14 + x, 4 + y)-(26 + x, 8 + y), cf, BF
    Line (4 + x, 14 + y)-(8 + x, 26 + y), cf, BF
    Line (32 + x, 14 + y)-(36 + x, 26 + y), cf, BF
    Line (13 + x, 35 + y)-(13 + x, 31 + y), cf
    Line (12 + x, 34 + y)-(12 + x, 30 + y), cf
    Line (11 + x, 33 + y)-(11 + x, 29 + y), cf
    Line (10 + x, 32 + y)-(10 + x, 28 + y), cf
    Line (9 + x, 31 + y)-(9 + x, 27 + y), cf
    Line (8 + x, 30 + y)-(8 + x, 26 + y), cf
    Line (27 + x, 35 + y)-(27 + x, 31 + y), cf
    Line (28 + x, 34 + y)-(28 + x, 30 + y), cf
    Line (29 + x, 33 + y)-(29 + x, 29 + y), cf
    Line (30 + x, 32 + y)-(30 + x, 28 + y), cf
    Line (31 + x, 31 + y)-(31 + x, 27 + y), cf
    Line (32 + x, 30 + y)-(32 + x, 26 + y), cf
    Line (13 + x, 5 + y)-(13 + x, 9 + y), cf
    Line (12 + x, 6 + y)-(12 + x, 10 + y), cf
    Line (11 + x, 7 + y)-(11 + x, 11 + y), cf
    Line (10 + x, 8 + y)-(10 + x, 12 + y), cf
    Line (9 + x, 9 + y)-(9 + x, 13 + y), cf
    Line (8 + x, 10 + y)-(8 + x, 14 + y), cf
    Line (27 + x, 5 + y)-(27 + x, 9 + y), cf
    Line (28 + x, 6 + y)-(28 + x, 10 + y), cf
    Line (29 + x, 7 + y)-(29 + x, 11 + y), cf
    Line (30 + x, 8 + y)-(30 + x, 12 + y), cf
    Line (31 + x, 9 + y)-(31 + x, 13 + y), cf
    Line (32 + x, 10 + y)-(32 + x, 14 + y), cf
    Line (5 + x, 13 + y)-(5 + x, 27 + y), cf
    Line (6 + x, 12 + y)-(6 + x, 28 + y), cf
    Line (7 + x, 11 + y)-(7 + x, 29 + y), cf
    Line (35 + x, 13 + y)-(35 + x, 27 + y), cf
    Line (34 + x, 12 + y)-(34 + x, 28 + y), cf
    Line (33 + x, 11 + y)-(33 + x, 29 + y), cf
    Line (17 + x, 28 + y)-(23 + x, 24 + y), cf, BF
    Line (17 + x, 12 + y)-(23 + x, 16 + y), cf, BF
    Line (12 + x, 17 + y)-(16 + x, 23 + y), cf, BF
    Line (24 + x, 17 + y)-(28 + x, 23 + y), cf, BF
    Line (18 + x, 28 + y)-(18 + x, 23 + y), cf
    Line (17 + x, 28 + y)-(17 + x, 22 + y), cf
    Line (16 + x, 27 + y)-(16 + x, 21 + y), cf
    Line (22 + x, 28 + y)-(22 + x, 23 + y), cf
    Line (23 + x, 28 + y)-(23 + x, 22 + y), cf
    Line (24 + x, 27 + y)-(24 + x, 21 + y), cf
    Line (18 + x, 12 + y)-(18 + x, 17 + y), cf
    Line (17 + x, 12 + y)-(17 + x, 18 + y), cf
    Line (16 + x, 13 + y)-(16 + x, 19 + y), cf
    Line (22 + x, 12 + y)-(22 + x, 17 + y), cf
    Line (23 + x, 12 + y)-(23 + x, 18 + y), cf
    Line (24 + x, 13 + y)-(24 + x, 19 + y), cf
    Line (13 + x, 16 + y)-(13 + x, 24 + y), cf
    Line (14 + x, 15 + y)-(14 + x, 25 + y), cf
    Line (15 + x, 14 + y)-(15 + x, 26 + y), cf
    Line (27 + x, 16 + y)-(27 + x, 24 + y), cf
    Line (26 + x, 15 + y)-(26 + x, 25 + y), cf
    Line (25 + x, 14 + y)-(25 + x, 26 + y), cf
End Sub

Sub cells
    Line (x, y)-(x + 40, y + 40), cd1, BF
    Line (x - 1, y - 1)-(x + 41, y + 41), cb1, B
End Sub

Sub chessboard
    Line (160, 80)-(480, 400), cb2, BF
    For x = 160 To 480 Step 40
        Line (x, 80)-(x, 400), cb1
    Next x
    For y = 80 To 400 Step 40
        Line (160, y)-(480, y), cb1
    Next y
    For y = 320 To 80 Step -80: For x = 400 To 160 Step -80
        Line (x + 1, y + 1)-(x + 39, y + 39), cb3, BF
        Line (x + 41, y + 41)-(x + 79, y + 79), cb3, BF
    Next x: Next y
    y = 405
    x = 175: Call numberA
    x = 215: Call numberB
    x = 255: Call numberC
    x = 295: Call numberD
    x = 335: Call numberE
    x = 375: Call numberF
    x = 415: Call numberG
    x = 455: Call numberH
    x = 145
    y = 95: Call number8
    y = 135: Call number7
    y = 175: Call number6
    y = 215: Call number5
    y = 255: Call number4
    y = 295: Call number3
    y = 335: Call number2
    y = 375: Call number1
End Sub

Sub makrukboard
    Line (160, 80)-(480, 400), cb2, BF
    For x = 160 To 480 Step 40
        Line (x, 80)-(x, 400), cb1
    Next x
    For y = 80 To 400 Step 40
        Line (160, y)-(480, y), cb1
    Next y
    y = 405
    x = 175: Call numberA
    x = 215: Call numberB
    x = 255: Call numberC
    x = 295: Call numberD
    x = 335: Call numberE
    x = 375: Call numberF
    x = 415: Call numberG
    x = 455: Call numberH
    x = 145
    y = 95: Call number8
    y = 135: Call number7
    y = 175: Call number6
    y = 215: Call number5
    y = 255: Call number4
    y = 295: Call number3
    y = 335: Call number2
    y = 375: Call number1
End Sub

Sub xiangqiboard
    Line (140, 40)-(500, 440), cb2, BF
    For x = 140 To 500 Step 40
        Line (x, 40)-(x, 440), cb1
    Next x
    For y = 40 To 440 Step 40
        Line (140, y)-(500, y), cb1
    Next y
    Line (259, 161)-(381, 159), cb4, BF
    Line (259, 41)-(261, 159), cb4, BF
    Line (379, 41)-(381, 159), cb4, BF
    Line (259, 321)-(381, 319), cb4, BF
    Line (259, 439)-(261, 319), cb4, BF
    Line (379, 439)-(381, 319), cb4, BF
    Line (141, 238)-(499, 242), cb5, BF
    y = 445
    x = 155: Call numberA
    x = 195: Call numberB
    x = 235: Call numberC
    x = 275: Call numberD
    x = 315: Call numberE
    x = 355: Call numberF
    x = 395: Call numberG
    x = 435: Call numberH
    x = 475: Call numberI
    x = 125
    y = 55: Call number0
    y = 95: Call number9
    y = 135: Call number8
    y = 175: Call number7
    y = 215: Call number6
    y = 255: Call number5
    y = 295: Call number4
    y = 335: Call number3
    y = 375: Call number2
    y = 415: Call number1
End Sub

Sub shogiboard
    Line (140, 60)-(500, 420), cb2, BF
    For x = 140 To 500 Step 40
        Line (x, 60)-(x, 420), cb1
    Next x
    For y = 60 To 420 Step 40
        Line (140, y)-(500, y), cb1
    Next y
    y = 425
    x = 155: Call numberA
    x = 195: Call numberB
    x = 235: Call numberC
    x = 275: Call numberD
    x = 315: Call numberE
    x = 355: Call numberF
    x = 395: Call numberG
    x = 435: Call numberH
    x = 475: Call numberI
    x = 125
    y = 75: Call number9
    y = 115: Call number8
    y = 155: Call number7
    y = 195: Call number6
    y = 235: Call number5
    y = 275: Call number4
    y = 315: Call number3
    y = 355: Call number2
    y = 395: Call number1
End Sub

Sub draughtsboard
    Line (120, 40)-(520, 440), cb2, BF
    For x = 120 To 520 Step 40
        Line (x, 40)-(x, 440), cb1
    Next x
    For y = 40 To 440 Step 40
        Line (120, y)-(520, y), cb1
    Next y
    For y = 360 To 40 Step -80: For x = 440 To 120 Step -80
        Line (x + 1, y + 1)-(x + 39, y + 39), cb3, BF
        Line (x + 41, y + 41)-(x + 79, y + 79), cb3, BF
    Next x: Next y
    y = 445
    x = 135: Call numberA
    x = 175: Call numberB
    x = 215: Call numberC
    x = 255: Call numberD
    x = 295: Call numberE
    x = 335: Call numberF
    x = 375: Call numberG
    x = 415: Call numberH
    x = 455: Call numberI
    x = 495: Call numberJ
    x = 105
    y = 55: Call number0
    y = 95: Call number9
    y = 135: Call number8
    y = 175: Call number7
    y = 215: Call number6
    y = 255: Call number5
    y = 295: Call number4
    y = 335: Call number3
    y = 375: Call number2
    y = 415: Call number1
End Sub

Sub chess
    count = 0: index = 0
    dc1x = Int(Rnd * 8 + 1)
    dc1y = Int(Rnd * 8 + 1)
    dc2x = Int(Rnd * 8 + 1)
    dc2y = Int(Rnd * 8 + 1)
    dc3x = Int(Rnd * 8 + 1)
    dc3y = Int(Rnd * 8 + 1)
    dc4x = Int(Rnd * 8 + 1)
    dc4y = Int(Rnd * 8 + 1)
    dc5x = Int(Rnd * 8 + 1)
    dc5y = Int(Rnd * 8 + 1)
    f1 = chebo(dc1x, dc1y)
    f2 = chebo(dc2x, dc2y)
    f3 = chebo(dc3x, dc3y)
    f4 = chebo(dc4x, dc4y)
    f5 = chebo(dc5x, dc5y)

    Dim dif(31)
    dif(1) = 0
    dif(2) = 1
    dif(3) = 2
    dif(4) = 3
    dif(5) = 4
    dif(6) = 5
    dif(7) = 6
    dif(8) = 7
    dif(9) = 8
    dif(10) = 9
    dif(11) = 10
    dif(12) = 14
    dif(13) = 15
    dif(14) = 16
    dif(15) = 17
    dif(16) = 18
    dif(17) = 21
    dif(18) = 24
    dif(19) = 27
    dif(20) = 28
    dif(21) = 32
    dif(23) = 35
    dif(23) = 36
    dif(24) = 40
    dif(25) = 42
    dif(26) = 45
    dif(27) = 48
    dif(28) = 49
    dif(29) = 54
    dif(30) = 56
    dif(31) = 63

    generate:
    dc2x = Int(Rnd * 8 + 1)
    dc2y = Int(Rnd * 8 + 1)
    f2 = chebo(dc2x, dc2y)
    For index = 1 To 31
        If Abs(f1 - f2) = dif(index) Then GoTo generate
    Next index
    dc3x = Int(Rnd * 8 + 1)
    dc3y = Int(Rnd * 8 + 1)
    f3 = chebo(dc3x, dc3y)
    For index = 1 To 31
        If Abs(f1 - f3) = dif(index) Then GoTo generate
        If Abs(f2 - f3) = dif(index) Then GoTo generate
    Next index
    dc4x = Int(Rnd * 8 + 1)
    dc4y = Int(Rnd * 8 + 1)
    f4 = chebo(dc4x, dc4y)
    For index = 1 To 31
        If Abs(f1 - f4) = dif(index) Then GoTo generate
        If Abs(f2 - f4) = dif(index) Then GoTo generate
        If Abs(f3 - f4) = dif(index) Then GoTo generate
    Next index
    dc5x = Int(Rnd * 8 + 1)
    dc5y = Int(Rnd * 8 + 1)
    f5 = chebo(dc5x, dc5y)
    For index = 1 To 31
        If Abs(f1 - f5) = dif(index) Then GoTo generate
        If Abs(f2 - f5) = dif(index) Then GoTo generate
        If Abs(f3 - f5) = dif(index) Then GoTo generate
        If Abs(f4 - f5) = dif(index) Then GoTo generate
    Next index
    For index = 1 To 31
        If Abs(f1 - f2) = dif(index) Then GoTo generate
        If Abs(f1 - f3) = dif(index) Then GoTo generate
        If Abs(f1 - f4) = dif(index) Then GoTo generate
        If Abs(f1 - f5) = dif(index) Then GoTo generate
        If Abs(f2 - f3) = dif(index) Then GoTo generate
        If Abs(f2 - f4) = dif(index) Then GoTo generate
        If Abs(f2 - f5) = dif(index) Then GoTo generate
        If Abs(f3 - f4) = dif(index) Then GoTo generate
        If Abs(f3 - f5) = dif(index) Then GoTo generate
        If Abs(f4 - f5) = dif(index) Then GoTo generate
    Next index

    Dim chesscount(8, 8) As Integer

    If dc1x > 1 And dc1x < 8 And dc1y > 1 And dc1y < 8 Then
        chesscount(dc1x - 1, dc1y - 1) = chesscount(dc1x - 1, dc1y - 1) + 1
        chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
        chesscount(dc1x - 1, dc1y + 1) = chesscount(dc1x - 1, dc1y + 1) + 1
        chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
        chesscount(dc1x + 1, dc1y + 1) = chesscount(dc1x + 1, dc1y + 1) + 1
        chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
        chesscount(dc1x + 1, dc1y - 1) = chesscount(dc1x + 1, dc1y - 1) + 1
        chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
    Else
        If dc1x = 1 And dc1y = 1 Then
            chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
            chesscount(dc1x + 1, dc1y + 1) = chesscount(dc1x + 1, dc1y + 1) + 1
            chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
        End If
        If dc1x = 1 And dc1y > 1 And dc1y < 8 Then
            chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
            chesscount(dc1x + 1, dc1y + 1) = chesscount(dc1x + 1, dc1y + 1) + 1
            chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
            chesscount(dc1x + 1, dc1y - 1) = chesscount(dc1x + 1, dc1y - 1) + 1
            chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
        End If
        If dc1x = 1 And dc1y = 8 Then
            chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
            chesscount(dc1x + 1, dc1y + 1) = chesscount(dc1x + 1, dc1y + 1) + 1
            chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
        End If
        If dc1x > 1 And dc1x < 8 And dc1y = 8 Then
            chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
            chesscount(dc1x + 1, dc1y - 1) = chesscount(dc1x + 1, dc1y - 1) + 1
            chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
            chesscount(dc1x - 1, dc1y - 1) = chesscount(dc1x - 1, dc1y - 1) + 1
            chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
        End If
        If dc1x = 8 And dc1y = 8 Then
            chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
            chesscount(dc1x - 1, dc1y - 1) = chesscount(dc1x - 1, dc1y - 1) + 1
            chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
        End If
        If dc1x = 8 And dc1y > 1 And dc1y < 8 Then
            chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
            chesscount(dc1x - 1, dc1y - 1) = chesscount(dc1x - 1, dc1y - 1) + 1
            chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
            chesscount(dc1x - 1, dc1y + 1) = chesscount(dc1x - 1, dc1y + 1) + 1
            chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
        End If
        If dc1x = 8 And dc1y = 1 Then
            chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
            chesscount(dc1x - 1, dc1y + 1) = chesscount(dc1x - 1, dc1y + 1) + 1
            chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
        End If
        If dc1x > 1 And dc1x < 8 And dc1y = 1 Then
            chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
            chesscount(dc1x - 1, dc1y + 1) = chesscount(dc1x - 1, dc1y + 1) + 1
            chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
            chesscount(dc1x + 1, dc1y + 1) = chesscount(dc1x + 1, dc1y + 1) + 1
            chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
        End If
    End If

    If dc2x > 1 And dc2x < 8 And dc2y > 1 And dc2y < 8 Then
        count = 0
        Do
            count = count + 1
            chesscount(dc2x - count, dc2y - count) = chesscount(dc2x - count, dc2y - count) + 1
        Loop Until dc2x - count = 1 Or dc2y - count = 1
        count = 0
        Do
            count = count + 1
            chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
        Loop Until dc2x - count = 1
        count = 0
        Do
            count = count + 1
            chesscount(dc2x - count, dc2y + count) = chesscount(dc2x - count, dc2y + count) + 1
        Loop Until dc2x - count = 1 Or dc2y + count = 8
        count = 0
        Do
            count = count + 1
            chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
        Loop Until dc2y + count = 8
        count = 0
        Do
            count = count + 1
            chesscount(dc2x + count, dc2y + count) = chesscount(dc2x + count, dc2y + count) + 1
        Loop Until dc2x + count = 8 Or dc2y + count = 8
        count = 0
        Do
            count = count + 1
            chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
        Loop Until dc2x + count = 8
        count = 0
        Do
            count = count + 1
            chesscount(dc2x + count, dc2y - count) = chesscount(dc2x + count, dc2y - count) + 1
        Loop Until dc2x + count = 8 Or dc2y - count = 1
        count = 0
        Do
            count = count + 1
            chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
        Loop Until dc2y - count = 1
    Else
        If dc2x = 1 And dc2y = 1 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
            Loop Until dc2y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x + count, dc2y + count) = chesscount(dc2x + count, dc2y + count) + 1
            Loop Until dc2x + count = 8 Or dc2y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
            Loop Until dc2x + count = 8
        End If
        If dc2x = 1 And dc2y > 1 And dc2y < 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
            Loop Until dc2y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x + count, dc2y + count) = chesscount(dc2x + count, dc2y + count) + 1
            Loop Until dc2x + count = 8 Or dc2y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
            Loop Until dc2x + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x + count, dc2y - count) = chesscount(dc2x + count, dc2y - count) + 1
            Loop Until dc2x + count = 8 Or dc2y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
            Loop Until dc2y - count = 1
        End If
        If dc2x = 1 And dc2y = 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
            Loop Until dc2x + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x + count, dc2y + count) = chesscount(dc2x + count, dc2y + count) + 1
            Loop Until dc2x + count = 8 Or dc2y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
            Loop Until dc2y + count = 8
        End If
        If dc2x > 1 And dc2x < 8 And dc2y = 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
            Loop Until dc2x + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x + count, dc2y - count) = chesscount(dc2x + count, dc2y - count) + 1
            Loop Until dc2x + count = 8 Or dc2y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
            Loop Until dc2y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x - count, dc2y - count) = chesscount(dc2x - count, dc2y - count) + 1
            Loop Until dc2x - count = 1 Or dc2y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
            Loop Until dc2x - count = 1
        End If
        If dc2x = 8 And dc2y = 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
            Loop Until dc2y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x - count, dc2y - count) = chesscount(dc2x - count, dc2y - count) + 1
            Loop Until dc2x - count = 1 Or dc2y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
            Loop Until dc2x - count = 1
        End If
        If dc2x = 8 And dc2y > 1 And dc2y < 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
            Loop Until dc2y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x - count, dc2y - count) = chesscount(dc2x - count, dc2y - count) + 1
            Loop Until dc2x - count = 1 Or dc2y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
            Loop Until dc2x - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x - count, dc2y + count) = chesscount(dc2x - count, dc2y + count) + 1
            Loop Until dc2x - count = 1 Or dc2y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
            Loop Until dc2y + count = 8
        End If
        If dc2x = 8 And dc2y = 1 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
            Loop Until dc2x - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x - count, dc2y + count) = chesscount(dc2x - count, dc2y + count) + 1
            Loop Until dc2x - count = 1 Or dc2y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
            Loop Until dc2y + count = 8
        End If
        If dc2x > 1 And dc2x < 8 And dc2y = 1 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
            Loop Until dc2x - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x - count, dc2y + count) = chesscount(dc2x - count, dc2y + count) + 1
            Loop Until dc2x - count = 1 Or dc2y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
            Loop Until dc2y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x + count, dc2y + count) = chesscount(dc2x + count, dc2y + count) + 1
            Loop Until dc2x + count = 8 Or dc2y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
            Loop Until dc2x + count = 8
        End If
    End If

    If dc3x > 1 And dc3x < 8 And dc3y > 1 And dc3y < 8 Then
        count = 0
        Do
            count = count + 1
            chesscount(dc3x - count, dc3y - count) = chesscount(dc3x - count, dc3y - count) + 1
        Loop Until dc3x - count = 1 Or dc3y - count = 1
        count = 0
        Do
            count = count + 1
            chesscount(dc3x - count, dc3y + count) = chesscount(dc3x - count, dc3y + count) + 1
        Loop Until dc3x - count = 1 Or dc3y + count = 8
        count = 0
        Do
            count = count + 1
            chesscount(dc3x + count, dc3y + count) = chesscount(dc3x + count, dc3y + count) + 1
        Loop Until dc3x + count = 8 Or dc3y + count = 8
        count = 0
        Do
            count = count + 1
            chesscount(dc3x + count, dc3y - count) = chesscount(dc3x + count, dc3y - count) + 1
        Loop Until dc3x + count = 8 Or dc3y - count = 1
    Else
        If dc3x = 1 And dc3y = 1 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc3x + count, dc3y + count) = chesscount(dc3x + count, dc3y + count) + 1
            Loop Until dc3x + count = 8 Or dc3y + count = 8
        End If
        If dc3x = 1 And dc3y > 1 And dc3y < 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc3x + count, dc3y + count) = chesscount(dc3x + count, dc3y + count) + 1
            Loop Until dc3x + count = 8 Or dc3y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc3x + count, dc3y - count) = chesscount(dc3x + count, dc3y - count) + 1
            Loop Until dc3x + count = 8 Or dc3y - count = 1
        End If
        If dc3x = 1 And dc3y = 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc3x + count, dc3y + count) = chesscount(dc3x + count, dc3y + count) + 1
            Loop Until dc3x + count = 8 Or dc3y + count = 8
        End If
        If dc3x > 1 And dc3x < 8 And dc3y = 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc3x + count, dc3y - count) = chesscount(dc3x + count, dc3y - count) + 1
            Loop Until dc3x + count = 8 Or dc3y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc3x - count, dc3y - count) = chesscount(dc3x - count, dc3y - count) + 1
            Loop Until dc3x - count = 1 Or dc3y - count = 1
        End If
        If dc3x = 8 And dc3y = 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc3x - count, dc3y - count) = chesscount(dc3x - count, dc3y - count) + 1
            Loop Until dc3x - count = 1 Or dc3y - count = 1
        End If
        If dc3x = 8 And dc3y > 1 And dc3y < 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc3x - count, dc3y - count) = chesscount(dc3x - count, dc3y - count) + 1
            Loop Until dc3x - count = 1 Or dc3y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc3x - count, dc3y + count) = chesscount(dc3x - count, dc3y + count) + 1
            Loop Until dc3x - count = 1 Or dc3y + count = 8
        End If
        If dc3x = 8 And dc3y = 1 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc3x - count, dc3y + count) = chesscount(dc3x - count, dc3y + count) + 1
            Loop Until dc3x - count = 1 Or dc3y + count = 8
        End If
        If dc3x > 1 And dc3x < 8 And dc3y = 1 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc3x - count, dc3y + count) = chesscount(dc3x - count, dc3y + count) + 1
            Loop Until dc3x - count = 1 Or dc3y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc3x + count, dc3y + count) = chesscount(dc3x + count, dc3y + count) + 1
            Loop Until dc3x + count = 8 Or dc3y + count = 8
        End If
    End If











    For row = 1 To 8 Step 1: For col = 1 To 8 Step 1
        Print chesscount(col, row);
    Next col: Print: Next row

    '    cn = 1
    '    x = (dc1x * 40) + 135: y = (dc1y * 40) + 55
    '    Call number0
    '    x = (dc2x * 40) + 135: y = (dc2y * 40) + 55
    '    Call number0
    '    x = (dc3x * 40) + 135: y = (dc3y * 40) + 55
    '    Call number0
    '    x = (dc4x * 40) + 135: y = (dc4y * 40) + 55
    '    Call number0
    '    x = (dc5x * 40) + 135: y = (dc5y * 40) + 55
    '    Call number0

    x = (dc1x * 40) + 120: y = (dc1y * 40) + 40
    Call king
    x = (dc2x * 40) + 120: y = (dc2y * 40) + 40
    Call queen
    x = (dc3x * 40) + 120: y = (dc3y * 40) + 40
    Call bishop
    x = (dc4x * 40) + 120: y = (dc4y * 40) + 40
    Call knight
    x = (dc5x * 40) + 120: y = (dc5y * 40) + 40
    Call rook

    Do
    Loop Until InKey$ <> ""
End Sub

Sub makruk
End Sub

Sub xiangqi
End Sub

Sub shogi
End Sub

Sub draughts
End Sub

Sub message
    Locate 2, 1: Color 9: Print "    SPACEBAR - next pair"; "       ENTER - display notation       "; "ESCAPE - exit    "
    Locate 2, 5: Color 5: Print "SPACEBAR": Locate 2, 32: Color 5: Print "ENTER": Locate 2, 63: Color 5: Print "ESCAPE"
End Sub
