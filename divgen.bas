$ExeIcon:'divgen.ico'
_Icon
_Title "Divine generator"
_FullScreen
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
declare sub kingcount ()
declare sub queencount ()
declare sub bishopcount ()
declare sub knightcount ()
declare sub rookcount ()
declare sub seedcount ()
declare sub generalcount()
declare sub advisorcount ()
declare sub elephantcount ()
declare sub horsecount ()
declare sub chariotcount ()
declare sub shokingcount ()
declare sub shobishopcount ()
declare sub shorookcount ()
declare sub steedcount ()
declare sub dragoncount ()
declare sub cells ()
declare sub chessboard ()
declare sub makrukboard ()
declare sub xiangqiboard ()
declare sub shogiboard ()
declare sub chess ()
declare sub makruk ()
declare sub xiangqi ()
declare sub shogi ()
declare sub chesssolution ()
declare sub makruksolution ()
declare sub xiangqisolution ()
declare sub shogisolution ()

Common Shared x, y, z, cd1, cd2, cn, ck, cf, cb1, cb2, cb3, cb4, cb5, row, col, index, count As Integer
Common Shared dc1x, dc1y, dc2x, dc2y, dc3x, dc3y, dc4x, dc4y, dc5x, dc5y, dc6x, dc6y, dc7x, dc7y As Integer
cd1 = 1: cd2 = 1: cn = 7: ck = 7: cf = 7: cb1 = 7: cb2 = 6: cb3 = 3: cb4 = 13: cb5 = 9

Dim Shared chebo(8, 8) As Integer
index = 100
For row = 1 To 8: For col = 1 To 8
        chebo(row, col) = index + 1
        index = index + 1
Next col: Next row

Dim Shared xiabo(9, 10) As Integer
index = 100
For row = 1 To 10: For col = 1 To 9
        xiabo(col, row) = index + 1
        index = index + 1
Next col: Next row

Dim Shared shobo(9, 9) As Integer
index = 100
For row = 1 To 9: For col = 1 To 9
        shobo(row, col) = index + 1
        index = index + 1
Next col: Next row

Dim Shared chesscount(8, 8) As Integer
Dim Shared xiangqicount(9, 10) As Integer
Dim Shared shogicount(9, 9) As Integer

begin:
Cls
For row = 1 To 8: For col = 1 To 8
        chesscount(row, col) = 0
Next col: Next row
For row = 1 To 9: For col = 1 To 10
        xiangqicount(row, col) = 0
Next col: Next row
For row = 1 To 9: For col = 1 To 9
        shogicount(row, col) = 0
Next col: Next row
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
Color 12, 0: Locate 23, 7: Print "ษออออออออออออออออออป"
Color 12, 0: Locate 24, 7: Print "บ Divine generator บ"
Color 12, 0: Locate 25, 7: Print "ศออออออออออออออออออผ"
Color 10, 0: Locate 23, 52: Print "Press number to select game,": Locate 24, 57: Print "Enter to solution,": Locate 25, 59: Print "or Esc to exit."

Color 11, 0
cf = 7
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
            Call chessboard
            Call chess
            GoTo begin
        Case Is = Chr$(50)
            Cls
            Call makrukboard
            Call makruk
            GoTo begin
        Case Is = Chr$(51)
            Cls
            Call xiangqiboard
            Call xiangqi
            GoTo begin
        Case Is = Chr$(52)
            Cls
            Call shogiboard
            Call shogi
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
    Line (4 + x, 4 + y)-(8 + x, 18 + y), ck, BF
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

Sub kingcount
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
            chesscount(dc1x + 1, dc1y - 1) = chesscount(dc1x + 1, dc1y - 1) + 1
            chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
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
End Sub

Sub queencount
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
                chesscount(dc2x + count, dc2y - count) = chesscount(dc2x + count, dc2y - count) + 1
            Loop Until dc2x + count = 8 Or dc2y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
            Loop Until dc2y - count = 1
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
End Sub

Sub bishopcount
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
                chesscount(dc3x + count, dc3y - count) = chesscount(dc3x + count, dc3y - count) + 1
            Loop Until dc3x + count = 8 Or dc3y - count = 1
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
End Sub

Sub knightcount
    If dc4x > 2 And dc4x < 7 And dc4y > 2 And dc4y < 7 Then
        chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
        chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
        chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
        chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
        chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
        chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
        chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
    Else
        If dc4x = 1 And dc4y = 1 Then
            chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
        End If
        If dc4x = 1 And dc4y = 2 Then
            chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
        End If
        If dc4x = 1 And dc4y > 2 And dc4y < 7 Then
            chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
        End If
        If dc4x = 1 And dc4y = 7 Then
            chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
        End If
        If dc4x = 1 And dc4y = 8 Then
            chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
        End If
        If dc4x = 2 And dc4y = 8 Then
            chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
        End If
        If dc4x > 2 And dc4x < 7 And dc4y = 8 Then
            chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
        End If
        If dc4x = 7 And dc4y = 8 Then
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
        End If
        If dc4x = 8 And dc4y = 8 Then
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
        End If
        If dc4x = 8 And dc4y = 7 Then
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 2) + 1
            chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 8 And dc4y > 2 And dc4y < 7 Then
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
            chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
        End If
        If dc4x = 8 And dc4y = 2 Then
            chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
            chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
        End If
        If dc4x = 8 And dc4y = 1 Then
            chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
            chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
        End If
        If dc4x = 7 And dc4y = 1 Then
            chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x > 2 And dc4x < 7 And dc4y = 1 Then
            chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
            chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
        End If
        If dc4x = 2 And dc4y = 1 Then
            chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
        End If
        If dc4x = 2 And dc4y = 2 Then
            chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
        End If
        If dc4x = 2 And dc4y > 2 And dc4y < 7 Then
            chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
        End If
        If dc4x = 2 And dc4y = 7 Then
            chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 2, dc4y - 1) + 1
        End If
        If dc4x > 2 And dc4x < 7 And dc4y = 7 Then
            chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 7 And dc4y = 7 Then
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 7 And dc4y > 2 And dc4y < 7 Then
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
            chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
        End If
        If dc4x = 7 And dc4y = 2 Then
            chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
            chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
        End If
        If dc4x = 2 And dc4y > 2 And dc4y < 7 Then
            chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
            chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
        End If
    End If
End Sub

Sub rookcount
    If dc5x > 1 And dc5x < 8 And dc5y > 1 And dc5y < 8 Then
        count = 0
        Do
            count = count + 1
            chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
        Loop Until dc5x - count = 1
        count = 0
        Do
            count = count + 1
            chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
        Loop Until dc5y + count = 8
        count = 0
        Do
            count = count + 1
            chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
        Loop Until dc5x + count = 8
        count = 0
        Do
            count = count + 1
            chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
        Loop Until dc5y - count = 1
    Else
        If dc5x = 1 And dc5y = 1 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 8
        End If
        If dc5x = 1 And dc5y > 1 And dc5y < 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
        End If
        If dc5x = 1 And dc5y = 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
        End If
        If dc5x > 1 And dc5x < 8 And dc5y = 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
        End If
        If dc5x = 8 And dc5y = 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
        End If
        If dc5x = 8 And dc5y > 1 And dc5y < 8 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 8
        End If
        If dc5x = 8 And dc5y = 1 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 8
        End If
        If dc5x > 1 And dc5x < 8 And dc5y = 1 Then
            count = 0
            Do
                count = count + 1
                chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            count = 0
            Do
                count = count + 1
                chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 8
            count = 0
            Do
                count = count + 1
                chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 8
        End If
    End If
End Sub

Sub seedcount
    If dc2x > 1 And dc2x < 8 And dc2y > 1 And dc2y < 8 Then
        chesscount(dc2x - 1, dc2y - 1) = chesscount(dc2x - 1, dc2y - 1) + 1
        chesscount(dc2x - 1, dc2y + 1) = chesscount(dc2x - 1, dc2y + 1) + 1
        chesscount(dc2x + 1, dc2y + 1) = chesscount(dc2x + 1, dc2y + 1) + 1
        chesscount(dc2x + 1, dc2y - 1) = chesscount(dc2x + 1, dc2y - 1) + 1
    Else
        If dc2x = 1 And dc2y = 1 Then
            chesscount(dc2x + 1, dc2y + 1) = chesscount(dc2x + 1, dc2y + 1) + 1
        End If
        If dc2x = 1 And dc2y > 1 And dc2y < 8 Then
            chesscount(dc2x + 1, dc2y + 1) = chesscount(dc2x + 1, dc2y + 1) + 1
            chesscount(dc2x + 1, dc2y - 1) = chesscount(dc2x + 1, dc2y - 1) + 1
        End If
        If dc2x = 1 And dc2y = 8 Then
            chesscount(dc2x + 1, dc2y - 1) = chesscount(dc2x + 1, dc2y - 1) + 1
        End If
        If dc2x > 1 And dc2x < 8 And dc2y = 8 Then
            chesscount(dc2x + 1, dc2y - 1) = chesscount(dc2x + 1, dc2y - 1) + 1
            chesscount(dc2x - 1, dc2y - 1) = chesscount(dc2x - 1, dc2y - 1) + 1
        End If
        If dc2x = 8 And dc2y = 8 Then
            chesscount(dc2x - 1, dc2y - 1) = chesscount(dc2x - 1, dc2y - 1) + 1
        End If
        If dc2x = 8 And dc2y > 1 And dc2y < 8 Then
            chesscount(dc2x - 1, dc2y - 1) = chesscount(dc2x - 1, dc2y - 1) + 1
            chesscount(dc2x - 1, dc2y + 1) = chesscount(dc2x - 1, dc2y + 1) + 1
        End If
        If dc2x = 8 And dc2y = 1 Then
            chesscount(dc2x - 1, dc2y + 1) = chesscount(dc2x - 1, dc2y + 1) + 1
        End If
        If dc2x > 1 And dc2x < 8 And dc2y = 1 Then
            chesscount(dc2x - 1, dc2y + 1) = chesscount(dc2x - 1, dc2y + 1) + 1
            chesscount(dc2x + 1, dc2y + 1) = chesscount(dc2x + 1, dc2y + 1) + 1
        End If
    End If
End Sub

Sub generalcount
    If dc1x = 5 And dc1y = 2 Then
        xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
        xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
        xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
        xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
    Else
        If dc1x = 4 And dc1y = 1 Then
            xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
            xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
        End If
        If dc1x = 4 And dc1y = 2 Then
            xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
            xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
            xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
        End If
        If dc1x = 4 And dc1y = 3 Then
            xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
            xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
        End If
        If dc1x = 5 And dc1y = 3 Then
            xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
            xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
            xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
        End If
        If dc1x = 6 And dc1y = 3 Then
            xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
            xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
        End If
        If dc1x = 6 And dc1y = 2 Then
            xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
            xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
            xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
        End If
        If dc1x = 6 And dc1y = 1 Then
            xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
            xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
        End If
        If dc1x = 5 And dc1y = 1 Then
            xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
            xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
            xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
        End If
    End If
    If dc1x = 5 And dc1y = 9 Then
        xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
        xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
        xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
        xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
    Else
        If dc1x = 4 And dc1y = 8 Then
            xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
            xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
        End If
        If dc1x = 4 And dc1y = 9 Then
            xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
            xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
            xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
        End If
        If dc1x = 4 And dc1y = 10 Then
            xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
            xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
        End If
        If dc1x = 5 And dc1y = 10 Then
            xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
            xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
            xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
        End If
        If dc1x = 6 And dc1y = 10 Then
            xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
            xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
        End If
        If dc1x = 6 And dc1y = 9 Then
            xiangqicount(dc1x, dc1y - 1) = xiangqicount(dc1x, dc1y - 1) + 1
            xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
            xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
        End If
        If dc1x = 6 And dc1y = 8 Then
            xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
            xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
        End If
        If dc1x = 5 And dc1y = 8 Then
            xiangqicount(dc1x - 1, dc1y) = xiangqicount(dc1x - 1, dc1y) + 1
            xiangqicount(dc1x, dc1y + 1) = xiangqicount(dc1x, dc1y + 1) + 1
            xiangqicount(dc1x + 1, dc1y) = xiangqicount(dc1x + 1, dc1y) + 1
        End If
    End If
End Sub

Sub advisorcount
    If dc2x = 5 And dc2y = 2 Then
        xiangqicount(dc2x - 1, dc2y - 1) = xiangqicount(dc2x - 1, dc2y - 1) + 1
        xiangqicount(dc2x - 1, dc2y + 1) = xiangqicount(dc2x - 1, dc2y + 1) + 1
        xiangqicount(dc2x + 1, dc2y + 1) = xiangqicount(dc2x + 1, dc2y + 1) + 1
        xiangqicount(dc2x + 1, dc2y - 1) = xiangqicount(dc2x + 1, dc2y - 1) + 1
    Else
        If dc2x = 4 And dc2y = 1 Then
            xiangqicount(dc2x + 1, dc2y + 1) = xiangqicount(dc2x + 1, dc2y + 1) + 1
        End If
        If dc2x = 4 And dc2y = 3 Then
            xiangqicount(dc2x + 1, dc2y - 1) = xiangqicount(dc2x + 1, dc2y - 1) + 1
        End If
        If dc2x = 6 And dc2y = 3 Then
            xiangqicount(dc2x - 1, dc2y - 1) = xiangqicount(dc2x - 1, dc2y - 1) + 1
        End If
        If dc2x = 6 And dc2y = 1 Then
            xiangqicount(dc2x - 1, dc2y + 1) = xiangqicount(dc2x - 1, dc2y + 1) + 1
        End If
    End If
    If dc2x = 5 And dc2y = 9 Then
        xiangqicount(dc2x - 1, dc2y - 1) = xiangqicount(dc2x - 1, dc2y - 1) + 1
        xiangqicount(dc2x - 1, dc2y + 1) = xiangqicount(dc2x - 1, dc2y + 1) + 1
        xiangqicount(dc2x + 1, dc2y + 1) = xiangqicount(dc2x + 1, dc2y + 1) + 1
        xiangqicount(dc2x + 1, dc2y - 1) = xiangqicount(dc2x + 1, dc2y - 1) + 1
    Else
        If dc2x = 4 And dc2y = 8 Then
            xiangqicount(dc2x + 1, dc2y + 1) = xiangqicount(dc2x + 1, dc2y + 1) + 1
        End If
        If dc2x = 4 And dc2y = 10 Then
            xiangqicount(dc2x + 1, dc2y - 1) = xiangqicount(dc2x + 1, dc2y - 1) + 1
        End If
        If dc2x = 6 And dc2y = 10 Then
            xiangqicount(dc2x - 1, dc2y - 1) = xiangqicount(dc2x - 1, dc2y - 1) + 1
        End If
        If dc2x = 6 And dc2y = 8 Then
            xiangqicount(dc2x - 1, dc2y + 1) = xiangqicount(dc2x - 1, dc2y + 1) + 1
        End If
    End If
End Sub

Sub elephantcount
    If dc3x = 5 And dc3y = 3 Then
        xiangqicount(dc2x - 2, dc2y - 2) = xiangqicount(dc2x - 2, dc2y - 2) + 1
        xiangqicount(dc2x - 2, dc2y + 2) = xiangqicount(dc2x - 2, dc2y + 2) + 1
        xiangqicount(dc2x + 2, dc2y + 2) = xiangqicount(dc2x + 2, dc2y + 2) + 1
        xiangqicount(dc2x + 2, dc2y - 2) = xiangqicount(dc2x + 2, dc2y - 2) + 1
    Else
        If dc3x = 1 And dc3y = 3 Then
            xiangqicount(dc3x + 2, dc3y - 2) = xiangqicount(dc3x + 2, dc3y - 2) + 1
            xiangqicount(dc3x + 2, dc3y + 2) = xiangqicount(dc3x + 2, dc3y + 2) + 1
        End If
        If dc3x = 1 And dc3y = 8 Then
            xiangqicount(dc3x + 2, dc3y - 2) = xiangqicount(dc3x + 2, dc3y - 2) + 1
            xiangqicount(dc3x + 2, dc3y + 2) = xiangqicount(dc3x + 2, dc3y + 2) + 1
        End If
        If dc3x = 3 And dc3y = 10 Then
            xiangqicount(dc3x + 2, dc3y - 2) = xiangqicount(dc3x + 2, dc3y - 2) + 1
            xiangqicount(dc3x - 2, dc3y - 2) = xiangqicount(dc3x - 2, dc3y - 2) + 1
        End If
        If dc3x = 7 And dc3y = 10 Then
            xiangqicount(dc3x + 2, dc3y - 2) = xiangqicount(dc3x + 2, dc3y - 2) + 1
            xiangqicount(dc3x - 2, dc3y - 2) = xiangqicount(dc3x - 2, dc3y - 2) + 1
        End If
        If dc3x = 9 And dc3y = 8 Then
            xiangqicount(dc3x - 2, dc3y - 2) = xiangqicount(dc3x - 2, dc3y - 2) + 1
            xiangqicount(dc3x - 2, dc3y + 2) = xiangqicount(dc3x - 2, dc3y + 2) + 1
        End If
        If dc3x = 9 And dc3y = 3 Then
            xiangqicount(dc3x - 2, dc3y - 2) = xiangqicount(dc3x - 2, dc3y - 2) + 1
            xiangqicount(dc3x - 2, dc3y + 2) = xiangqicount(dc3x - 2, dc3y + 2) + 1
        End If
        If dc3x = 7 And dc3y = 1 Then
            xiangqicount(dc3x + 2, dc3y + 2) = xiangqicount(dc3x + 2, dc3y + 2) + 1
            xiangqicount(dc3x - 2, dc3y + 2) = xiangqicount(dc3x - 2, dc3y + 2) + 1
        End If
        If dc3x = 3 And dc3y = 1 Then
            xiangqicount(dc3x + 2, dc3y + 2) = xiangqicount(dc3x + 2, dc3y + 2) + 1
            xiangqicount(dc3x - 2, dc3y + 2) = xiangqicount(dc3x - 2, dc3y + 2) + 1
        End If
        If dc3x = 3 And dc3y = 5 Then
            xiangqicount(dc3x + 2, dc3y - 2) = xiangqicount(dc3x + 2, dc3y - 2) + 1
            xiangqicount(dc3x - 2, dc3y - 2) = xiangqicount(dc3x - 2, dc3y - 2) + 1
        End If
        If dc3x = 3 And dc3y = 6 Then
            xiangqicount(dc3x + 2, dc3y + 2) = xiangqicount(dc3x + 2, dc3y + 2) + 1
            xiangqicount(dc3x - 2, dc3y + 2) = xiangqicount(dc3x - 2, dc3y + 2) + 1
        End If
        If dc3x = 7 And dc3y = 6 Then
            xiangqicount(dc3x + 2, dc3y + 2) = xiangqicount(dc3x + 2, dc3y + 2) + 1
            xiangqicount(dc3x - 2, dc3y + 2) = xiangqicount(dc3x - 2, dc3y + 2) + 1
        End If
        If dc3x = 7 And dc3y = 5 Then
            xiangqicount(dc3x + 2, dc3y - 2) = xiangqicount(dc3x + 2, dc3y - 2) + 1
            xiangqicount(dc3x - 2, dc3y - 2) = xiangqicount(dc3x - 2, dc3y - 2) + 1
        End If
        If dc3x = 5 And dc3y = 8 Then
            xiangqicount(dc2x - 2, dc2y - 2) = xiangqicount(dc2x - 2, dc2y - 2) + 1
            xiangqicount(dc2x - 2, dc2y + 2) = xiangqicount(dc2x - 2, dc2y + 2) + 1
            xiangqicount(dc2x + 2, dc2y + 2) = xiangqicount(dc2x + 2, dc2y + 2) + 1
            xiangqicount(dc2x + 2, dc2y - 2) = xiangqicount(dc2x + 2, dc2y - 2) + 1
        End If
    End If
End Sub

Sub horsecount
    If dc4x > 2 And dc4x < 8 And dc4y > 2 And dc4y < 9 Then
        xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
        xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 1) + 1
        xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
        xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
        xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
        xiangqicount(dc4x + 2, dc4y + 1) = xiangqicount(dc4x + 2, dc4y + 1) + 1
        xiangqicount(dc4x + 2, dc4y - 1) = xiangqicount(dc4x + 2, dc4y - 1) + 1
        xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
    Else
        If dc4x = 1 And dc4y = 1 Then
            xiangqicount(dc4x + 2, dc4y + 1) = xiangqicount(dc4x + 2, dc4y + 1) + 1
            xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
        End If
        If dc4x = 1 And dc4y = 2 Then
            xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
            xiangqicount(dc4x + 2, dc4y + 1) = xiangqicount(dc4x + 2, dc4y + 1) + 1
            xiangqicount(dc4x + 2, dc4y - 1) = xiangqicount(dc4x + 2, dc4y - 1) + 1
        End If
        If dc4x = 1 And dc4y > 2 And dc4y < 9 Then
            xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
            xiangqicount(dc4x + 2, dc4y + 1) = xiangqicount(dc4x + 2, dc4y + 1) + 1
            xiangqicount(dc4x + 2, dc4y - 1) = xiangqicount(dc4x + 2, dc4y - 1) + 1
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
        End If
        If dc4x = 1 And dc4y = 9 Then
            xiangqicount(dc4x + 2, dc4y + 1) = xiangqicount(dc4x + 2, dc4y + 1) + 1
            xiangqicount(dc4x + 2, dc4y - 1) = xiangqicount(dc4x + 2, dc4y - 1) + 1
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
        End If
        If dc4x = 1 And dc4y = 10 Then
            xiangqicount(dc4x + 2, dc4y - 1) = xiangqicount(dc4x + 2, dc4y - 1) + 1
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
        End If
        If dc4x = 2 And dc4y = 10 Then
            xiangqicount(dc4x + 2, dc4y - 1) = xiangqicount(dc4x + 2, dc4y - 1) + 1
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
        End If
        If dc4x > 2 And dc4x < 8 And dc4y = 10 Then
            xiangqicount(dc4x + 2, dc4y - 1) = xiangqicount(dc4x + 2, dc4y - 1) + 1
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
            xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 1) + 1
        End If
        If dc4x = 8 And dc4y = 10 Then
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
            xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 1) + 1
        End If
        If dc4x = 9 And dc4y = 10 Then
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
            xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 1) + 1
        End If
        If dc4x = 9 And dc4y = 9 Then
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
            xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 2) + 1
            xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 9 And dc4y > 2 And dc4y < 9 Then
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
            xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 1) + 1
            xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
            xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
        End If
        If dc4x = 9 And dc4y = 2 Then
            xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 1) + 1
            xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
            xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
        End If
        If dc4x = 9 And dc4y = 1 Then
            xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
            xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
        End If
        If dc4x = 8 And dc4y = 1 Then
            xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
            xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
            xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x > 2 And dc4x < 8 And dc4y = 1 Then
            xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
            xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
            xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
            xiangqicount(dc4x + 2, dc4y + 1) = xiangqicount(dc4x + 2, dc4y + 1) + 1
        End If
        If dc4x = 2 And dc4y = 1 Then
            xiangqicount(dc4x + 2, dc4y + 1) = xiangqicount(dc4x + 2, dc4y + 1) + 1
            xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
            xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
        End If
        If dc4x = 2 And dc4y = 2 Then
            xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
            xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
            xiangqicount(dc4x + 2, dc4y + 1) = xiangqicount(dc4x + 2, dc4y + 1) + 1
            xiangqicount(dc4x + 2, dc4y - 1) = xiangqicount(dc4x + 2, dc4y - 1) + 1
        End If
        If dc4x = 2 And dc4y > 2 And dc4y < 9 Then
            xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
            xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
            xiangqicount(dc4x + 2, dc4y + 1) = xiangqicount(dc4x + 2, dc4y + 1) + 1
            xiangqicount(dc4x + 2, dc4y - 1) = xiangqicount(dc4x + 2, dc4y - 1) + 1
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
        End If
        If dc4x = 2 And dc4y = 9 Then
            xiangqicount(dc4x + 2, dc4y + 1) = xiangqicount(dc4x + 2, dc4y + 1) + 1
            xiangqicount(dc4x + 2, dc4y - 1) = xiangqicount(dc4x + 2, dc4y - 1) + 1
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 2, dc4y - 1) + 1
        End If
        If dc4x > 2 And dc4x < 8 And dc4y = 9 Then
            xiangqicount(dc4x + 2, dc4y + 1) = xiangqicount(dc4x + 2, dc4y + 1) + 1
            xiangqicount(dc4x + 2, dc4y - 1) = xiangqicount(dc4x + 2, dc4y - 1) + 1
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
            xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 1) + 1
            xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 8 And dc4y = 9 Then
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
            xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 1) + 1
            xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 8 And dc4y > 2 And dc4y < 9 Then
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
            xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 1) + 1
            xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
            xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
            xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
        End If
        If dc4x = 8 And dc4y = 2 Then
            xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 1) + 1
            xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
            xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
            xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
        End If
        If dc4x = 2 And dc4y > 2 And dc4y < 9 Then
            xiangqicount(dc4x + 1, dc4y - 2) = xiangqicount(dc4x + 1, dc4y - 2) + 1
            xiangqicount(dc4x - 1, dc4y - 2) = xiangqicount(dc4x - 1, dc4y - 2) + 1
            xiangqicount(dc4x - 2, dc4y - 1) = xiangqicount(dc4x - 2, dc4y - 1) + 1
            xiangqicount(dc4x - 2, dc4y + 1) = xiangqicount(dc4x - 2, dc4y + 1) + 1
            xiangqicount(dc4x - 1, dc4y + 2) = xiangqicount(dc4x - 1, dc4y + 2) + 1
            xiangqicount(dc4x + 1, dc4y + 2) = xiangqicount(dc4x + 1, dc4y + 2) + 1
        End If
    End If
End Sub

Sub chariotcount
    If dc5x > 1 And dc5x < 9 And dc5y > 1 And dc5y < 10 Then
        count = 0
        Do
            count = count + 1
            xiangqicount(dc5x - count, dc5y) = xiangqicount(dc5x - count, dc5y) + 1
        Loop Until dc5x - count = 1
        count = 0
        Do
            count = count + 1
            xiangqicount(dc5x, dc5y + count) = xiangqicount(dc5x, dc5y + count) + 1
        Loop Until dc5y + count = 10
        count = 0
        Do
            count = count + 1
            xiangqicount(dc5x + count, dc5y) = xiangqicount(dc5x + count, dc5y) + 1
        Loop Until dc5x + count = 9
        count = 0
        Do
            count = count + 1
            xiangqicount(dc5x, dc5y - count) = xiangqicount(dc5x, dc5y - count) + 1
        Loop Until dc5y - count = 1
    Else
        If dc5x = 1 And dc5y = 1 Then
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x, dc5y + count) = xiangqicount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 10
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x + count, dc5y) = xiangqicount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 9
        End If
        If dc5x = 1 And dc5y > 1 And dc5y < 10 Then
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x, dc5y + count) = xiangqicount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 10
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x + count, dc5y) = xiangqicount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 9
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x, dc5y - count) = xiangqicount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
        End If
        If dc5x = 1 And dc5y = 10 Then
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x + count, dc5y) = xiangqicount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 9
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x, dc5y - count) = xiangqicount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
        End If
        If dc5x > 1 And dc5x < 9 And dc5y = 10 Then
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x + count, dc5y) = xiangqicount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 9
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x, dc5y - count) = xiangqicount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x - count, dc5y) = xiangqicount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
        End If
        If dc5x = 9 And dc5y = 10 Then
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x, dc5y - count) = xiangqicount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x - count, dc5y) = xiangqicount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
        End If
        If dc5x = 9 And dc5y > 1 And dc5y < 10 Then
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x, dc5y - count) = xiangqicount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x - count, dc5y) = xiangqicount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x, dc5y + count) = xiangqicount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 10
        End If
        If dc5x = 9 And dc5y = 1 Then
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x - count, dc5y) = xiangqicount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x, dc5y + count) = xiangqicount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 10
        End If
        If dc5x > 1 And dc5x < 9 And dc5y = 1 Then
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x - count, dc5y) = xiangqicount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x, dc5y + count) = xiangqicount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 10
            count = 0
            Do
                count = count + 1
                xiangqicount(dc5x + count, dc5y) = xiangqicount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 9
        End If
    End If
End Sub

Sub shokingcount
    If dc1x > 1 And dc1x < 9 And dc1y > 1 And dc1y < 9 Then
        shogicount(dc1x - 1, dc1y - 1) = shogicount(dc1x - 1, dc1y - 1) + 1
        shogicount(dc1x - 1, dc1y) = shogicount(dc1x - 1, dc1y) + 1
        shogicount(dc1x - 1, dc1y + 1) = shogicount(dc1x - 1, dc1y + 1) + 1
        shogicount(dc1x, dc1y + 1) = shogicount(dc1x, dc1y + 1) + 1
        shogicount(dc1x + 1, dc1y + 1) = shogicount(dc1x + 1, dc1y + 1) + 1
        shogicount(dc1x + 1, dc1y) = shogicount(dc1x + 1, dc1y) + 1
        shogicount(dc1x + 1, dc1y - 1) = shogicount(dc1x + 1, dc1y - 1) + 1
        shogicount(dc1x, dc1y - 1) = shogicount(dc1x, dc1y - 1) + 1
    Else
        If dc1x = 1 And dc1y = 1 Then
            shogicount(dc1x, dc1y + 1) = shogicount(dc1x, dc1y + 1) + 1
            shogicount(dc1x + 1, dc1y + 1) = shogicount(dc1x + 1, dc1y + 1) + 1
            shogicount(dc1x + 1, dc1y) = shogicount(dc1x + 1, dc1y) + 1
        End If
        If dc1x = 1 And dc1y > 1 And dc1y < 9 Then
            shogicount(dc1x, dc1y + 1) = shogicount(dc1x, dc1y + 1) + 1
            shogicount(dc1x + 1, dc1y + 1) = shogicount(dc1x + 1, dc1y + 1) + 1
            shogicount(dc1x + 1, dc1y) = shogicount(dc1x + 1, dc1y) + 1
            shogicount(dc1x + 1, dc1y - 1) = shogicount(dc1x + 1, dc1y - 1) + 1
            shogicount(dc1x, dc1y - 1) = shogicount(dc1x, dc1y - 1) + 1
        End If
        If dc1x = 1 And dc1y = 9 Then
            shogicount(dc1x + 1, dc1y) = shogicount(dc1x + 1, dc1y) + 1
            shogicount(dc1x + 1, dc1y - 1) = shogicount(dc1x + 1, dc1y - 1) + 1
            shogicount(dc1x, dc1y - 1) = shogicount(dc1x, dc1y - 1) + 1
        End If
        If dc1x > 1 And dc1x < 9 And dc1y = 9 Then
            shogicount(dc1x + 1, dc1y) = shogicount(dc1x + 1, dc1y) + 1
            shogicount(dc1x + 1, dc1y - 1) = shogicount(dc1x + 1, dc1y - 1) + 1
            shogicount(dc1x, dc1y - 1) = shogicount(dc1x, dc1y - 1) + 1
            shogicount(dc1x - 1, dc1y - 1) = shogicount(dc1x - 1, dc1y - 1) + 1
            shogicount(dc1x - 1, dc1y) = shogicount(dc1x - 1, dc1y) + 1
        End If
        If dc1x = 9 And dc1y = 9 Then
            shogicount(dc1x, dc1y - 1) = shogicount(dc1x, dc1y - 1) + 1
            shogicount(dc1x - 1, dc1y - 1) = shogicount(dc1x - 1, dc1y - 1) + 1
            shogicount(dc1x - 1, dc1y) = shogicount(dc1x - 1, dc1y) + 1
        End If
        If dc1x = 9 And dc1y > 1 And dc1y < 9 Then
            shogicount(dc1x, dc1y - 1) = shogicount(dc1x, dc1y - 1) + 1
            shogicount(dc1x - 1, dc1y - 1) = shogicount(dc1x - 1, dc1y - 1) + 1
            shogicount(dc1x - 1, dc1y) = shogicount(dc1x - 1, dc1y) + 1
            shogicount(dc1x - 1, dc1y + 1) = shogicount(dc1x - 1, dc1y + 1) + 1
            shogicount(dc1x, dc1y + 1) = shogicount(dc1x, dc1y + 1) + 1
        End If
        If dc1x = 9 And dc1y = 1 Then
            shogicount(dc1x - 1, dc1y) = shogicount(dc1x - 1, dc1y) + 1
            shogicount(dc1x - 1, dc1y + 1) = shogicount(dc1x - 1, dc1y + 1) + 1
            shogicount(dc1x, dc1y + 1) = shogicount(dc1x, dc1y + 1) + 1
        End If
        If dc1x > 1 And dc1x < 9 And dc1y = 1 Then
            shogicount(dc1x - 1, dc1y) = shogicount(dc1x - 1, dc1y) + 1
            shogicount(dc1x - 1, dc1y + 1) = shogicount(dc1x - 1, dc1y + 1) + 1
            shogicount(dc1x, dc1y + 1) = shogicount(dc1x, dc1y + 1) + 1
            shogicount(dc1x + 1, dc1y + 1) = shogicount(dc1x + 1, dc1y + 1) + 1
            shogicount(dc1x + 1, dc1y) = shogicount(dc1x + 1, dc1y) + 1
        End If
    End If
End Sub

Sub shobishopcount
    If dc3x > 1 And dc3x < 9 And dc3y > 1 And dc3y < 9 Then
        count = 0
        Do
            count = count + 1
            shogicount(dc3x - count, dc3y - count) = shogicount(dc3x - count, dc3y - count) + 1
        Loop Until dc3x - count = 1 Or dc3y - count = 1
        count = 0
        Do
            count = count + 1
            shogicount(dc3x - count, dc3y + count) = shogicount(dc3x - count, dc3y + count) + 1
        Loop Until dc3x - count = 1 Or dc3y + count = 9
        count = 0
        Do
            count = count + 1
            shogicount(dc3x + count, dc3y + count) = shogicount(dc3x + count, dc3y + count) + 1
        Loop Until dc3x + count = 9 Or dc3y + count = 9
        count = 0
        Do
            count = count + 1
            shogicount(dc3x + count, dc3y - count) = shogicount(dc3x + count, dc3y - count) + 1
        Loop Until dc3x + count = 9 Or dc3y - count = 1
    Else
        If dc3x = 1 And dc3y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc3x + count, dc3y + count) = shogicount(dc3x + count, dc3y + count) + 1
            Loop Until dc3x + count = 9 Or dc3y + count = 9
        End If
        If dc3x = 1 And dc3y > 1 And dc3y < 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc3x + count, dc3y + count) = shogicount(dc3x + count, dc3y + count) + 1
            Loop Until dc3x + count = 9 Or dc3y + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc3x + count, dc3y - count) = shogicount(dc3x + count, dc3y - count) + 1
            Loop Until dc3x + count = 9 Or dc3y - count = 1
        End If
        If dc3x = 1 And dc3y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc3x + count, dc3y - count) = shogicount(dc3x + count, dc3y - count) + 1
            Loop Until dc3x + count = 9 Or dc3y - count = 1
        End If
        If dc3x > 1 And dc3x < 9 And dc3y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc3x + count, dc3y - count) = shogicount(dc3x + count, dc3y - count) + 1
            Loop Until dc3x + count = 9 Or dc3y - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc3x - count, dc3y - count) = shogicount(dc3x - count, dc3y - count) + 1
            Loop Until dc3x - count = 1 Or dc3y - count = 1
        End If
        If dc3x = 9 And dc3y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc3x - count, dc3y - count) = shogicount(dc3x - count, dc3y - count) + 1
            Loop Until dc3x - count = 1 Or dc3y - count = 1
        End If
        If dc3x = 9 And dc3y > 1 And dc3y < 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc3x - count, dc3y - count) = shogicount(dc3x - count, dc3y - count) + 1
            Loop Until dc3x - count = 1 Or dc3y - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc3x - count, dc3y + count) = shogicount(dc3x - count, dc3y + count) + 1
            Loop Until dc3x - count = 1 Or dc3y + count = 9
        End If
        If dc3x = 9 And dc3y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc3x - count, dc3y + count) = shogicount(dc3x - count, dc3y + count) + 1
            Loop Until dc3x - count = 1 Or dc3y + count = 9
        End If
        If dc3x > 1 And dc3x < 9 And dc3y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc3x - count, dc3y + count) = shogicount(dc3x - count, dc3y + count) + 1
            Loop Until dc3x - count = 1 Or dc3y + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc3x + count, dc3y + count) = shogicount(dc3x + count, dc3y + count) + 1
            Loop Until dc3x + count = 9 Or dc3y + count = 9
        End If
    End If
End Sub

Sub shorookcount
    If dc5x > 1 And dc5x < 9 And dc5y > 1 And dc5y < 9 Then
        count = 0
        Do
            count = count + 1
            shogicount(dc5x - count, dc5y) = shogicount(dc5x - count, dc5y) + 1
        Loop Until dc5x - count = 1
        count = 0
        Do
            count = count + 1
            shogicount(dc5x, dc5y + count) = shogicount(dc5x, dc5y + count) + 1
        Loop Until dc5y + count = 9
        count = 0
        Do
            count = count + 1
            shogicount(dc5x + count, dc5y) = shogicount(dc5x + count, dc5y) + 1
        Loop Until dc5x + count = 9
        count = 0
        Do
            count = count + 1
            shogicount(dc5x, dc5y - count) = shogicount(dc5x, dc5y - count) + 1
        Loop Until dc5y - count = 1
    Else
        If dc5x = 1 And dc5y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc5x, dc5y + count) = shogicount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc5x + count, dc5y) = shogicount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 9
        End If
        If dc5x = 1 And dc5y > 1 And dc5y < 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc5x, dc5y + count) = shogicount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc5x + count, dc5y) = shogicount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc5x, dc5y - count) = shogicount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
        End If
        If dc5x = 1 And dc5y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc5x + count, dc5y) = shogicount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc5x, dc5y - count) = shogicount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
        End If
        If dc5x > 1 And dc5x < 9 And dc5y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc5x + count, dc5y) = shogicount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc5x, dc5y - count) = shogicount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc5x - count, dc5y) = shogicount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
        End If
        If dc5x = 9 And dc5y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc5x, dc5y - count) = shogicount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc5x - count, dc5y) = shogicount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
        End If
        If dc5x = 9 And dc5y > 1 And dc5y < 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc5x, dc5y - count) = shogicount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc5x - count, dc5y) = shogicount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc5x, dc5y + count) = shogicount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 9
        End If
        If dc5x = 9 And dc5y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc5x - count, dc5y) = shogicount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc5x, dc5y + count) = shogicount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 9
        End If
        If dc5x > 1 And dc5x < 9 And dc5y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc5x - count, dc5y) = shogicount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc5x, dc5y + count) = shogicount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc5x + count, dc5y) = shogicount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 9
        End If
    End If
End Sub

Sub steedcount
    If dc6x > 1 And dc6x < 9 And dc6y > 1 And dc6y < 9 Then
        count = 0
        Do
            count = count + 1
            shogicount(dc6x - count, dc6y - count) = shogicount(dc6x - count, dc6y - count) + 1
        Loop Until dc6x - count = 1 Or dc6y - count = 1
        count = 0
        Do
            count = count + 1
            shogicount(dc6x - count, dc6y + count) = shogicount(dc6x - count, dc6y + count) + 1
        Loop Until dc6x - count = 1 Or dc6y + count = 9
        count = 0
        Do
            count = count + 1
            shogicount(dc6x + count, dc6y + count) = shogicount(dc6x + count, dc6y + count) + 1
        Loop Until dc6x + count = 9 Or dc6y + count = 9
        count = 0
        Do
            count = count + 1
            shogicount(dc6x + count, dc6y - count) = shogicount(dc6x + count, dc6y - count) + 1
        Loop Until dc6x + count = 9 Or dc6y - count = 1
    Else
        If dc6x = 1 And dc6y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc6x + count, dc6y + count) = shogicount(dc6x + count, dc6y + count) + 1
            Loop Until dc6x + count = 9 Or dc6y + count = 9
        End If
        If dc6x = 1 And dc6y > 1 And dc6y < 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc6x + count, dc6y + count) = shogicount(dc6x + count, dc6y + count) + 1
            Loop Until dc6x + count = 9 Or dc6y + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc6x + count, dc6y - count) = shogicount(dc6x + count, dc6y - count) + 1
            Loop Until dc6x + count = 9 Or dc6y - count = 1
        End If
        If dc6x = 1 And dc6y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc6x + count, dc6y - count) = shogicount(dc6x + count, dc6y - count) + 1
            Loop Until dc6x + count = 9 Or dc6y - count = 1
        End If
        If dc6x > 1 And dc6x < 9 And dc6y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc6x + count, dc6y - count) = shogicount(dc6x + count, dc6y - count) + 1
            Loop Until dc6x + count = 9 Or dc6y - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc6x - count, dc6y - count) = shogicount(dc6x - count, dc6y - count) + 1
            Loop Until dc6x - count = 1 Or dc6y - count = 1
        End If
        If dc6x = 9 And dc6y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc6x - count, dc6y - count) = shogicount(dc6x - count, dc6y - count) + 1
            Loop Until dc6x - count = 1 Or dc6y - count = 1
        End If
        If dc6x = 9 And dc6y > 1 And dc6y < 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc6x - count, dc6y - count) = shogicount(dc6x - count, dc6y - count) + 1
            Loop Until dc6x - count = 1 Or dc6y - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc6x - count, dc6y + count) = shogicount(dc6x - count, dc6y + count) + 1
            Loop Until dc6x - count = 1 Or dc6y + count = 9
        End If
        If dc6x = 9 And dc6y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc6x - count, dc6y + count) = shogicount(dc6x - count, dc6y + count) + 1
            Loop Until dc6x - count = 1 Or dc6y + count = 9
        End If
        If dc6x > 1 And dc6x < 9 And dc6y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc6x - count, dc6y + count) = shogicount(dc6x - count, dc6y + count) + 1
            Loop Until dc6x - count = 1 Or dc6y + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc6x + count, dc6y + count) = shogicount(dc6x + count, dc6y + count) + 1
            Loop Until dc6x + count = 9 Or dc6y + count = 9
        End If
    End If
    If dc6x > 1 And dc6x < 9 And dc6y > 1 And dc6y < 9 Then
        shogicount(dc6x - 1, dc6y) = shogicount(dc6x - 1, dc6y) + 1
        shogicount(dc6x, dc6y + 1) = shogicount(dc6x, dc6y + 1) + 1
        shogicount(dc6x + 1, dc6y) = shogicount(dc6x + 1, dc6y) + 1
        shogicount(dc6x, dc6y - 1) = shogicount(dc6x, dc6y - 1) + 1
    Else
        If dc6x = 1 And dc6y = 1 Then
            shogicount(dc6x, dc6y + 1) = shogicount(dc6x, dc6y + 1) + 1
            shogicount(dc6x + 1, dc6y) = shogicount(dc6x + 1, dc6y) + 1
        End If
        If dc6x = 1 And dc6y > 1 And dc6y < 9 Then
            shogicount(dc6x, dc6y + 1) = shogicount(dc6x, dc6y + 1) + 1
            shogicount(dc6x + 1, dc6y) = shogicount(dc6x + 1, dc6y) + 1
            shogicount(dc6x, dc6y - 1) = shogicount(dc6x, dc6y - 1) + 1
        End If
        If dc6x = 1 And dc6y = 9 Then
            shogicount(dc6x + 1, dc6y) = shogicount(dc6x + 1, dc6y) + 1
            shogicount(dc6x, dc6y - 1) = shogicount(dc6x, dc6y - 1) + 1
        End If
        If dc6x > 1 And dc6x < 9 And dc6y = 9 Then
            shogicount(dc6x + 1, dc6y) = shogicount(dc6x + 1, dc6y) + 1
            shogicount(dc6x, dc6y - 1) = shogicount(dc6x, dc6y - 1) + 1
            shogicount(dc6x - 1, dc6y) = shogicount(dc6x - 1, dc6y) + 1
        End If
        If dc6x = 9 And dc6y = 9 Then
            shogicount(dc6x, dc6y - 1) = shogicount(dc6x, dc6y - 1) + 1
            shogicount(dc6x - 1, dc6y) = shogicount(dc6x - 1, dc6y) + 1
        End If
        If dc6x = 9 And dc6y > 1 And dc6y < 9 Then
            shogicount(dc6x, dc6y - 1) = shogicount(dc6x, dc6y - 1) + 1
            shogicount(dc6x - 1, dc6y) = shogicount(dc6x - 1, dc6y) + 1
            shogicount(dc6x, dc6y + 1) = shogicount(dc6x, dc6y + 1) + 1
        End If
        If dc6x = 9 And dc6y = 1 Then
            shogicount(dc6x - 1, dc6y) = shogicount(dc6x - 1, dc6y) + 1
            shogicount(dc6x, dc6y + 1) = shogicount(dc6x, dc6y + 1) + 1
        End If
        If dc6x > 1 And dc6x < 9 And dc6y = 1 Then
            shogicount(dc6x - 1, dc6y) = shogicount(dc6x - 1, dc6y) + 1
            shogicount(dc6x, dc6y + 1) = shogicount(dc6x, dc6y + 1) + 1
            shogicount(dc6x + 1, dc6y) = shogicount(dc6x + 1, dc6y) + 1
        End If
    End If
End Sub

Sub dragoncount
    If dc7x > 1 And dc7x < 9 And dc7y > 1 And dc7y < 9 Then
        count = 0
        Do
            count = count + 1
            shogicount(dc7x - count, dc7y) = shogicount(dc7x - count, dc7y) + 1
        Loop Until dc7x - count = 1
        count = 0
        Do
            count = count + 1
            shogicount(dc7x, dc7y + count) = shogicount(dc7x, dc7y + count) + 1
        Loop Until dc7y + count = 9
        count = 0
        Do
            count = count + 1
            shogicount(dc7x + count, dc7y) = shogicount(dc7x + count, dc7y) + 1
        Loop Until dc7x + count = 9
        count = 0
        Do
            count = count + 1
            shogicount(dc7x, dc7y - count) = shogicount(dc7x, dc7y - count) + 1
        Loop Until dc7y - count = 1
    Else
        If dc7x = 1 And dc7y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc7x, dc7y + count) = shogicount(dc7x, dc7y + count) + 1
            Loop Until dc7y + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc7x + count, dc7y) = shogicount(dc7x + count, dc7y) + 1
            Loop Until dc7x + count = 9
        End If
        If dc7x = 1 And dc7y > 1 And dc7y < 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc7x, dc7y + count) = shogicount(dc7x, dc7y + count) + 1
            Loop Until dc7y + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc7x + count, dc7y) = shogicount(dc7x + count, dc7y) + 1
            Loop Until dc7x + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc7x, dc7y - count) = shogicount(dc7x, dc7y - count) + 1
            Loop Until dc7y - count = 1
        End If
        If dc7x = 1 And dc7y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc7x + count, dc7y) = shogicount(dc7x + count, dc7y) + 1
            Loop Until dc7x + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc7x, dc7y - count) = shogicount(dc7x, dc7y - count) + 1
            Loop Until dc7y - count = 1
        End If
        If dc7x > 1 And dc7x < 9 And dc7y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc7x + count, dc7y) = shogicount(dc7x + count, dc7y) + 1
            Loop Until dc7x + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc7x, dc7y - count) = shogicount(dc7x, dc7y - count) + 1
            Loop Until dc7y - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc7x - count, dc7y) = shogicount(dc7x - count, dc7y) + 1
            Loop Until dc7x - count = 1
        End If
        If dc7x = 9 And dc7y = 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc7x, dc7y - count) = shogicount(dc7x, dc7y - count) + 1
            Loop Until dc7y - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc7x - count, dc7y) = shogicount(dc7x - count, dc7y) + 1
            Loop Until dc7x - count = 1
        End If
        If dc7x = 9 And dc7y > 1 And dc7y < 9 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc7x, dc7y - count) = shogicount(dc7x, dc7y - count) + 1
            Loop Until dc7y - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc7x - count, dc7y) = shogicount(dc7x - count, dc7y) + 1
            Loop Until dc7x - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc7x, dc7y + count) = shogicount(dc7x, dc7y + count) + 1
            Loop Until dc7y + count = 9
        End If
        If dc7x = 9 And dc7y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc7x - count, dc7y) = shogicount(dc7x - count, dc7y) + 1
            Loop Until dc7x - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc7x, dc7y + count) = shogicount(dc7x, dc7y + count) + 1
            Loop Until dc7y + count = 9
        End If
        If dc7x > 1 And dc7x < 9 And dc7y = 1 Then
            count = 0
            Do
                count = count + 1
                shogicount(dc7x - count, dc7y) = shogicount(dc7x - count, dc7y) + 1
            Loop Until dc7x - count = 1
            count = 0
            Do
                count = count + 1
                shogicount(dc7x, dc7y + count) = shogicount(dc7x, dc7y + count) + 1
            Loop Until dc7y + count = 9
            count = 0
            Do
                count = count + 1
                shogicount(dc7x + count, dc7y) = shogicount(dc7x + count, dc7y) + 1
            Loop Until dc7x + count = 9
        End If
    End If
    If dc7x > 1 And dc7x < 9 And dc7y > 1 And dc7y < 9 Then
        shogicount(dc7x - 1, dc7y - 1) = shogicount(dc7x - 1, dc7y - 1) + 1
        shogicount(dc7x - 1, dc7y + 1) = shogicount(dc7x - 1, dc7y + 1) + 1
        shogicount(dc7x + 1, dc7y + 1) = shogicount(dc7x + 1, dc7y + 1) + 1
        shogicount(dc7x + 1, dc7y - 1) = shogicount(dc7x + 1, dc7y - 1) + 1
    Else
        If dc7x = 1 And dc7y = 1 Then
            shogicount(dc7x + 1, dc7y + 1) = shogicount(dc7x + 1, dc7y + 1) + 1
        End If
        If dc7x = 1 And dc7y > 1 And dc7y < 9 Then
            shogicount(dc7x + 1, dc7y + 1) = shogicount(dc7x + 1, dc7y + 1) + 1
            shogicount(dc7x + 1, dc7y - 1) = shogicount(dc7x + 1, dc7y - 1) + 1
        End If
        If dc7x = 1 And dc7y = 9 Then
            shogicount(dc7x + 1, dc7y - 1) = shogicount(dc7x + 1, dc7y - 1) + 1
        End If
        If dc7x > 1 And dc7x < 9 And dc7y = 9 Then
            shogicount(dc7x + 1, dc7y - 1) = shogicount(dc7x + 1, dc7y - 1) + 1
            shogicount(dc7x - 1, dc7y - 1) = shogicount(dc7x - 1, dc7y - 1) + 1
        End If
        If dc7x = 9 And dc7y = 9 Then
            shogicount(dc7x - 1, dc7y - 1) = shogicount(dc7x - 1, dc7y - 1) + 1
        End If
        If dc7x = 9 And dc7y > 1 And dc7y < 9 Then
            shogicount(dc7x - 1, dc7y - 1) = shogicount(dc7x - 1, dc7y - 1) + 1
            shogicount(dc7x - 1, dc7y + 1) = shogicount(dc7x - 1, dc7y + 1) + 1
        End If
        If dc7x = 9 And dc7y = 1 Then
            shogicount(dc7x - 1, dc7y + 1) = shogicount(dc7x - 1, dc7y + 1) + 1
        End If
        If dc7x > 1 And dc7x < 9 And dc7y = 1 Then
            shogicount(dc7x - 1, dc7y + 1) = shogicount(dc7x - 1, dc7y + 1) + 1
            shogicount(dc7x + 1, dc7y + 1) = shogicount(dc7x + 1, dc7y + 1) + 1
        End If
    End If
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

Sub chess
    x = 50: For y = 82 To 402 Step 69
        Call cells
        If y = 82 Then Call king
        If y = 151 Then Call queen
        If y = 220 Then Call bishop
        If y = 289 Then Call knight
        If y = 358 Then Call rook
    Next y

    x = 540: For y = 186 To 306 Step 69
        Call cells
    Next y

    new1x = 0: new2x = 0: new3x = 0: new4x = 0: new5x = 0
    new1y = 0: new2y = 0: new3y = 0: new4y = 0: new5y = 0
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

    chessgenerate:
    dc2x = Int(Rnd * 8 + 1)
    dc2y = Int(Rnd * 8 + 1)
    f2 = chebo(dc2x, dc2y)
    For index = 1 To 31
        If Abs(f1 - f2) = dif(index) Then GoTo chessgenerate
    Next index
    dc3x = Int(Rnd * 8 + 1)
    dc3y = Int(Rnd * 8 + 1)
    f3 = chebo(dc3x, dc3y)
    For index = 1 To 31
        If Abs(f1 - f3) = dif(index) Then GoTo chessgenerate
        If Abs(f2 - f3) = dif(index) Then GoTo chessgenerate
    Next index
    dc4x = Int(Rnd * 8 + 1)
    dc4y = Int(Rnd * 8 + 1)
    f4 = chebo(dc4x, dc4y)
    For index = 1 To 31
        If Abs(f1 - f4) = dif(index) Then GoTo chessgenerate
        If Abs(f2 - f4) = dif(index) Then GoTo chessgenerate
        If Abs(f3 - f4) = dif(index) Then GoTo chessgenerate
    Next index
    dc5x = Int(Rnd * 8 + 1)
    dc5y = Int(Rnd * 8 + 1)
    f5 = chebo(dc5x, dc5y)
    For index = 1 To 31
        If Abs(f1 - f5) = dif(index) Then GoTo chessgenerate
        If Abs(f2 - f5) = dif(index) Then GoTo chessgenerate
        If Abs(f3 - f5) = dif(index) Then GoTo chessgenerate
        If Abs(f4 - f5) = dif(index) Then GoTo chessgenerate
    Next index
    For index = 1 To 31
        If Abs(f1 - f2) = dif(index) Then GoTo chessgenerate
        If Abs(f1 - f3) = dif(index) Then GoTo chessgenerate
        If Abs(f1 - f4) = dif(index) Then GoTo chessgenerate
        If Abs(f1 - f5) = dif(index) Then GoTo chessgenerate
        If Abs(f2 - f3) = dif(index) Then GoTo chessgenerate
        If Abs(f2 - f4) = dif(index) Then GoTo chessgenerate
        If Abs(f2 - f5) = dif(index) Then GoTo chessgenerate
        If Abs(f3 - f4) = dif(index) Then GoTo chessgenerate
        If Abs(f3 - f5) = dif(index) Then GoTo chessgenerate
        If Abs(f4 - f5) = dif(index) Then GoTo chessgenerate
    Next index

    Call kingcount
    Call queencount
    Call bishopcount
    Call knightcount
    Call rookcount

    cn = 1
    For row = 1 To 8 Step 1: For col = 1 To 8 Step 1
            x = (col * 40) + 135: y = (row * 40) + 55
            If chesscount(col, row) = 0 Then Call number0
            If chesscount(col, row) = 1 Then Call number1
            If chesscount(col, row) = 2 Then Call number2
            If chesscount(col, row) = 3 Then Call number3
            If chesscount(col, row) = 4 Then Call number4
            If chesscount(col, row) = 5 Then Call number5
    Next col: Print: Next row
    cn = 7

    chessfigure:
    Locate 2: Color 2: Print "      Select figure number (1, 2, 3, 4, 5) and set coordinates (A-H, 1-8)."
    cf = 8
    Do
        Select Case InKey$
            Case Is = Chr$(49)
                z = 1: y = 82: x = 50
                If new1x <> 0 Then
                    Rem
                Else
                    Call king
                    GoTo chesscoordinatex
                End If
            Case Is = Chr$(50)
                z = 2: y = 151: x = 50
                If new2x <> 0 Then
                    Rem
                Else
                    Call queen
                    GoTo chesscoordinatex
                End If
            Case Is = Chr$(51)
                z = 3: y = 220: x = 50
                If new3x <> 0 Then
                    Rem
                Else
                    Call bishop
                    GoTo chesscoordinatex
                End If
            Case Is = Chr$(52)
                z = 4: y = 289: x = 50
                If new4x <> 0 Then
                    Rem
                Else
                    Call knight
                    GoTo chesscoordinatex
                End If
            Case Is = Chr$(53)
                z = 5: y = 358: x = 50
                If new5x <> 0 Then
                    Rem
                Else
                    Call rook
                    GoTo chesscoordinatex
                End If
            Case Is = Chr$(13)
                Call chesssolution
            Case Is = Chr$(27)
                GoTo chessmenu
        End Select
    Loop

    chesscoordinatex:
    Do
        k$ = InKey$
        If k$ = Chr$(97) Or k$ = Chr$(65) Then
            If z = 1 Then new1x = 1
            If z = 2 Then new2x = 1
            If z = 3 Then new3x = 1
            If z = 4 Then new4x = 1
            If z = 5 Then new5x = 1
            x = 540: y = 186
            Call cells
            Call letterA
            Exit Do
        End If
        If k$ = Chr$(98) Or k$ = Chr$(66) Then
            If z = 1 Then new1x = 2
            If z = 2 Then new2x = 2
            If z = 3 Then new3x = 2
            If z = 4 Then new4x = 2
            If z = 5 Then new5x = 2
            x = 540: y = 186
            Call cells
            Call letterB
            Exit Do
        End If
        If k$ = Chr$(99) Or k$ = Chr$(67) Then
            If z = 1 Then new1x = 3
            If z = 2 Then new2x = 3
            If z = 3 Then new3x = 3
            If z = 4 Then new4x = 3
            If z = 5 Then new5x = 3
            x = 540: y = 186
            Call cells
            Call letterC
            Exit Do
        End If
        If k$ = Chr$(100) Or k$ = Chr$(68) Then
            If z = 1 Then new1x = 4
            If z = 2 Then new2x = 4
            If z = 3 Then new3x = 4
            If z = 4 Then new4x = 4
            If z = 5 Then new5x = 4
            x = 540: y = 186
            Call cells
            Call letterD
            Exit Do
        End If
        If k$ = Chr$(101) Or k$ = Chr$(69) Then
            If z = 1 Then new1x = 5
            If z = 2 Then new2x = 5
            If z = 3 Then new3x = 5
            If z = 4 Then new4x = 5
            If z = 5 Then new5x = 5
            x = 540: y = 186
            Call cells
            Call letterE
            Exit Do
        End If
        If k$ = Chr$(102) Or k$ = Chr$(70) Then
            If z = 1 Then new1x = 6
            If z = 2 Then new2x = 6
            If z = 3 Then new3x = 6
            If z = 4 Then new4x = 6
            If z = 5 Then new5x = 6
            x = 540: y = 186
            Call cells
            Call letterF
            Exit Do
        End If
        If k$ = Chr$(103) Or k$ = Chr$(71) Then
            If z = 1 Then new1x = 7
            If z = 2 Then new2x = 7
            If z = 3 Then new3x = 7
            If z = 4 Then new4x = 7
            If z = 5 Then new5x = 7
            x = 540: y = 186
            Call cells
            Call letterG
            Exit Do
        End If
        If k$ = Chr$(104) Or k$ = Chr$(72) Then
            If z = 1 Then new1x = 8
            If z = 2 Then new2x = 8
            If z = 3 Then new3x = 8
            If z = 4 Then new4x = 8
            If z = 5 Then new5x = 8
            x = 540: y = 186
            Call cells
            Call letterH
            Exit Do
        End If
        If k$ = Chr$(13) Then Call chesssolution
        If k$ = Chr$(27) Then System
    Loop

    chesscoordinatey:
    Do
        k$ = InKey$
        If k$ = Chr$(49) Then
            If z = 1 Then new1y = 1
            If z = 2 Then new2y = 1
            If z = 3 Then new3y = 1
            If z = 4 Then new4y = 1
            If z = 5 Then new5y = 1
            x = 540: y = 255
            Call cells
            Call letter1
            Exit Do
        End If
        If k$ = Chr$(50) Then
            If z = 1 Then new1y = 2
            If z = 2 Then new2y = 2
            If z = 3 Then new3y = 2
            If z = 4 Then new4y = 2
            If z = 5 Then new5y = 2
            x = 540: y = 255
            Call cells
            Call letter2
            Exit Do
        End If
        If k$ = Chr$(51) Then
            If z = 1 Then new1y = 3
            If z = 2 Then new2y = 3
            If z = 3 Then new3y = 3
            If z = 4 Then new4y = 3
            If z = 5 Then new5y = 3
            x = 540: y = 255
            Call cells
            Call letter3
            Exit Do
        End If
        If k$ = Chr$(52) Then
            If z = 1 Then new1y = 4
            If z = 2 Then new2y = 4
            If z = 3 Then new3y = 4
            If z = 4 Then new4y = 4
            If z = 5 Then new5y = 4
            x = 540: y = 255
            Call cells
            Call letter4
            Exit Do
        End If
        If k$ = Chr$(53) Then
            If z = 1 Then new1y = 5
            If z = 2 Then new2y = 5
            If z = 3 Then new3y = 5
            If z = 4 Then new4y = 5
            If z = 5 Then new5y = 5
            x = 540: y = 255
            Call cells
            Call letter5
            Exit Do
        End If
        If k$ = Chr$(54) Then
            If z = 1 Then new1y = 6
            If z = 2 Then new2y = 6
            If z = 3 Then new3y = 6
            If z = 4 Then new4y = 6
            If z = 5 Then new5y = 6
            x = 540: y = 255
            Call cells
            Call letter6
            Exit Do
        End If
        If k$ = Chr$(55) Then
            If z = 1 Then new1y = 7
            If z = 2 Then new2y = 7
            If z = 3 Then new3y = 7
            If z = 4 Then new4y = 7
            If z = 5 Then new5y = 7
            x = 540: y = 255
            Call cells
            Call letter7
            Exit Do
        End If
        If k$ = Chr$(56) Then
            If z = 1 Then new1y = 8
            If z = 2 Then new2y = 8
            If z = 3 Then new3y = 8
            If z = 4 Then new4y = 8
            If z = 5 Then new5y = 8
            x = 540: y = 255
            Call cells
            Call letter8
            Exit Do
        End If
        If k$ = Chr$(13) Then Call chesssolution
        If k$ = Chr$(27) Then System
    Loop

    If z = 1 Then
        x = (new1x * 40) + 120: y = Abs((new1y * 40) - 400)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call king
    End If
    If z = 2 Then
        x = (new2x * 40) + 120: y = Abs((new2y * 40) - 400)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call queen
    End If
    If z = 3 Then
        x = (new3x * 40) + 120: y = Abs((new3y * 40) - 400)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call bishop
    End If
    If z = 4 Then
        x = (new4x * 40) + 120: y = Abs((new4y * 40) - 400)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call knight
    End If
    If z = 5 Then
        x = (new5x * 40) + 120: y = Abs((new5y * 40) - 400)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call rook
    End If

    cf = 7
    If new1y = 0 Or new2y = 0 Or new3y = 0 Or new4y = 0 Or new5y = 0 Then GoTo chessfigure

    If dc1x = new1x And dc1y = Abs(new1y - 9) And dc2x = new2x And dc2y = Abs(new2y - 9) And dc3x = new3x And dc3y = Abs(new3y - 9) And dc4x = new4x And dc4y = Abs(new4y - 9) And dc5x = new5x And dc5y = Abs(new5y - 9) Then
        Locate 2: Color 2: Print "                       C o n g r a t u l a t i o n   ! ! !                      "
    Else
        Locate 2: Color 2: Print "                   I n a c c u r a c y   a d m i t t e d . . .                  "
        Call chesssolution
    End If

    Do
    Loop Until InKey$ <> ""

    chessmenu:
    Cls
    Call chessboard
    x = 50: For y = 82 To 402 Step 69
        Call cells
        If y = 82 Then Call king
        If y = 151 Then Call queen
        If y = 220 Then Call bishop
        If y = 289 Then Call knight
        If y = 358 Then Call rook
    Next y
    x = 540: For y = 186 To 306 Step 69
        Call cells
    Next y
    cn = 1
    For row = 1 To 8 Step 1: For col = 1 To 8 Step 1
            x = (col * 40) + 135: y = (row * 40) + 55
            If chesscount(col, row) = 0 Then Call number0
            If chesscount(col, row) = 1 Then Call number1
            If chesscount(col, row) = 2 Then Call number2
            If chesscount(col, row) = 3 Then Call number3
            If chesscount(col, row) = 4 Then Call number4
            If chesscount(col, row) = 5 Then Call number5
    Next col: Print: Next row
    cn = 7
    new1x = 0: new2x = 0: new3x = 0: new4x = 0: new5x = 0
    new1y = 0: new2y = 0: new3y = 0: new4y = 0: new5y = 0
End Sub

Sub makruk
    x = 50: For y = 117 To 367 Step 69
        Call cells
        If y = 117 Then Call king
        If y = 186 Then Call queen
        If y = 255 Then Call knight
        If y = 324 Then Call rook
    Next y

    x = 540: For y = 186 To 306 Step 69
        Call cells
    Next y

    new1x = 0: new2x = 0: new4x = 0: new5x = 0
    new1y = 0: new2y = 0: new4y = 0: new5y = 0
    count = 0: index = 0
    dc1x = Int(Rnd * 8 + 1)
    dc1y = Int(Rnd * 8 + 1)
    dc2x = Int(Rnd * 8 + 1)
    dc2y = Int(Rnd * 8 + 1)
    dc4x = Int(Rnd * 8 + 1)
    dc4y = Int(Rnd * 8 + 1)
    dc5x = Int(Rnd * 8 + 1)
    dc5y = Int(Rnd * 8 + 1)
    f1 = chebo(dc1x, dc1y)
    f2 = chebo(dc2x, dc2y)
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

    makrukgenerate:
    dc2x = Int(Rnd * 8 + 1)
    dc2y = Int(Rnd * 8 + 1)
    f2 = chebo(dc2x, dc2y)
    For index = 1 To 31
        If Abs(f1 - f2) = dif(index) Then GoTo makrukgenerate
    Next index
    dc4x = Int(Rnd * 8 + 1)
    dc4y = Int(Rnd * 8 + 1)
    f4 = chebo(dc4x, dc4y)
    For index = 1 To 31
        If Abs(f1 - f4) = dif(index) Then GoTo makrukgenerate
        If Abs(f2 - f4) = dif(index) Then GoTo makrukgenerate
    Next index
    dc5x = Int(Rnd * 8 + 1)
    dc5y = Int(Rnd * 8 + 1)
    f5 = chebo(dc5x, dc5y)
    For index = 1 To 31
        If Abs(f1 - f5) = dif(index) Then GoTo makrukgenerate
        If Abs(f2 - f5) = dif(index) Then GoTo makrukgenerate
        If Abs(f3 - f5) = dif(index) Then GoTo makrukgenerate
    Next index
    For index = 1 To 31
        If Abs(f1 - f2) = dif(index) Then GoTo makrukgenerate
        If Abs(f1 - f4) = dif(index) Then GoTo makrukgenerate
        If Abs(f1 - f5) = dif(index) Then GoTo makrukgenerate
        If Abs(f2 - f4) = dif(index) Then GoTo makrukgenerate
        If Abs(f2 - f5) = dif(index) Then GoTo makrukgenerate
        If Abs(f4 - f5) = dif(index) Then GoTo makrukgenerate
    Next index

    Call kingcount
    Call seedcount
    Call knightcount
    Call rookcount

    cn = 1
    For row = 1 To 8 Step 1: For col = 1 To 8 Step 1
            x = (col * 40) + 135: y = (row * 40) + 55
            If chesscount(col, row) = 0 Then Call number0
            If chesscount(col, row) = 1 Then Call number1
            If chesscount(col, row) = 2 Then Call number2
            If chesscount(col, row) = 3 Then Call number3
            If chesscount(col, row) = 4 Then Call number4
    Next col: Print: Next row
    cn = 7

    makrukfigure:
    Locate 2: Color 2: Print "       Select figure number (1, 2, 3, 4) and set coordinates (A-H, 1-8)."
    cf = 8
    Do
        Select Case InKey$
            Case Is = Chr$(49)
                z = 1: y = 117: x = 50
                If new1x <> 0 Then
                    Rem
                Else
                    Call king
                    GoTo makrukcoordinatex
                End If
            Case Is = Chr$(50)
                z = 2: y = 186: x = 50
                If new2x <> 0 Then
                    Rem
                Else
                    Call queen
                    GoTo makrukcoordinatex
                End If
            Case Is = Chr$(51)
                z = 4: y = 255: x = 50
                If new4x <> 0 Then
                    Rem
                Else
                    Call knight
                    GoTo makrukcoordinatex
                End If
            Case Is = Chr$(52)
                z = 5: y = 324: x = 50
                If new5x <> 0 Then
                    Rem
                Else
                    Call rook
                    GoTo makrukcoordinatex
                End If
            Case Is = Chr$(13)
                Call makruksolution
            Case Is = Chr$(27)
                GoTo makrukmenu
        End Select
    Loop

    makrukcoordinatex:
    Do
        k$ = InKey$
        If k$ = Chr$(97) Or k$ = Chr$(65) Then
            If z = 1 Then new1x = 1
            If z = 2 Then new2x = 1
            If z = 4 Then new4x = 1
            If z = 5 Then new5x = 1
            x = 540: y = 186
            Call cells
            Call letterA
            Exit Do
        End If
        If k$ = Chr$(98) Or k$ = Chr$(66) Then
            If z = 1 Then new1x = 2
            If z = 2 Then new2x = 2
            If z = 4 Then new4x = 2
            If z = 5 Then new5x = 2
            x = 540: y = 186
            Call cells
            Call letterB
            Exit Do
        End If
        If k$ = Chr$(99) Or k$ = Chr$(67) Then
            If z = 1 Then new1x = 3
            If z = 2 Then new2x = 3
            If z = 4 Then new4x = 3
            If z = 5 Then new5x = 3
            x = 540: y = 186
            Call cells
            Call letterC
            Exit Do
        End If
        If k$ = Chr$(100) Or k$ = Chr$(68) Then
            If z = 1 Then new1x = 4
            If z = 2 Then new2x = 4
            If z = 4 Then new4x = 4
            If z = 5 Then new5x = 4
            x = 540: y = 186
            Call cells
            Call letterD
            Exit Do
        End If
        If k$ = Chr$(101) Or k$ = Chr$(69) Then
            If z = 1 Then new1x = 5
            If z = 2 Then new2x = 5
            If z = 4 Then new4x = 5
            If z = 5 Then new5x = 5
            x = 540: y = 186
            Call cells
            Call letterE
            Exit Do
        End If
        If k$ = Chr$(102) Or k$ = Chr$(70) Then
            If z = 1 Then new1x = 6
            If z = 2 Then new2x = 6
            If z = 4 Then new4x = 6
            If z = 5 Then new5x = 6
            x = 540: y = 186
            Call cells
            Call letterF
            Exit Do
        End If
        If k$ = Chr$(103) Or k$ = Chr$(71) Then
            If z = 1 Then new1x = 7
            If z = 2 Then new2x = 7
            If z = 4 Then new4x = 7
            If z = 5 Then new5x = 7
            x = 540: y = 186
            Call cells
            Call letterG
            Exit Do
        End If
        If k$ = Chr$(104) Or k$ = Chr$(72) Then
            If z = 1 Then new1x = 8
            If z = 2 Then new2x = 8
            If z = 4 Then new4x = 8
            If z = 5 Then new5x = 8
            x = 540: y = 186
            Call cells
            Call letterH
            Exit Do
        End If
        If k$ = Chr$(13) Then Call makruksolution
        If k$ = Chr$(27) Then System
    Loop

    makrukcoordinatey:
    Do
        k$ = InKey$
        If k$ = Chr$(49) Then
            If z = 1 Then new1y = 1
            If z = 2 Then new2y = 1
            If z = 4 Then new4y = 1
            If z = 5 Then new5y = 1
            x = 540: y = 255
            Call cells
            Call letter1
            Exit Do
        End If
        If k$ = Chr$(50) Then
            If z = 1 Then new1y = 2
            If z = 2 Then new2y = 2
            If z = 4 Then new4y = 2
            If z = 5 Then new5y = 2
            x = 540: y = 255
            Call cells
            Call letter2
            Exit Do
        End If
        If k$ = Chr$(51) Then
            If z = 1 Then new1y = 3
            If z = 2 Then new2y = 3
            If z = 4 Then new4y = 3
            If z = 5 Then new5y = 3
            x = 540: y = 255
            Call cells
            Call letter3
            Exit Do
        End If
        If k$ = Chr$(52) Then
            If z = 1 Then new1y = 4
            If z = 2 Then new2y = 4
            If z = 4 Then new4y = 4
            If z = 5 Then new5y = 4
            x = 540: y = 255
            Call cells
            Call letter4
            Exit Do
        End If
        If k$ = Chr$(53) Then
            If z = 1 Then new1y = 5
            If z = 2 Then new2y = 5
            If z = 4 Then new4y = 5
            If z = 5 Then new5y = 5
            x = 540: y = 255
            Call cells
            Call letter5
            Exit Do
        End If
        If k$ = Chr$(54) Then
            If z = 1 Then new1y = 6
            If z = 2 Then new2y = 6
            If z = 4 Then new4y = 6
            If z = 5 Then new5y = 6
            x = 540: y = 255
            Call cells
            Call letter6
            Exit Do
        End If
        If k$ = Chr$(55) Then
            If z = 1 Then new1y = 7
            If z = 2 Then new2y = 7
            If z = 4 Then new4y = 7
            If z = 5 Then new5y = 7
            x = 540: y = 255
            Call cells
            Call letter7
            Exit Do
        End If
        If k$ = Chr$(56) Then
            If z = 1 Then new1y = 8
            If z = 2 Then new2y = 8
            If z = 4 Then new4y = 8
            If z = 5 Then new5y = 8
            x = 540: y = 255
            Call cells
            Call letter8
            Exit Do
        End If
        If k$ = Chr$(13) Then Call makruksolution
        If k$ = Chr$(27) Then System
    Loop

    If z = 1 Then
        x = (new1x * 40) + 120: y = Abs((new1y * 40) - 400)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call king
    End If
    If z = 2 Then
        x = (new2x * 40) + 120: y = Abs((new2y * 40) - 400)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call queen
    End If
    If z = 4 Then
        x = (new4x * 40) + 120: y = Abs((new4y * 40) - 400)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call knight
    End If
    If z = 5 Then
        x = (new5x * 40) + 120: y = Abs((new5y * 40) - 400)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call rook
    End If

    cf = 7
    If new1y = 0 Or new2y = 0 Or new4y = 0 Or new5y = 0 Then GoTo makrukfigure

    If dc1x = new1x And dc1y = Abs(new1y - 9) And dc2x = new2x And dc2y = Abs(new2y - 9) And dc4x = new4x And dc4y = Abs(new4y - 9) And dc5x = new5x And dc5y = Abs(new5y - 9) Then
        Locate 2: Color 2: Print "                       C o n g r a t u l a t i o n   ! ! !                      "
    Else
        Locate 2: Color 2: Print "                   I n a c c u r a c y   a d m i t t e d . . .                  "
        Call makruksolution
    End If

    Do
    Loop Until InKey$ <> ""

    makrukmenu:
    Cls
    Call makrukboard
    x = 50: For y = 82 To 402 Step 69
        Call cells
        If y = 117 Then Call king
        If y = 186 Then Call queen
        If y = 255 Then Call knight
        If y = 324 Then Call rook
    Next y
    x = 540: For y = 186 To 306 Step 69
        Call cells
    Next y
    cn = 1
    For row = 1 To 8 Step 1: For col = 1 To 8 Step 1
            x = (col * 40) + 135: y = (row * 40) + 55
            If chesscount(col, row) = 0 Then Call number0
            If chesscount(col, row) = 1 Then Call number1
            If chesscount(col, row) = 2 Then Call number2
            If chesscount(col, row) = 3 Then Call number3
            If chesscount(col, row) = 4 Then Call number4
    Next col: Print: Next row
    cn = 7
    new1x = 0: new2x = 0: new4x = 0: new5x = 0
    new1y = 0: new2y = 0: new4y = 0: new5y = 0
End Sub

Sub xiangqi
    x = 50: For y = 82 To 402 Step 69
        Call cells
        If y = 82 Then Call king
        If y = 151 Then Call queen
        If y = 220 Then Call bishop
        If y = 289 Then Call knight
        If y = 358 Then Call rook
    Next y

    x = 540: For y = 186 To 306 Step 69
        Call cells
    Next y

    new1x = 0: new2x = 0: new3x = 0: new4x = 0: new5x = 0
    new1y = 0: new2y = 0: new3y = 0: new4y = 0: new5y = 0
    count = 0: index = 0
    dc1x = Int(Rnd * 3 + 4)
    dc1y = Int(Rnd * 3 + 8)
    dc2x = Int(Rnd * 3 + 4)
    dc2y = Int(Rnd * 3 + 1)
    dc3x = Int(Rnd * 9 + 1)
    dc3y = Int(Rnd * 10 + 1)
    dc4x = Int(Rnd * 9 + 1)
    dc4y = Int(Rnd * 10 + 1)
    dc5x = Int(Rnd * 9 + 1)
    dc5y = Int(Rnd * 10 + 1)
    f1 = xiabo(dc1x, dc1y)
    f2 = xiabo(dc2x, dc2y)
    f3 = xiabo(dc3x, dc3y)
    f4 = xiabo(dc4x, dc4y)
    f5 = xiabo(dc5x, dc5y)

    Dim dif(35)
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
    dif(12) = 11
    dif(13) = 16
    dif(14) = 17
    dif(15) = 18
    dif(16) = 19
    dif(17) = 20
    dif(18) = 24
    dif(19) = 27
    dif(20) = 30
    dif(21) = 32
    dif(23) = 36
    dif(23) = 40
    dif(24) = 45
    dif(25) = 48
    dif(26) = 50
    dif(27) = 54
    dif(28) = 56
    dif(29) = 60
    dif(30) = 63
    dif(31) = 64
    dif(32) = 70
    dif(33) = 72
    dif(34) = 80
    dif(35) = 81

    xiangqigenerate:
    temp = Int(Rnd * 18 + 1)
    If temp = 1 Then
        dc1x = 4
        dc1y = 10
    End If
    If temp = 2 Then
        dc1x = 5
        dc1y = 10
    End If
    If temp = 3 Then
        dc1x = 6
        dc1y = 10
    End If
    If temp = 4 Then
        dc1x = 4
        dc1y = 9
    End If
    If temp = 5 Then
        dc1x = 5
        dc1y = 9
    End If
    If temp = 6 Then
        dc1x = 6
        dc1y = 9
    End If
    If temp = 7 Then
        dc1x = 4
        dc1y = 8
    End If
    If temp = 8 Then
        dc1x = 5
        dc1y = 8
    End If
    If temp = 9 Then
        dc1x = 6
        dc1y = 8
    End If
    If temp = 10 Then
        dc1x = 4
        dc1y = 3
    End If
    If temp = 11 Then
        dc1x = 5
        dc1y = 3
    End If
    If temp = 12 Then
        dc1x = 6
        dc1y = 3
    End If
    If temp = 13 Then
        dc1x = 4
        dc1y = 2
    End If
    If temp = 14 Then
        dc1x = 5
        dc1y = 2
    End If
    If temp = 15 Then
        dc1x = 6
        dc1y = 2
    End If
    If temp = 16 Then
        dc1x = 4
        dc1y = 1
    End If
    If temp = 17 Then
        dc1x = 5
        dc1y = 1
    End If
    If temp = 18 Then
        dc1x = 6
        dc1y = 1
    End If
    f1 = xiabo(dc1x, dc1y)
    temp = Int(Rnd * 10 + 1)
    If temp = 1 Then
        dc2x = 4
        dc2y = 1
    End If
    If temp = 2 Then
        dc2x = 6
        dc2y = 1
    End If
    If temp = 3 Then
        dc2x = 5
        dc2y = 2
    End If
    If temp = 4 Then
        dc2x = 4
        dc2y = 3
    End If
    If temp = 5 Then
        dc2x = 6
        dc2y = 3
    End If
    If temp = 6 Then
        dc2x = 4
        dc2y = 8
    End If
    If temp = 7 Then
        dc2x = 6
        dc2y = 8
    End If
    If temp = 8 Then
        dc2x = 5
        dc2y = 9
    End If
    If temp = 9 Then
        dc2x = 4
        dc2y = 10
    End If
    If temp = 10 Then
        dc2x = 6
        dc2y = 10
    End If
    f2 = xiabo(dc2x, dc2y)
    For index = 1 To 35
        If Abs(f1 - f2) = dif(index) Then GoTo xiangqigenerate
    Next index
    temp = Int(Rnd * 14 + 1)
    If temp = 1 Then
        dc3x = 1
        dc3y = 3
    End If
    If temp = 2 Then
        dc3x = 1
        dc3y = 8
    End If
    If temp = 3 Then
        dc3x = 3
        dc3y = 1
    End If
    If temp = 4 Then
        dc3x = 3
        dc3y = 5
    End If
    If temp = 5 Then
        dc3x = 3
        dc3y = 6
    End If
    If temp = 6 Then
        dc3x = 3
        dc3y = 10
    End If
    If temp = 7 Then
        dc3x = 5
        dc3y = 3
    End If
    If temp = 8 Then
        dc3x = 5
        dc3y = 8
    End If
    If temp = 9 Then
        dc3x = 7
        dc3y = 1
    End If
    If temp = 10 Then
        dc3x = 7
        dc3y = 5
    End If
    If temp = 11 Then
        dc3x = 7
        dc3y = 6
    End If
    If temp = 12 Then
        dc3x = 7
        dc3y = 10
    End If
    If temp = 13 Then
        dc3x = 9
        dc3y = 3
    End If
    If temp = 14 Then
        dc3x = 9
        dc3y = 8
    End If
    f3 = xiabo(dc3x, dc3y)
    For index = 1 To 35
        If Abs(f1 - f3) = dif(index) Then GoTo xiangqigenerate
        If Abs(f2 - f3) = dif(index) Then GoTo xiangqigenerate
    Next index
    dc4x = Int(Rnd * 9 + 1)
    dc4y = Int(Rnd * 10 + 1)
    f4 = xiabo(dc4x, dc4y)
    For index = 1 To 35
        If Abs(f1 - f4) = dif(index) Then GoTo xiangqigenerate
        If Abs(f2 - f4) = dif(index) Then GoTo xiangqigenerate
        If Abs(f3 - f4) = dif(index) Then GoTo xiangqigenerate
    Next index
    dc5x = Int(Rnd * 9 + 1)
    dc5y = Int(Rnd * 10 + 1)
    f5 = xiabo(dc5x, dc5y)
    For index = 1 To 35
        If Abs(f1 - f5) = dif(index) Then GoTo xiangqigenerate
        If Abs(f2 - f5) = dif(index) Then GoTo xiangqigenerate
        If Abs(f3 - f5) = dif(index) Then GoTo xiangqigenerate
        If Abs(f4 - f5) = dif(index) Then GoTo xiangqigenerate
    Next index
    For index = 1 To 35
        If Abs(f1 - f2) = dif(index) Then GoTo xiangqigenerate
        If Abs(f1 - f3) = dif(index) Then GoTo xiangqigenerate
        If Abs(f1 - f4) = dif(index) Then GoTo xiangqigenerate
        If Abs(f1 - f5) = dif(index) Then GoTo xiangqigenerate
        If Abs(f2 - f3) = dif(index) Then GoTo xiangqigenerate
        If Abs(f2 - f4) = dif(index) Then GoTo xiangqigenerate
        If Abs(f2 - f5) = dif(index) Then GoTo xiangqigenerate
        If Abs(f3 - f4) = dif(index) Then GoTo xiangqigenerate
        If Abs(f3 - f5) = dif(index) Then GoTo xiangqigenerate
        If Abs(f4 - f5) = dif(index) Then GoTo xiangqigenerate
        If dc1x = dc2x Then GoTo xiangqigenerate
        If dc1x = dc3x Then GoTo xiangqigenerate
        If dc1x = dc4x Then GoTo xiangqigenerate
        If dc1x = dc5x Then GoTo xiangqigenerate
        If dc2x = dc3x Then GoTo xiangqigenerate
        If dc2x = dc4x Then GoTo xiangqigenerate
        If dc2x = dc5x Then GoTo xiangqigenerate
        If dc3x = dc4x Then GoTo xiangqigenerate
        If dc3x = dc5x Then GoTo xiangqigenerate
        If dc4x = dc5x Then GoTo xiangqigenerate
        If dc1y = dc2y Then GoTo xiangqigenerate
        If dc1y = dc3y Then GoTo xiangqigenerate
        If dc1y = dc4y Then GoTo xiangqigenerate
        If dc1y = dc5y Then GoTo xiangqigenerate
        If dc2y = dc3y Then GoTo xiangqigenerate
        If dc2y = dc4y Then GoTo xiangqigenerate
        If dc2y = dc5y Then GoTo xiangqigenerate
        If dc3y = dc4y Then GoTo xiangqigenerate
        If dc3y = dc5y Then GoTo xiangqigenerate
        If dc4y = dc5y Then GoTo xiangqigenerate
    Next index

    Call generalcount
    Call advisorcount
    Call elephantcount
    Call horsecount
    Call chariotcount

    cn = 1
    For row = 1 To 10 Step 1: For col = 1 To 9 Step 1
            x = (col * 40) + 115: y = (row * 40) + 15
            If xiangqicount(col, row) = 0 Then Call number0
            If xiangqicount(col, row) = 1 Then Call number1
            If xiangqicount(col, row) = 2 Then Call number2
            If xiangqicount(col, row) = 3 Then Call number3
            If xiangqicount(col, row) = 4 Then Call number4
            If xiangqicount(col, row) = 5 Then Call number5
    Next col: Print: Next row
    cn = 7

    xiangqifigure:
    Locate 2: Color 2: Print "      Select figure number (1, 2, 3, 4, 5) and set coordinates (A-I, 1-0)."
    cf = 8
    Do
        Select Case InKey$
            Case Is = Chr$(49)
                z = 1: y = 82: x = 50
                If new1x <> 0 Then
                    Rem
                Else
                    Call king
                    GoTo xiangqicoordinatex
                End If
            Case Is = Chr$(50)
                z = 2: y = 151: x = 50
                If new2x <> 0 Then
                    Rem
                Else
                    Call queen
                    GoTo xiangqicoordinatex
                End If
            Case Is = Chr$(51)
                z = 3: y = 220: x = 50
                If new3x <> 0 Then
                    Rem
                Else
                    Call bishop
                    GoTo xiangqicoordinatex
                End If
            Case Is = Chr$(52)
                z = 4: y = 289: x = 50
                If new4x <> 0 Then
                    Rem
                Else
                    Call knight
                    GoTo xiangqicoordinatex
                End If
            Case Is = Chr$(53)
                z = 5: y = 358: x = 50
                If new5x <> 0 Then
                    Rem
                Else
                    Call rook
                    GoTo xiangqicoordinatex
                End If
            Case Is = Chr$(13)
                Call xiangqisolution
            Case Is = Chr$(27)
                GoTo xiangqimenu
        End Select
    Loop

    xiangqicoordinatex:
    Do
        k$ = InKey$
        If k$ = Chr$(97) Or k$ = Chr$(65) Then
            If z = 1 Then new1x = 1
            If z = 2 Then new2x = 1
            If z = 3 Then new3x = 1
            If z = 4 Then new4x = 1
            If z = 5 Then new5x = 1
            x = 540: y = 186
            Call cells
            Call letterA
            Exit Do
        End If
        If k$ = Chr$(98) Or k$ = Chr$(66) Then
            If z = 1 Then new1x = 2
            If z = 2 Then new2x = 2
            If z = 3 Then new3x = 2
            If z = 4 Then new4x = 2
            If z = 5 Then new5x = 2
            x = 540: y = 186
            Call cells
            Call letterB
            Exit Do
        End If
        If k$ = Chr$(99) Or k$ = Chr$(67) Then
            If z = 1 Then new1x = 3
            If z = 2 Then new2x = 3
            If z = 3 Then new3x = 3
            If z = 4 Then new4x = 3
            If z = 5 Then new5x = 3
            x = 540: y = 186
            Call cells
            Call letterC
            Exit Do
        End If
        If k$ = Chr$(100) Or k$ = Chr$(68) Then
            If z = 1 Then new1x = 4
            If z = 2 Then new2x = 4
            If z = 3 Then new3x = 4
            If z = 4 Then new4x = 4
            If z = 5 Then new5x = 4
            x = 540: y = 186
            Call cells
            Call letterD
            Exit Do
        End If
        If k$ = Chr$(101) Or k$ = Chr$(69) Then
            If z = 1 Then new1x = 5
            If z = 2 Then new2x = 5
            If z = 3 Then new3x = 5
            If z = 4 Then new4x = 5
            If z = 5 Then new5x = 5
            x = 540: y = 186
            Call cells
            Call letterE
            Exit Do
        End If
        If k$ = Chr$(102) Or k$ = Chr$(70) Then
            If z = 1 Then new1x = 6
            If z = 2 Then new2x = 6
            If z = 3 Then new3x = 6
            If z = 4 Then new4x = 6
            If z = 5 Then new5x = 6
            x = 540: y = 186
            Call cells
            Call letterF
            Exit Do
        End If
        If k$ = Chr$(103) Or k$ = Chr$(71) Then
            If z = 1 Then new1x = 7
            If z = 2 Then new2x = 7
            If z = 3 Then new3x = 7
            If z = 4 Then new4x = 7
            If z = 5 Then new5x = 7
            x = 540: y = 186
            Call cells
            Call letterG
            Exit Do
        End If
        If k$ = Chr$(104) Or k$ = Chr$(72) Then
            If z = 1 Then new1x = 8
            If z = 2 Then new2x = 8
            If z = 3 Then new3x = 8
            If z = 4 Then new4x = 8
            If z = 5 Then new5x = 8
            x = 540: y = 186
            Call cells
            Call letterH
            Exit Do
        End If
        If k$ = Chr$(105) Or k$ = Chr$(73) Then
            If z = 1 Then new1x = 9
            If z = 2 Then new2x = 9
            If z = 3 Then new3x = 9
            If z = 4 Then new4x = 9
            If z = 5 Then new5x = 9
            x = 540: y = 186
            Call cells
            Call letterI
            Exit Do
        End If
        If k$ = Chr$(106) Or k$ = Chr$(74) Then
            If z = 1 Then new1x = 10
            If z = 2 Then new2x = 10
            If z = 3 Then new3x = 10
            If z = 4 Then new4x = 10
            If z = 5 Then new5x = 10
            x = 540: y = 186
            Call cells
            Call letterJ
            Exit Do
        End If
        If k$ = Chr$(13) Then Call xiangqisolution
        If k$ = Chr$(27) Then System
    Loop

    xiangqicoordinatey:
    Do
        k$ = InKey$
        If k$ = Chr$(49) Then
            If z = 1 Then new1y = 1
            If z = 2 Then new2y = 1
            If z = 3 Then new3y = 1
            If z = 4 Then new4y = 1
            If z = 5 Then new5y = 1
            x = 540: y = 255
            Call cells
            Call letter1
            Exit Do
        End If
        If k$ = Chr$(50) Then
            If z = 1 Then new1y = 2
            If z = 2 Then new2y = 2
            If z = 3 Then new3y = 2
            If z = 4 Then new4y = 2
            If z = 5 Then new5y = 2
            x = 540: y = 255
            Call cells
            Call letter2
            Exit Do
        End If
        If k$ = Chr$(51) Then
            If z = 1 Then new1y = 3
            If z = 2 Then new2y = 3
            If z = 3 Then new3y = 3
            If z = 4 Then new4y = 3
            If z = 5 Then new5y = 3
            x = 540: y = 255
            Call cells
            Call letter3
            Exit Do
        End If
        If k$ = Chr$(52) Then
            If z = 1 Then new1y = 4
            If z = 2 Then new2y = 4
            If z = 3 Then new3y = 4
            If z = 4 Then new4y = 4
            If z = 5 Then new5y = 4
            x = 540: y = 255
            Call cells
            Call letter4
            Exit Do
        End If
        If k$ = Chr$(53) Then
            If z = 1 Then new1y = 5
            If z = 2 Then new2y = 5
            If z = 3 Then new3y = 5
            If z = 4 Then new4y = 5
            If z = 5 Then new5y = 5
            x = 540: y = 255
            Call cells
            Call letter5
            Exit Do
        End If
        If k$ = Chr$(54) Then
            If z = 1 Then new1y = 6
            If z = 2 Then new2y = 6
            If z = 3 Then new3y = 6
            If z = 4 Then new4y = 6
            If z = 5 Then new5y = 6
            x = 540: y = 255
            Call cells
            Call letter6
            Exit Do
        End If
        If k$ = Chr$(55) Then
            If z = 1 Then new1y = 7
            If z = 2 Then new2y = 7
            If z = 3 Then new3y = 7
            If z = 4 Then new4y = 7
            If z = 5 Then new5y = 7
            x = 540: y = 255
            Call cells
            Call letter7
            Exit Do
        End If
        If k$ = Chr$(56) Then
            If z = 1 Then new1y = 8
            If z = 2 Then new2y = 8
            If z = 3 Then new3y = 8
            If z = 4 Then new4y = 8
            If z = 5 Then new5y = 8
            x = 540: y = 255
            Call cells
            Call letter8
            Exit Do
        End If
        If k$ = Chr$(57) Then
            If z = 1 Then new1y = 9
            If z = 2 Then new2y = 9
            If z = 3 Then new3y = 9
            If z = 4 Then new4y = 9
            If z = 5 Then new5y = 9
            x = 540: y = 255
            Call cells
            Call letter9
            Exit Do
        End If
        If k$ = Chr$(48) Then
            If z = 1 Then new1y = 10
            If z = 2 Then new2y = 10
            If z = 3 Then new3y = 10
            If z = 4 Then new4y = 10
            If z = 5 Then new5y = 10
            x = 540: y = 255
            Call cells
            Call letter0
            Exit Do
        End If
        If k$ = Chr$(13) Then Call xiangqisolution
        If k$ = Chr$(27) Then System
    Loop

    If z = 1 Then
        x = (new1x * 40) + 100: y = Abs((new1y * 40) - 440)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call king
    End If
    If z = 2 Then
        x = (new2x * 40) + 100: y = Abs((new2y * 40) - 440)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call queen
    End If
    If z = 3 Then
        x = (new3x * 40) + 100: y = Abs((new3y * 40) - 440)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call bishop
    End If
    If z = 4 Then
        x = (new4x * 40) + 100: y = Abs((new4y * 40) - 440)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call knight
    End If
    If z = 5 Then
        x = (new5x * 40) + 100: y = Abs((new5y * 40) - 440)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call rook
    End If

    cf = 7
    If new1y = 0 Or new2y = 0 Or new3y = 0 Or new4y = 0 Or new5y = 0 Then GoTo xiangqifigure

    If dc1x = new1x And dc1y = Abs(new1y - 11) And dc2x = new2x And dc2y = Abs(new2y - 11) And dc3x = new3x And dc3y = Abs(new3y - 11) And dc4x = new4x And dc4y = Abs(new4y - 11) And dc5x = new5x And dc5y = Abs(new5y - 11) Then
        Locate 2: Color 2: Print "                       C o n g r a t u l a t i o n   ! ! !                      "
    Else
        Locate 2: Color 2: Print "                   I n a c c u r a c y   a d m i t t e d . . .                  "
        Call xiangqisolution
    End If

    Do
    Loop Until InKey$ <> ""

    xiangqimenu:
    Cls
    Call xiangqiboard
    x = 50: For y = 82 To 402 Step 69
        Call cells
        If y = 82 Then Call king
        If y = 151 Then Call queen
        If y = 220 Then Call bishop
        If y = 289 Then Call knight
        If y = 358 Then Call rook
    Next y
    x = 540: For y = 186 To 306 Step 69
        Call cells
    Next y
    cn = 1
    For row = 1 To 8 Step 1: For col = 1 To 8 Step 1
            x = (col * 40) + 135: y = (row * 40) + 55
            If xiangqicount(col, row) = 0 Then Call number0
            If xiangqicount(col, row) = 1 Then Call number1
            If xiangqicount(col, row) = 2 Then Call number2
            If xiangqicount(col, row) = 3 Then Call number3
            If xiangqicount(col, row) = 4 Then Call number4
            If xiangqicount(col, row) = 5 Then Call number5
    Next col: Print: Next row
    cn = 7
    new1x = 0: new2x = 0: new3x = 0: new4x = 0: new5x = 0
    new1y = 0: new2y = 0: new3y = 0: new4y = 0: new5y = 0
End Sub

Sub shogi
    x = 50: For y = 82 To 402 Step 69
        Call cells
        If y = 82 Then Call king
        If y = 151 Then Call bishop
        If y = 220 Then Call rook
        If y = 289 Then Call horse
        If y = 358 Then Call dragon
    Next y

    x = 540: For y = 186 To 306 Step 69
        Call cells
    Next y

    new1x = 0: new3x = 0: new5x = 0: new6x = 0: new7x = 0
    new1y = 0: new3y = 0: new5y = 0: new6y = 0: new7y = 0
    count = 0: index = 0
    dc1x = Int(Rnd * 9 + 1)
    dc1y = Int(Rnd * 9 + 1)
    dc3x = Int(Rnd * 9 + 1)
    dc3y = Int(Rnd * 9 + 1)
    dc5x = Int(Rnd * 9 + 1)
    dc5y = Int(Rnd * 9 + 1)
    dc6x = Int(Rnd * 9 + 1)
    dc6y = Int(Rnd * 9 + 1)
    dc7x = Int(Rnd * 9 + 1)
    dc7y = Int(Rnd * 9 + 1)
    f1 = shobo(dc1x, dc1y)
    f2 = shobo(dc3x, dc3y)
    f3 = shobo(dc5x, dc5y)
    f4 = shobo(dc6x, dc6y)
    f5 = shobo(dc7x, dc7y)

    Dim dif(34)
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
    dif(12) = 11
    dif(13) = 16
    dif(14) = 17
    dif(15) = 18
    dif(16) = 19
    dif(17) = 20
    dif(18) = 24
    dif(19) = 27
    dif(20) = 30
    dif(21) = 32
    dif(23) = 36
    dif(23) = 40
    dif(24) = 45
    dif(25) = 48
    dif(26) = 50
    dif(27) = 54
    dif(28) = 56
    dif(29) = 60
    dif(30) = 63
    dif(31) = 64
    dif(32) = 70
    dif(33) = 72
    dif(34) = 80

    shogigenerate:
    dc3x = Int(Rnd * 9 + 1)
    dc3y = Int(Rnd * 9 + 1)
    f2 = shobo(dc3x, dc3y)
    For index = 1 To 34
        If Abs(f1 - f2) = dif(index) Then GoTo shogigenerate
    Next index
    dc5x = Int(Rnd * 9 + 1)
    dc5y = Int(Rnd * 9 + 1)
    f3 = shobo(dc5x, dc5y)
    For index = 1 To 34
        If Abs(f1 - f3) = dif(index) Then GoTo shogigenerate
        If Abs(f2 - f3) = dif(index) Then GoTo shogigenerate
    Next index
    dc6x = Int(Rnd * 9 + 1)
    dc6y = Int(Rnd * 9 + 1)
    f4 = shobo(dc6x, dc6y)
    For index = 1 To 34
        If Abs(f1 - f4) = dif(index) Then GoTo shogigenerate
        If Abs(f2 - f4) = dif(index) Then GoTo shogigenerate
        If Abs(f3 - f4) = dif(index) Then GoTo shogigenerate
    Next index
    dc7x = Int(Rnd * 9 + 1)
    dc7y = Int(Rnd * 9 + 1)
    f5 = shobo(dc7x, dc7y)
    For index = 1 To 34
        If Abs(f1 - f5) = dif(index) Then GoTo shogigenerate
        If Abs(f2 - f5) = dif(index) Then GoTo shogigenerate
        If Abs(f3 - f5) = dif(index) Then GoTo shogigenerate
        If Abs(f4 - f5) = dif(index) Then GoTo shogigenerate
    Next index
    For index = 1 To 34
        If Abs(f1 - f2) = dif(index) Then GoTo shogigenerate
        If Abs(f1 - f3) = dif(index) Then GoTo shogigenerate
        If Abs(f1 - f4) = dif(index) Then GoTo shogigenerate
        If Abs(f1 - f5) = dif(index) Then GoTo shogigenerate
        If Abs(f2 - f3) = dif(index) Then GoTo shogigenerate
        If Abs(f2 - f4) = dif(index) Then GoTo shogigenerate
        If Abs(f2 - f5) = dif(index) Then GoTo shogigenerate
        If Abs(f3 - f4) = dif(index) Then GoTo shogigenerate
        If Abs(f3 - f5) = dif(index) Then GoTo shogigenerate
        If Abs(f4 - f5) = dif(index) Then GoTo shogigenerate
        If dc1x = dc3x Then GoTo shogigenerate
        If dc1x = dc5x Then GoTo shogigenerate
        If dc1x = dc6x Then GoTo shogigenerate
        If dc1x = dc7x Then GoTo shogigenerate
        If dc3x = dc5x Then GoTo shogigenerate
        If dc3x = dc6x Then GoTo shogigenerate
        If dc3x = dc7x Then GoTo shogigenerate
        If dc5x = dc6x Then GoTo shogigenerate
        If dc5x = dc7x Then GoTo shogigenerate
        If dc6x = dc7x Then GoTo shogigenerate
        If dc1y = dc3y Then GoTo shogigenerate
        If dc1y = dc5y Then GoTo shogigenerate
        If dc1y = dc6y Then GoTo shogigenerate
        If dc1y = dc7y Then GoTo shogigenerate
        If dc3y = dc5y Then GoTo shogigenerate
        If dc3y = dc6y Then GoTo shogigenerate
        If dc3y = dc7y Then GoTo shogigenerate
        If dc5y = dc6y Then GoTo shogigenerate
        If dc5y = dc7y Then GoTo shogigenerate
        If dc6y = dc7y Then GoTo shogigenerate
    Next index

    Call shokingcount
    Call shobishopcount
    Call shorookcount
    Call steedcount
    Call dragoncount

    cn = 1
    For row = 1 To 9 Step 1: For col = 1 To 9 Step 1
            x = (col * 40) + 115: y = (row * 40) + 35
            If shogicount(col, row) = 0 Then Call number0
            If shogicount(col, row) = 1 Then Call number1
            If shogicount(col, row) = 2 Then Call number2
            If shogicount(col, row) = 3 Then Call number3
            If shogicount(col, row) = 4 Then Call number4
            If shogicount(col, row) = 5 Then Call number5
    Next col: Print: Next row
    cn = 7

    shogifigure:
    Locate 2: Color 2: Print "      Select figure number (1, 2, 3, 4, 5) and set coordinates (A-I, 1-9)."
    cf = 8
    Do
        Select Case InKey$
            Case Is = Chr$(49)
                z = 1: y = 82: x = 50
                If new1x <> 0 Then
                    Rem
                Else
                    Call king
                    GoTo shogicoordinatex
                End If
            Case Is = Chr$(50)
                z = 2: y = 151: x = 50
                If new3x <> 0 Then
                    Rem
                Else
                    Call bishop
                    GoTo shogicoordinatex
                End If
            Case Is = Chr$(51)
                z = 3: y = 220: x = 50
                If new5x <> 0 Then
                    Rem
                Else
                    Call rook
                    GoTo shogicoordinatex
                End If
            Case Is = Chr$(52)
                z = 4: y = 289: x = 50
                If new6x <> 0 Then
                    Rem
                Else
                    Call horse
                    GoTo shogicoordinatex
                End If
            Case Is = Chr$(53)
                z = 5: y = 358: x = 50
                If new7x <> 0 Then
                    Rem
                Else
                    Call dragon
                    GoTo shogicoordinatex
                End If
            Case Is = Chr$(13)
                Call shogisolution
            Case Is = Chr$(27)
                GoTo shogimenu
        End Select
    Loop

    shogicoordinatex:
    Do
        k$ = InKey$
        If k$ = Chr$(97) Or k$ = Chr$(65) Then
            If z = 1 Then new1x = 1
            If z = 2 Then new3x = 1
            If z = 3 Then new5x = 1
            If z = 4 Then new6x = 1
            If z = 5 Then new7x = 1
            x = 540: y = 186
            Call cells
            Call letterA
            Exit Do
        End If
        If k$ = Chr$(98) Or k$ = Chr$(66) Then
            If z = 1 Then new1x = 2
            If z = 2 Then new3x = 2
            If z = 3 Then new5x = 2
            If z = 4 Then new6x = 2
            If z = 5 Then new7x = 2
            x = 540: y = 186
            Call cells
            Call letterB
            Exit Do
        End If
        If k$ = Chr$(99) Or k$ = Chr$(67) Then
            If z = 1 Then new1x = 3
            If z = 2 Then new3x = 3
            If z = 3 Then new5x = 3
            If z = 4 Then new6x = 3
            If z = 5 Then new7x = 3
            x = 540: y = 186
            Call cells
            Call letterC
            Exit Do
        End If
        If k$ = Chr$(100) Or k$ = Chr$(68) Then
            If z = 1 Then new1x = 4
            If z = 2 Then new3x = 4
            If z = 3 Then new5x = 4
            If z = 4 Then new6x = 4
            If z = 5 Then new7x = 4
            x = 540: y = 186
            Call cells
            Call letterD
            Exit Do
        End If
        If k$ = Chr$(101) Or k$ = Chr$(69) Then
            If z = 1 Then new1x = 5
            If z = 2 Then new3x = 5
            If z = 3 Then new5x = 5
            If z = 4 Then new6x = 5
            If z = 5 Then new7x = 5
            x = 540: y = 186
            Call cells
            Call letterE
            Exit Do
        End If
        If k$ = Chr$(102) Or k$ = Chr$(70) Then
            If z = 1 Then new1x = 6
            If z = 2 Then new3x = 6
            If z = 3 Then new5x = 6
            If z = 4 Then new6x = 6
            If z = 5 Then new7x = 6
            x = 540: y = 186
            Call cells
            Call letterF
            Exit Do
        End If
        If k$ = Chr$(103) Or k$ = Chr$(71) Then
            If z = 1 Then new1x = 7
            If z = 2 Then new3x = 7
            If z = 3 Then new5x = 7
            If z = 4 Then new6x = 7
            If z = 5 Then new7x = 7
            x = 540: y = 186
            Call cells
            Call letterG
            Exit Do
        End If
        If k$ = Chr$(104) Or k$ = Chr$(72) Then
            If z = 1 Then new1x = 8
            If z = 2 Then new3x = 8
            If z = 3 Then new5x = 8
            If z = 4 Then new6x = 8
            If z = 5 Then new7x = 8
            x = 540: y = 186
            Call cells
            Call letterH
            Exit Do
        End If
        If k$ = Chr$(105) Or k$ = Chr$(73) Then
            If z = 1 Then new1x = 9
            If z = 2 Then new3x = 9
            If z = 3 Then new5x = 9
            If z = 4 Then new6x = 9
            If z = 5 Then new7x = 9
            x = 540: y = 186
            Call cells
            Call letterI
            Exit Do
        End If
        If k$ = Chr$(13) Then Call shogisolution
        If k$ = Chr$(27) Then System
    Loop

    shogicoordinatey:
    Do
        k$ = InKey$
        If k$ = Chr$(49) Then
            If z = 1 Then new1y = 1
            If z = 2 Then new3y = 1
            If z = 3 Then new5y = 1
            If z = 4 Then new6y = 1
            If z = 5 Then new7y = 1
            x = 540: y = 255
            Call cells
            Call letter1
            Exit Do
        End If
        If k$ = Chr$(50) Then
            If z = 1 Then new1y = 2
            If z = 2 Then new3y = 2
            If z = 3 Then new5y = 2
            If z = 4 Then new6y = 2
            If z = 5 Then new7y = 2
            x = 540: y = 255
            Call cells
            Call letter2
            Exit Do
        End If
        If k$ = Chr$(51) Then
            If z = 1 Then new1y = 3
            If z = 2 Then new3y = 3
            If z = 3 Then new5y = 3
            If z = 4 Then new6y = 3
            If z = 5 Then new7y = 3
            x = 540: y = 255
            Call cells
            Call letter3
            Exit Do
        End If
        If k$ = Chr$(52) Then
            If z = 1 Then new1y = 4
            If z = 2 Then new3y = 4
            If z = 3 Then new5y = 4
            If z = 4 Then new6y = 4
            If z = 5 Then new7y = 4
            x = 540: y = 255
            Call cells
            Call letter4
            Exit Do
        End If
        If k$ = Chr$(53) Then
            If z = 1 Then new1y = 5
            If z = 2 Then new3y = 5
            If z = 3 Then new5y = 5
            If z = 4 Then new6y = 5
            If z = 5 Then new7y = 5
            x = 540: y = 255
            Call cells
            Call letter5
            Exit Do
        End If
        If k$ = Chr$(54) Then
            If z = 1 Then new1y = 6
            If z = 2 Then new3y = 6
            If z = 3 Then new5y = 6
            If z = 4 Then new6y = 6
            If z = 5 Then new7y = 6
            x = 540: y = 255
            Call cells
            Call letter6
            Exit Do
        End If
        If k$ = Chr$(55) Then
            If z = 1 Then new1y = 7
            If z = 2 Then new3y = 7
            If z = 3 Then new5y = 7
            If z = 4 Then new6y = 7
            If z = 5 Then new7y = 7
            x = 540: y = 255
            Call cells
            Call letter7
            Exit Do
        End If
        If k$ = Chr$(56) Then
            If z = 1 Then new1y = 8
            If z = 2 Then new3y = 8
            If z = 3 Then new5y = 8
            If z = 4 Then new6y = 8
            If z = 5 Then new7y = 8
            x = 540: y = 255
            Call cells
            Call letter8
            Exit Do
        End If
        If k$ = Chr$(57) Then
            If z = 1 Then new1y = 9
            If z = 2 Then new3y = 9
            If z = 3 Then new5y = 9
            If z = 4 Then new6y = 9
            If z = 5 Then new7y = 9
            x = 540: y = 255
            Call cells
            Call letter9
            Exit Do
        End If
        If k$ = Chr$(13) Then Call shogisolution
        If k$ = Chr$(27) Then System
    Loop

    If z = 1 Then
        x = (new1x * 40) + 100: y = Abs((new1y * 40) - 420)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call king
    End If
    If z = 2 Then
        x = (new3x * 40) + 100: y = Abs((new3y * 40) - 420)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call bishop
    End If
    If z = 3 Then
        x = (new5x * 40) + 100: y = Abs((new5y * 40) - 420)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call rook
    End If
    If z = 4 Then
        x = (new6x * 40) + 100: y = Abs((new6y * 40) - 420)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call horse
    End If
    If z = 5 Then
        x = (new7x * 40) + 100: y = Abs((new7y * 40) - 420)
        Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
        Call dragon
    End If

    cf = 7
    If new1y = 0 Or new3y = 0 Or new5y = 0 Or new6y = 0 Or new7y = 0 Then GoTo shogifigure

    If dc1x = new1x And dc1y = Abs(new1y - 10) And dc3x = new3x And dc3y = Abs(new3y - 10) And dc5x = new5x And dc5y = Abs(new5y - 10) And dc6x = new6x And dc6y = Abs(new6y - 10) And dc7x = new7x And dc7y = Abs(new7y - 10) Then
        Locate 2: Color 2: Print "                       C o n g r a t u l a t i o n   ! ! !                      "
    Else
        Locate 2: Color 2: Print "                   I n a c c u r a c y   a d m i t t e d . . .                  "
        Call shogisolution
    End If

    Do
    Loop Until InKey$ <> ""

    shogimenu:
    Cls
    Call shogiboard
    x = 50: For y = 82 To 402 Step 69
        Call cells
        If y = 82 Then Call king
        If y = 151 Then Call bishop
        If y = 220 Then Call rook
        If y = 289 Then Call horse
        If y = 358 Then Call dragon
    Next y
    x = 540: For y = 186 To 306 Step 69
        Call cells
    Next y
    cn = 1
    For row = 1 To 9 Step 1: For col = 1 To 9 Step 1
            x = (col * 40) + 115: y = (row * 40) + 35
            If shogicount(col, row) = 0 Then Call number0
            If shogicount(col, row) = 1 Then Call number1
            If shogicount(col, row) = 2 Then Call number2
            If shogicount(col, row) = 3 Then Call number3
            If shogicount(col, row) = 4 Then Call number4
            If shogicount(col, row) = 5 Then Call number5
    Next col: Print: Next row
    cn = 7
    new1x = 0: new3x = 0: new5x = 0: new6x = 0: new7x = 0
    new1y = 0: new3y = 0: new5y = 0: new6y = 0: new7y = 0
End Sub

Sub chesssolution
    cf = 7
    x = (dc1x * 40) + 120: y = (dc1y * 40) + 40
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call king
    x = (dc2x * 40) + 120: y = (dc2y * 40) + 40
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call queen
    x = (dc3x * 40) + 120: y = (dc3y * 40) + 40
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call bishop
    x = (dc4x * 40) + 120: y = (dc4y * 40) + 40
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call knight
    x = (dc5x * 40) + 120: y = (dc5y * 40) + 40
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call rook
    cf = 8
End Sub

Sub makruksolution
    cf = 7
    x = (dc1x * 40) + 120: y = (dc1y * 40) + 40
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call king
    x = (dc2x * 40) + 120: y = (dc2y * 40) + 40
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call queen
    x = (dc4x * 40) + 120: y = (dc4y * 40) + 40
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call knight
    x = (dc5x * 40) + 120: y = (dc5y * 40) + 40
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call rook
    cf = 8
End Sub

Sub xiangqisolution
    cf = 7
    x = (dc1x * 40) + 100: y = (dc1y * 40) + 0
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call king
    x = (dc2x * 40) + 100: y = (dc2y * 40) + 0
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call queen
    x = (dc3x * 40) + 100: y = (dc3y * 40) + 0
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call bishop
    x = (dc4x * 40) + 100: y = (dc4y * 40) + 0
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call knight
    x = (dc5x * 40) + 100: y = (dc5y * 40) + 0
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call rook
    cf = 8
End Sub

Sub shogisolution
    cf = 7
    x = (dc1x * 40) + 100: y = (dc1y * 40) + 20
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call king
    x = (dc3x * 40) + 100: y = (dc3y * 40) + 20
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call bishop
    x = (dc5x * 40) + 100: y = (dc5y * 40) + 20
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call rook
    x = (dc6x * 40) + 100: y = (dc6y * 40) + 20
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call horse
    x = (dc7x * 40) + 100: y = (dc7y * 40) + 20
    Line (x + 1, y + 1)-(x + 39, y + 39), 0, BF
    Call dragon
    cf = 8
End Sub