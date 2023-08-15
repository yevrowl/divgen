$ExeIcon:'divgen.ico'
_Icon
_Title "Divine generator for chess"
_FullScreen
DefInt A-Z

DECLARE SUB number1 ()
DECLARE SUB number2 ()
DECLARE SUB number3 ()
DECLARE SUB number4 ()
DECLARE SUB number5 ()
DECLARE SUB number6 ()
DECLARE SUB number7 ()
DECLARE SUB number8 ()
DECLARE SUB number9 ()
DECLARE SUB number0 ()
DECLARE SUB numberA ()
DECLARE SUB numberB ()
DECLARE SUB numberC ()
DECLARE SUB numberD ()
DECLARE SUB numberE ()
DECLARE SUB numberF ()
DECLARE SUB numberG ()
DECLARE SUB numberH ()
DECLARE SUB king ()
DECLARE SUB queen ()
DECLARE SUB bishop ()
DECLARE SUB knight ()
DECLARE SUB rook ()
DECLARE SUB pawn ()
DECLARE SUB kingcount ()
DECLARE SUB queencount ()
DECLARE SUB bishopcount ()
DECLARE SUB knightcount ()
DECLARE SUB rookcount ()
DECLARE SUB cells ()
DECLARE SUB chessboard ()
DECLARE SUB chess ()
DECLARE SUB solution ()

Common Shared vid, v, x, y, z, c, c1, c2, c3, c4, dc1x, dc1y, dc2x, dc2y, dc3x, dc3y, dc4x, dc4y, dc5x, dc5y, row, col, index, count As Integer
Dim Shared chebo(8, 8) As Integer
Let index = 100
For row = 1 To 8: For col = 1 To 8
        Let chebo(row, col) = index + 1
        Let index = index + 1
Next col: Next row
Dim Shared chesscount(8, 8) As Integer

Randomize Timer
Cls
For row = 1 To 8: For col = 1 To 8
        Let chesscount(row, col) = 0
Next col: Next row
Randomize Timer
Let z = 6
Screen 1
Width 40, 25
Cls
Locate 2, z: Print "ษอออออออออออออออออออออออออออออป"
Locate 3, z: Print "บ       Divine generator      บ"
Locate 4, z: Print "ศอออออออออออออออออออออออออออออผ"
Locate 5, z: Print "ษอออออออออออออออออออออออออออออป"
Locate 6, z: Print "บ   Select graphics adapter   บ"
Locate 7, z: Print "ฬอออออหอออออออออออออออออออออออน"
Locate 8, z: Print "บ     บ   CGA, Amstrad, PGC   บ"
Locate 9, z: Print "บ     บ                       บ"
Locate 10, z: Print "บ  1  บ Plantronics Colorplus บ"
Locate 11, z: Print "บ     บ                       บ"
Locate 12, z: Print "บ     บ       TGA, PCjr       บ"
Locate 13, z: Print "ฬอออออฮอออออออออออออออออออออออน"
Locate 14, z: Print "บ     บ     EGA, MCGA, VGA    บ"
Locate 15, z: Print "บ  2  บ                       บ"
Locate 16, z: Print "บ     บ       AX, 8514        บ"
Locate 17, z: Print "ฬอออออฮอออออออออออออออออออออออน"
Locate 18, z: Print "บ     บ  DCGA, Olivetti, GDC  บ"
Locate 19, z: Print "บ  3  บ                       บ"
Locate 20, z: Print "บ     บ     OGA, HGC, HICC    บ"
Locate 21, z: Print "ฬอออออฮอออออออออออออออออออออออน"
Locate 22, z: Print "บ Esc บ         Exit          บ"
Locate 23, z: Print "ศอออออสอออออออออออออออออออออออผ"

Do
    Select Case InKey$
        Case Is = Chr$(49)
            Let vid = 1
            Exit Do
        Case Is = Chr$(50)
            Let vid = 3
            Exit Do
        Case Is = Chr$(51)
            Let vid = 5
            Exit Do
        Case Is = Chr$(27)
            Rem Out &H64, &HFE
            System
    End Select
Loop

begin:
Do
    Cls
    Call chessboard
    Call chess
    GoTo begin
Loop

Sub cells
    Line (x, y)-(x + 15, y + 15), 0, BF
    Line (x - 1, y - 1)-(x + 16, y + 16), c, B
End Sub

Sub chessboard
    If vid = 1 Then
        Screen 1
        Out 984, 46
    End If
    If vid = 2 Then Screen 7
    If vid = 3 Then Screen 13
    If vid = 4 Then Screen 7
    If vid = 5 Then Screen 1
    If vid = 6 Then Screen 1
    If vid = 7 Then Screen 1

    If vid = 1 Then
        Let c1 = 2
        Let c2 = 0
        Let c3 = 1
        Let c4 = 3
        Let x = 3
        Let y = 21
    End If
    If vid = 2 Then
        Let c1 = 6
        Let c2 = 0
        Let c3 = 3
        Let c4 = 7
        Let x = 3
        Let y = 21
    End If
    If vid = 3 Then
        Let c1 = 6
        Let c2 = 0
        Let c3 = 3
        Let c4 = 7
        Let x = 3
        Let y = 21
    End If
    If vid = 4 Then
        Let c1 = 6
        Let c2 = 0
        Let c3 = 3
        Let c4 = 7
        Let x = 3
        Let y = 21
    End If
    If vid = 5 Then
        Let c1 = 0
        Let c2 = 0
        Let c3 = 1
        Let c4 = 1
        Let x = 3
        Let y = 21
    End If
    If vid = 6 Then
        Let c1 = 0
        Let c2 = 0
        Let c3 = 1
        Let c4 = 1
        Let x = 3
        Let y = 21
    End If
    If vid = 7 Then
        Let c1 = 2
        Let c2 = 0
        Let c3 = 1
        Let c4 = 3
        Let x = 3
        Let y = 21
    End If

    If vid < 5 Or vid > 6 Then
        Line (95 + x, 21 + y)-(231 + x, 157 + y), c1, BF
        For j = 123 + y To 21 + y Step -34
            For i = 197 + x To 95 + x Step -34
                Line (i, j)-(i + 17, j + 17), c3, BF
                Line (i + 17, j + 17)-(i + 34, j + 34), c3, BF
            Next i
        Next j
        For i = 95 + x To 231 + x Step 17
            Line (i, 21 + y)-(i, 157 + y), c2
        Next i
        For j = 21 + y To 157 + y Step 17
            Line (95 + x, j)-(231 + x, j), c2
        Next j
        Line (94 + x, 20 + y)-(232 + x, 158 + y), c4, B
    End If

    If vid = 5 Or vid = 6 Then
        Line (95 + x, 21 + y)-(231 + x, 157 + y), c3, B
        For i = 95 + x To 231 + x Step 17
            Line (i, 21 + y)-(i, 157 + y), c3
        Next i
        For j = 21 + y To 157 + y Step 17
            Line (95 + x, j)-(231 + x, j), c3
        Next j
        Line (94 + x, 20 + y)-(232 + x, 158 + y), c4, B
    End If

    If vid = 1 Or vid = 7 Then Let c = 3
    If vid > 1 And vid < 5 Then Let c = 8
    If vid = 5 Or vid = 6 Then Let c = 1
    Let x = 83: Let y = 45: Call number8
    Let x = 83: Let y = 62: Call number7
    Let x = 83: Let y = 79: Call number6
    Let x = 83: Let y = 96: Call number5
    Let x = 83: Let y = 113: Call number4
    Let x = 83: Let y = 130: Call number3
    Let x = 83: Let y = 147: Call number2
    Let x = 83: Let y = 164: Call number1
    Let x = 101: Let y = 182: Call numberA
    Let x = 118: Let y = 182: Call numberB
    Let x = 135: Let y = 182: Call numberC
    Let x = 152: Let y = 182: Call numberD
    Let x = 169: Let y = 182: Call numberE
    Let x = 186: Let y = 182: Call numberF
    Let x = 203: Let y = 182: Call numberG
    Let x = 220: Let y = 182: Call numberH
    Locate 2: Print "Select piece (1-5) and place (A-H, 1-8)."
    If vid = 1 Or vid = 7 Then Let c = 3
    If vid > 1 And vid < 5 Then Let c = 2
    If vid = 5 Or vid = 6 Then Let c = 1
End Sub

Sub chess
    Let x = 35: For y = 42 To 162 Step 30
        Call cells
        Let x = x + 1: Let y = y + 1
        If y = 43 Then Call king
        If y = 73 Then Call queen
        If y = 103 Then Call bishop
        If y = 133 Then Call knight
        If y = 163 Then Call rook
        Let x = x - 1: Let y = y - 1
    Next y

    Let x = 269: For y = 87 To 117 Step 30
        Call cells
    Next y

    Let new1x = 0: Let new2x = 0: Let new3x = 0: Let new4x = 0: Let new5x = 0
    Let new1y = 0: Let new2y = 0: Let new3y = 0: Let new4y = 0: Let new5y = 0
    Let count = 0: Let index = 0
    Let dc1x = Int(Rnd * 8 + 1)
    Let dc1y = Int(Rnd * 8 + 1)
    Let dc2x = Int(Rnd * 8 + 1)
    Let dc2y = Int(Rnd * 8 + 1)
    Let dc3x = Int(Rnd * 8 + 1)
    Let dc3y = Int(Rnd * 8 + 1)
    Let dc4x = Int(Rnd * 8 + 1)
    Let dc4y = Int(Rnd * 8 + 1)
    Let dc5x = Int(Rnd * 8 + 1)
    Let dc5y = Int(Rnd * 8 + 1)
    Let f1 = chebo(dc1x, dc1y)
    Let f2 = chebo(dc2x, dc2y)
    Let f3 = chebo(dc3x, dc3y)
    Let f4 = chebo(dc4x, dc4y)
    Let f5 = chebo(dc5x, dc5y)

    Dim dif(31)
    Let dif(1) = 0
    Let dif(2) = 1
    Let dif(3) = 2
    Let dif(4) = 3
    Let dif(5) = 4
    Let dif(6) = 5
    Let dif(7) = 6
    Let dif(8) = 7
    Let dif(9) = 8
    Let dif(10) = 9
    Let dif(11) = 10
    Let dif(12) = 14
    Let dif(13) = 15
    Let dif(14) = 16
    Let dif(15) = 17
    Let dif(16) = 18
    Let dif(17) = 21
    Let dif(18) = 24
    Let dif(19) = 27
    Let dif(20) = 28
    Let dif(21) = 32
    Let dif(23) = 35
    Let dif(23) = 36
    Let dif(24) = 40
    Let dif(25) = 42
    Let dif(26) = 45
    Let dif(27) = 48
    Let dif(28) = 49
    Let dif(29) = 54
    Let dif(30) = 56
    Let dif(31) = 63

    generate:
    Let dc2x = Int(Rnd * 8 + 1)
    Let dc2y = Int(Rnd * 8 + 1)
    Let f2 = chebo(dc2x, dc2y)
    For index = 1 To 31
        If Abs(f1 - f2) = dif(index) Then GoTo generate
    Next index
    Let dc3x = Int(Rnd * 8 + 1)
    Let dc3y = Int(Rnd * 8 + 1)
    Let f3 = chebo(dc3x, dc3y)
    For index = 1 To 31
        If Abs(f1 - f3) = dif(index) Then GoTo generate
        If Abs(f2 - f3) = dif(index) Then GoTo generate
    Next index
    Let dc4x = Int(Rnd * 8 + 1)
    Let dc4y = Int(Rnd * 8 + 1)
    Let f4 = chebo(dc4x, dc4y)
    For index = 1 To 31
        If Abs(f1 - f4) = dif(index) Then GoTo generate
        If Abs(f2 - f4) = dif(index) Then GoTo generate
        If Abs(f3 - f4) = dif(index) Then GoTo generate
    Next index
    Let dc5x = Int(Rnd * 8 + 1)
    Let dc5y = Int(Rnd * 8 + 1)
    Let f5 = chebo(dc5x, dc5y)
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

    Call kingcount
    Call queencount
    Call bishopcount
    Call knightcount
    Call rookcount

    If vid = 1 Or vid = 7 Then Let c = 3
    If vid > 1 And vid < 5 Then Let c = 1
    If vid = 5 Or vid = 6 Then Let c = 1
    For row = 1 To 8 Step 1: For col = 1 To 8 Step 1
            Let x = (col * 17) + 84: Let y = (row * 17) + 28
            If chesscount(col, row) = 0 Then Call number0
            If chesscount(col, row) = 1 Then Call number1
            If chesscount(col, row) = 2 Then Call number2
            If chesscount(col, row) = 3 Then Call number3
            If chesscount(col, row) = 4 Then Call number4
            If chesscount(col, row) = 5 Then Call number5
    Next col: Print: Next row

    figure:
    If vid = 1 Or vid = 7 Then Let c = 3
    If vid > 1 And vid < 5 Then Let c = 10
    If vid = 5 Or vid = 6 Then Let c = 1
    Do
        Select Case InKey$
            Case Is = Chr$(49)
                Let z = 1: Let y = 43: Let x = 36
                If new1x <> 0 Then
                    Rem
                Else
                    Call king
                    GoTo coordinatex
                End If
            Case Is = Chr$(50)
                Let z = 2: Let y = 73: Let x = 36
                If new2x <> 0 Then
                    Rem
                Else
                    Call queen
                    GoTo coordinatex
                End If
            Case Is = Chr$(51)
                Let z = 3: Let y = 103: Let x = 36
                If new3x <> 0 Then
                    Rem
                Else
                    Call bishop
                    GoTo coordinatex
                End If
            Case Is = Chr$(52)
                Let z = 4: Let y = 133: Let x = 36
                If new4x <> 0 Then
                    Rem
                Else
                    Call knight
                    GoTo coordinatex
                End If
            Case Is = Chr$(53)
                Let z = 5: Let y = 163: Let x = 36
                If new5x <> 0 Then
                    Rem
                Else
                    Call rook
                    GoTo coordinatex
                End If
            Case Is = Chr$(13)
                Call solution
            Case Is = Chr$(27)
                System
        End Select
    Loop

    coordinatex:
    Do
        Let k$ = InKey$
        If k$ = Chr$(97) Or k$ = Chr$(65) Then
            If z = 1 Then Let new1x = 1
            If z = 2 Then Let new2x = 1
            If z = 3 Then Let new3x = 1
            If z = 4 Then Let new4x = 1
            If z = 5 Then Let new5x = 1
            Let x = 269: Let y = 87
            Call cells
            Let x = x + 2: Let y = y + 2
            Call numberA
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(98) Or k$ = Chr$(66) Then
            If z = 1 Then Let new1x = 2
            If z = 2 Then Let new2x = 2
            If z = 3 Then Let new3x = 2
            If z = 4 Then Let new4x = 2
            If z = 5 Then Let new5x = 2
            Let x = 269: Let y = 87
            Call cells
            Let x = x + 2: Let y = y + 2
            Call numberB
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(99) Or k$ = Chr$(67) Then
            If z = 1 Then Let new1x = 3
            If z = 2 Then Let new2x = 3
            If z = 3 Then Let new3x = 3
            If z = 4 Then Let new4x = 3
            If z = 5 Then Let new5x = 3
            Let x = 269: Let y = 87
            Call cells
            Let x = x + 2: Let y = y + 2
            Call numberC
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(100) Or k$ = Chr$(68) Then
            If z = 1 Then Let new1x = 4
            If z = 2 Then Let new2x = 4
            If z = 3 Then Let new3x = 4
            If z = 4 Then Let new4x = 4
            If z = 5 Then Let new5x = 4
            Let x = 269: Let y = 87
            Call cells
            Let x = x + 2: Let y = y + 2
            Call numberD
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(101) Or k$ = Chr$(69) Then
            If z = 1 Then Let new1x = 5
            If z = 2 Then Let new2x = 5
            If z = 3 Then Let new3x = 5
            If z = 4 Then Let new4x = 5
            If z = 5 Then Let new5x = 5
            Let x = 269: Let y = 87
            Call cells
            Let x = x + 2: Let y = y + 2
            Call numberE
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(102) Or k$ = Chr$(70) Then
            If z = 1 Then Let new1x = 6
            If z = 2 Then Let new2x = 6
            If z = 3 Then Let new3x = 6
            If z = 4 Then Let new4x = 6
            If z = 5 Then Let new5x = 6
            Let x = 269: Let y = 87
            Call cells
            Let x = x + 2: Let y = y + 2
            Call numberF
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(103) Or k$ = Chr$(71) Then
            If z = 1 Then Let new1x = 7
            If z = 2 Then Let new2x = 7
            If z = 3 Then Let new3x = 7
            If z = 4 Then Let new4x = 7
            If z = 5 Then Let new5x = 7
            Let x = 269: Let y = 87
            Call cells
            Let x = x + 2: Let y = y + 2
            Call numberG
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(104) Or k$ = Chr$(72) Then
            If z = 1 Then Let new1x = 8
            If z = 2 Then Let new2x = 8
            If z = 3 Then Let new3x = 8
            If z = 4 Then Let new4x = 8
            If z = 5 Then Let new5x = 8
            Let x = 269: Let y = 87
            Call cells
            Let x = x + 2: Let y = y + 2
            Call numberH
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(13) Then Call solution
        If k$ = Chr$(27) Then System
    Loop

    coordinatey:
    Do
        k$ = InKey$
        If k$ = Chr$(49) Then
            If z = 1 Then Let new1y = 1
            If z = 2 Then Let new2y = 1
            If z = 3 Then Let new3y = 1
            If z = 4 Then Let new4y = 1
            If z = 5 Then Let new5y = 1
            Let x = 269: Let y = 117
            Call cells
            Let x = x + 2: Let y = y + 2
            Call number1
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(50) Then
            If z = 1 Then Let new1y = 2
            If z = 2 Then Let new2y = 2
            If z = 3 Then Let new3y = 2
            If z = 4 Then Let new4y = 2
            If z = 5 Then Let new5y = 2
            Let x = 269: Let y = 117
            Call cells
            Let x = x + 2: Let y = y + 2
            Call number2
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(51) Then
            If z = 1 Then Let new1y = 3
            If z = 2 Then Let new2y = 3
            If z = 3 Then Let new3y = 3
            If z = 4 Then Let new4y = 3
            If z = 5 Then Let new5y = 3
            Let x = 269: Let y = 117
            Call cells
            Let x = x + 2: Let y = y + 2
            Call number3
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(52) Then
            If z = 1 Then Let new1y = 4
            If z = 2 Then Let new2y = 4
            If z = 3 Then Let new3y = 4
            If z = 4 Then Let new4y = 4
            If z = 5 Then Let new5y = 4
            Let x = 269: Let y = 117
            Call cells
            Let x = x + 2: Let y = y + 2
            Call number4
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(53) Then
            If z = 1 Then Let new1y = 5
            If z = 2 Then Let new2y = 5
            If z = 3 Then Let new3y = 5
            If z = 4 Then Let new4y = 5
            If z = 5 Then Let new5y = 5
            Let x = 269: Let y = 117
            Call cells
            Let x = x + 2: Let y = y + 2
            Call number5
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(54) Then
            If z = 1 Then Let new1y = 6
            If z = 2 Then Let new2y = 6
            If z = 3 Then Let new3y = 6
            If z = 4 Then Let new4y = 6
            If z = 5 Then Let new5y = 6
            Let x = 269: Let y = 117
            Call cells
            Let x = x + 2: Let y = y + 2
            Call number6
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(55) Then
            If z = 1 Then Let new1y = 7
            If z = 2 Then Let new2y = 7
            If z = 3 Then Let new3y = 7
            If z = 4 Then Let new4y = 7
            If z = 5 Then Let new5y = 7
            Let x = 269: Let y = 117
            Call cells
            Let x = x + 2: Let y = y + 2
            Call number7
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(56) Then
            If z = 1 Then Let new1y = 8
            If z = 2 Then Let new2y = 8
            If z = 3 Then Let new3y = 8
            If z = 4 Then Let new4y = 8
            If z = 5 Then Let new5y = 8
            Let x = 269: Let y = 117
            Call cells
            Let x = x + 2: Let y = y + 2
            Call number8
            Let x = x - 2: Let y = y - 2
            Exit Do
        End If
        If k$ = Chr$(13) Then Call solution
        If k$ = Chr$(27) Then System
    Loop

    If z = 1 Then
        Let x = (new1x * 17) + 83: Let y = Abs((new1y * 17) - 180)
        Line (x - 1, y - 1)-(x + 14, y + 14), 0, BF
        Call king
    End If
    If z = 2 Then
        Let x = (new2x * 17) + 83: Let y = Abs((new2y * 17) - 180)
        Line (x - 1, y - 1)-(x + 14, y + 14), 0, BF
        Call queen
    End If
    If z = 3 Then
        Let x = (new3x * 17) + 83: Let y = Abs((new3y * 17) - 180)
        Line (x - 1, y - 1)-(x + 14, y + 14), 0, BF
        Call bishop
    End If
    If z = 4 Then
        Let x = (new4x * 17) + 83: Let y = Abs((new4y * 17) - 180)
        Line (x - 1, y - 1)-(x + 14, y + 14), 0, BF
        Call knight
    End If
    If z = 5 Then
        Let x = (new5x * 17) + 83: Let y = Abs((new5y * 17) - 180)
        Line (x - 1, y - 1)-(x + 14, y + 14), 0, BF
        Call rook
    End If

    If new1y = 0 Or new2y = 0 Or new3y = 0 Or new4y = 0 Or new5y = 0 Then GoTo figure
    If dc1x = new1x And dc1y = Abs(new1y - 9) And dc2x = new2x And dc2y = Abs(new2y - 9) And dc3x = new3x And dc3y = Abs(new3y - 9) And dc4x = new4x And dc4y = Abs(new4y - 9) And dc5x = new5x And dc5y = Abs(new5y - 9) Then
        Locate 4: Print "   C o n g r a t u l a t i o n  ! ! !   "
        Do
        Loop Until InKey$ <> ""
        For row = 1 To 8: For col = 1 To 8
                Let chesscount(row, col) = 0
        Next col: Next row
        Let new1x = 0: Let new2x = 0: Let new3x = 0: Let new4x = 0: Let new5x = 0
        Let new1y = 0: Let new2y = 0: Let new3y = 0: Let new4y = 0: Let new5y = 0
    Else
        Locate 4: Print " I n a c c u r a c y   a d m i t t e d ."
        Do
        Loop Until InKey$ <> ""
        Cls
        If vid = 1 Or vid = 7 Then Let c = 3
        If vid > 1 And vid < 5 Then Let c = 2
        If vid = 5 Or vid = 6 Then Let c = 1
        Let new1x = 0: Let new2x = 0: Let new3x = 0: Let new4x = 0: Let new5x = 0
        Let new1y = 0: Let new2y = 0: Let new3y = 0: Let new4y = 0: Let new5y = 0
        Let x = 35: For y = 42 To 162 Step 30
            Call cells
            Let x = x + 1: Let y = y + 1
            If y = 43 Then Call king
            If y = 73 Then Call queen
            If y = 103 Then Call bishop
            If y = 133 Then Call knight
            If y = 163 Then Call rook
            Let x = x - 1: Let y = y - 1
        Next y
        Let x = 269: For y = 87 To 117 Step 30
            Call cells
        Next y
        Call chessboard
        If vid = 1 Or vid = 7 Then Let c = 3
        If vid > 1 And vid < 5 Then Let c = 1
        If vid = 5 Or vid = 6 Then Let c = 1
        For row = 1 To 8 Step 1: For col = 1 To 8 Step 1
                Let x = (col * 17) + 84: Let y = (row * 17) + 28
                If chesscount(col, row) = 0 Then Call number0
                If chesscount(col, row) = 1 Then Call number1
                If chesscount(col, row) = 2 Then Call number2
                If chesscount(col, row) = 3 Then Call number3
                If chesscount(col, row) = 4 Then Call number4
                If chesscount(col, row) = 5 Then Call number5
        Next col: Print: Next row
        GoTo figure
    End If
End Sub

Sub number1
    Line (1 + x, 9 + y)-(10 + x, 10 + y), c, B
    Line (5 + x, 1 + y)-(6 + x, 8 + y), c, B
    Line (1 + x, 4 + y)-(4 + x, 1 + y), c
    Line (1 + x, 5 + y)-(4 + x, 2 + y), c
    Line (1 + x, 6 + y)-(4 + x, 3 + y), c
End Sub

Sub number2
    Line (1 + x, 1 + y)-(10 + x, 2 + y), c, B
    Line (1 + x, 5 + y)-(10 + x, 6 + y), c, B
    Line (1 + x, 9 + y)-(10 + x, 10 + y), c, B
    Line (9 + x, 3 + y)-(10 + x, 4 + y), c, B
    Line (1 + x, 7 + y)-(2 + x, 8 + y), c, B
End Sub

Sub number3
    Line (1 + x, 1 + y)-(9 + x, 2 + y), c, B
    Line (1 + x, 9 + y)-(9 + x, 10 + y), c, B
    Line (9 + x, 2 + y)-(10 + x, 4 + y), c, B
    Line (9 + x, 7 + y)-(10 + x, 9 + y), c, B
    Line (5 + x, 5 + y)-(9 + x, 6 + y), c, B
End Sub

Sub number4
    Line (1 + x, 1 + y)-(2 + x, 6 + y), c, B
    Line (9 + x, 1 + y)-(10 + x, 10 + y), c, B
    Line (3 + x, 5 + y)-(8 + x, 6 + y), c, B
End Sub

Sub number5
    Line (1 + x, 1 + y)-(10 + x, 2 + y), c, B
    Line (1 + x, 5 + y)-(10 + x, 6 + y), c, B
    Line (1 + x, 9 + y)-(10 + x, 10 + y), c, B
    Line (1 + x, 3 + y)-(2 + x, 4 + y), c, B
    Line (9 + x, 7 + y)-(10 + x, 8 + y), c, B
End Sub

Sub number6
    Line (1 + x, 1 + y)-(10 + x, 2 + y), c, B
    Line (1 + x, 5 + y)-(10 + x, 6 + y), c, B
    Line (1 + x, 9 + y)-(10 + x, 10 + y), c, B
    Line (1 + x, 3 + y)-(2 + x, 8 + y), c, B
    Line (9 + x, 7 + y)-(10 + x, 8 + y), c, B
End Sub

Sub number7
    Line (1 + x, 1 + y)-(10 + x, 2 + y), c, B
    Line (1 + x, 10 + y)-(8 + x, 3 + y), c
    Line (2 + x, 10 + y)-(9 + x, 3 + y), c
    Line (3 + x, 10 + y)-(10 + x, 3 + y), c
End Sub

Sub number8
    Line (2 + x, 1 + y)-(9 + x, 2 + y), c, B
    Line (2 + x, 5 + y)-(9 + x, 6 + y), c, B
    Line (2 + x, 9 + y)-(9 + x, 10 + y), c, B
    Line (1 + x, 2 + y)-(2 + x, 4 + y), c, B
    Line (1 + x, 7 + y)-(2 + x, 9 + y), c, B
    Line (9 + x, 2 + y)-(10 + x, 4 + y), c, B
    Line (9 + x, 7 + y)-(10 + x, 9 + y), c, B
End Sub

Sub number9
    Line (1 + x, 1 + y)-(10 + x, 2 + y), c, B
    Line (1 + x, 5 + y)-(10 + x, 6 + y), c, B
    Line (1 + x, 9 + y)-(10 + x, 10 + y), c, B
    Line (1 + x, 3 + y)-(2 + x, 4 + y), c, B
    Line (9 + x, 3 + y)-(10 + x, 8 + y), c, B
End Sub

Sub number0
    Line (2 + x, 1 + y)-(9 + x, 10 + y), c, B
    Line (1 + x, 2 + y)-(10 + x, 9 + y), c, B
End Sub

Sub numberA
    Line (1 + x, 2 + y)-(2 + x, 10 + y), c, B
    Line (9 + x, 2 + y)-(10 + x, 10 + y), c, B
    Line (2 + x, 1 + y)-(9 + x, 2 + y), c, B
    Line (3 + x, 6 + y)-(8 + x, 7 + y), c, B
End Sub

Sub numberB
    Line (1 + x, 1 + y)-(9 + x, 2 + y), c, B
    Line (1 + x, 5 + y)-(9 + x, 6 + y), c, B
    Line (1 + x, 9 + y)-(9 + x, 10 + y), c, B
    Line (1 + x, 3 + y)-(2 + x, 8 + y), c, B
    Line (9 + x, 2 + y)-(10 + x, 4 + y), c, B
    Line (9 + x, 7 + y)-(10 + x, 9 + y), c, B
End Sub

Sub numberC
    Line (2 + x, 1 + y)-(10 + x, 2 + y), c, B
    Line (2 + x, 9 + y)-(10 + x, 10 + y), c, B
    Line (1 + x, 2 + y)-(2 + x, 9 + y), c, B
End Sub

Sub numberD
    Line (1 + x, 1 + y)-(9 + x, 2 + y), c, B
    Line (1 + x, 9 + y)-(9 + x, 10 + y), c, B
    Line (1 + x, 3 + y)-(2 + x, 8 + y), c, B
    Line (9 + x, 2 + y)-(10 + x, 9 + y), c, B
End Sub

Sub numberE
    Line (1 + x, 1 + y)-(10 + x, 2 + y), c, B
    Line (1 + x, 9 + y)-(10 + x, 10 + y), c, B
    Line (3 + x, 5 + y)-(6 + x, 6 + y), c, B
    Line (1 + x, 3 + y)-(2 + x, 8 + y), c, B
End Sub

Sub numberF
    Line (1 + x, 1 + y)-(10 + x, 2 + y), c, B
    Line (3 + x, 5 + y)-(6 + x, 6 + y), c, B
    Line (1 + x, 3 + y)-(2 + x, 10 + y), c, B
End Sub

Sub numberG
    Line (1 + x, 1 + y)-(10 + x, 2 + y), c, B
    Line (1 + x, 9 + y)-(10 + x, 10 + y), c, B
    Line (1 + x, 3 + y)-(2 + x, 8 + y), c, B
    Line (9 + x, 5 + y)-(10 + x, 8 + y), c, B
    Line (6 + x, 5 + y)-(8 + x, 6 + y), c, B
End Sub

Sub numberH
    Line (1 + x, 1 + y)-(2 + x, 10 + y), c, B
    Line (9 + x, 1 + y)-(10 + x, 10 + y), c, B
    Line (3 + x, 5 + y)-(8 + x, 6 + y), c, B
End Sub

Sub numberI
    Line (3 + x, 1 + y)-(8 + x, 2 + y), c, B
    Line (3 + x, 9 + y)-(8 + x, 10 + y), c, B
    Line (5 + x, 3 + y)-(6 + x, 8 + y), c, B
End Sub

Sub numberJ
    Line (1 + x, 6 + y)-(2 + x, 9 + y), c, B
    Line (9 + x, 1 + y)-(10 + x, 9 + y), c, B
    Line (2 + x, 9 + y)-(9 + x, 10 + y), c, B
End Sub

Sub king
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (4 + x, 6 + y)-(9 + x, 9 + y), c, BF
    Line (2 + x, 4 + y)-(11 + x, 5 + y), c, BF
    Line (0 + x, 3 + y)-(13 + x, 3 + y), c, BF
    Line (0 + x, 2 + y)-(2 + x, 2 + y), c, BF
    Line (4 + x, 2 + y)-(9 + x, 2 + y), c, BF
    Line (11 + x, 2 + y)-(13 + x, 2 + y), c, BF
    Line (0 + x, 1 + y)-(1 + x, 1 + y), c, BF
    Line (5 + x, 1 + y)-(8 + x, 1 + y), c, BF
    Line (12 + x, 1 + y)-(13 + x, 1 + y), c, BF
    Line (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
    PSet (0 + x, 0 + y), c
    PSet (13 + x, 0 + y), c
End Sub

Sub queen
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (4 + x, 8 + y)-(9 + x, 9 + y), c, BF
    Line (5 + x, 6 + y)-(8 + x, 7 + y), c, BF
    Line (4 + x, 5 + y)-(9 + x, 5 + y), c, BF
    Line (3 + x, 4 + y)-(10 + x, 4 + y), c, BF
    Line (2 + x, 3 + y)-(11 + x, 3 + y), c, BF
    Line (1 + x, 2 + y)-(12 + x, 2 + y), c, BF
    Line (0 + x, 1 + y)-(13 + x, 1 + y), c, BF
    Line (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
    PSet (0 + x, 0 + y), c
    PSet (3 + x, 0 + y), c
    PSet (10 + x, 0 + y), c
    PSet (13 + x, 0 + y), c
End Sub

Sub bishop
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (4 + x, 2 + y)-(9 + x, 7 + y), c, BF
    Line (5 + x, 1 + y)-(8 + x, 9 + y), c, BF
    Line (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
End Sub

Sub knight
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (4 + x, 9 + y)-(9 + x, 9 + y), c, BF
    Line (5 + x, 8 + y)-(10 + x, 8 + y), c, BF
    Line (6 + x, 7 + y)-(11 + x, 7 + y), c, BF
    Line (7 + x, 6 + y)-(12 + x, 6 + y), c, BF
    Line (8 + x, 4 + y)-(13 + x, 5 + y), c, BF
    Line (1 + x, 3 + y)-(12 + x, 3 + y), c, BF
    Line (2 + x, 2 + y)-(11 + x, 2 + y), c, BF
    Line (3 + x, 1 + y)-(10 + x, 1 + y), c, BF
    Line (4 + x, 0 + y)-(9 + x, 0 + y), c, BF
End Sub

Sub rook
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (4 + x, 8 + y)-(9 + x, 9 + y), c, BF
    Line (2 + x, 6 + y)-(11 + x, 7 + y), c, BF
    Line (0 + x, 4 + y)-(13 + x, 5 + y), c, BF
    Line (0 + x, 0 + y)-(1 + x, 3 + y), c, BF
    Line (4 + x, 0 + y)-(5 + x, 3 + y), c, BF
    Line (8 + x, 0 + y)-(9 + x, 3 + y), c, BF
    Line (12 + x, 0 + y)-(13 + x, 3 + y), c, BF
End Sub

Sub pawn
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (5 + x, 8 + y)-(8 + x, 9 + y), c, BF
    Line (4 + x, 7 + y)-(9 + x, 7 + y), c, BF
    Line (3 + x, 6 + y)-(10 + x, 6 + y), c, BF
    Line (2 + x, 4 + y)-(11 + x, 5 + y), c, BF
    Line (3 + x, 3 + y)-(10 + x, 3 + y), c, BF
    Line (4 + x, 2 + y)-(9 + x, 2 + y), c, BF
    Line (5 + x, 1 + y)-(8 + x, 1 + y), c, BF
    Line (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
End Sub

Sub kingcount
    If dc1x > 1 And dc1x < 8 And dc1y > 1 And dc1y < 8 Then
        Let chesscount(dc1x - 1, dc1y - 1) = chesscount(dc1x - 1, dc1y - 1) + 1
        Let chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
        Let chesscount(dc1x - 1, dc1y + 1) = chesscount(dc1x - 1, dc1y + 1) + 1
        Let chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
        Let chesscount(dc1x + 1, dc1y + 1) = chesscount(dc1x + 1, dc1y + 1) + 1
        Let chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
        Let chesscount(dc1x + 1, dc1y - 1) = chesscount(dc1x + 1, dc1y - 1) + 1
        Let chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
    Else
        If dc1x = 1 And dc1y = 1 Then
            Let chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
            Let chesscount(dc1x + 1, dc1y + 1) = chesscount(dc1x + 1, dc1y + 1) + 1
            Let chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
        End If
        If dc1x = 1 And dc1y > 1 And dc1y < 8 Then
            Let chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
            Let chesscount(dc1x + 1, dc1y + 1) = chesscount(dc1x + 1, dc1y + 1) + 1
            Let chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
            Let chesscount(dc1x + 1, dc1y - 1) = chesscount(dc1x + 1, dc1y - 1) + 1
            Let chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
        End If
        If dc1x = 1 And dc1y = 8 Then
            Let chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
            Let chesscount(dc1x + 1, dc1y - 1) = chesscount(dc1x + 1, dc1y - 1) + 1
            Let chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
        End If
        If dc1x > 1 And dc1x < 8 And dc1y = 8 Then
            Let chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
            Let chesscount(dc1x + 1, dc1y - 1) = chesscount(dc1x + 1, dc1y - 1) + 1
            Let chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
            Let chesscount(dc1x - 1, dc1y - 1) = chesscount(dc1x - 1, dc1y - 1) + 1
            Let chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
        End If
        If dc1x = 8 And dc1y = 8 Then
            Let chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
            Let chesscount(dc1x - 1, dc1y - 1) = chesscount(dc1x - 1, dc1y - 1) + 1
            Let chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
        End If
        If dc1x = 8 And dc1y > 1 And dc1y < 8 Then
            Let chesscount(dc1x, dc1y - 1) = chesscount(dc1x, dc1y - 1) + 1
            Let chesscount(dc1x - 1, dc1y - 1) = chesscount(dc1x - 1, dc1y - 1) + 1
            Let chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
            Let chesscount(dc1x - 1, dc1y + 1) = chesscount(dc1x - 1, dc1y + 1) + 1
            Let chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
        End If
        If dc1x = 8 And dc1y = 1 Then
            Let chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
            Let chesscount(dc1x - 1, dc1y + 1) = chesscount(dc1x - 1, dc1y + 1) + 1
            Let chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
        End If
        If dc1x > 1 And dc1x < 8 And dc1y = 1 Then
            Let chesscount(dc1x - 1, dc1y) = chesscount(dc1x - 1, dc1y) + 1
            Let chesscount(dc1x - 1, dc1y + 1) = chesscount(dc1x - 1, dc1y + 1) + 1
            Let chesscount(dc1x, dc1y + 1) = chesscount(dc1x, dc1y + 1) + 1
            Let chesscount(dc1x + 1, dc1y + 1) = chesscount(dc1x + 1, dc1y + 1) + 1
            Let chesscount(dc1x + 1, dc1y) = chesscount(dc1x + 1, dc1y) + 1
        End If
    End If
End Sub

Sub queencount
    If dc2x > 1 And dc2x < 8 And dc2y > 1 And dc2y < 8 Then
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc2x - count, dc2y - count) = chesscount(dc2x - count, dc2y - count) + 1
        Loop Until dc2x - count = 1 Or dc2y - count = 1
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
        Loop Until dc2x - count = 1
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc2x - count, dc2y + count) = chesscount(dc2x - count, dc2y + count) + 1
        Loop Until dc2x - count = 1 Or dc2y + count = 8
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
        Loop Until dc2y + count = 8
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc2x + count, dc2y + count) = chesscount(dc2x + count, dc2y + count) + 1
        Loop Until dc2x + count = 8 Or dc2y + count = 8
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
        Loop Until dc2x + count = 8
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc2x + count, dc2y - count) = chesscount(dc2x + count, dc2y - count) + 1
        Loop Until dc2x + count = 8 Or dc2y - count = 1
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
        Loop Until dc2y - count = 1
    Else
        If dc2x = 1 And dc2y = 1 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
            Loop Until dc2y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x + count, dc2y + count) = chesscount(dc2x + count, dc2y + count) + 1
            Loop Until dc2x + count = 8 Or dc2y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
            Loop Until dc2x + count = 8
        End If
        If dc2x = 1 And dc2y > 1 And dc2y < 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
            Loop Until dc2y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x + count, dc2y + count) = chesscount(dc2x + count, dc2y + count) + 1
            Loop Until dc2x + count = 8 Or dc2y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
            Loop Until dc2x + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x + count, dc2y - count) = chesscount(dc2x + count, dc2y - count) + 1
            Loop Until dc2x + count = 8 Or dc2y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
            Loop Until dc2y - count = 1
        End If
        If dc2x = 1 And dc2y = 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
            Loop Until dc2x + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x + count, dc2y - count) = chesscount(dc2x + count, dc2y - count) + 1
            Loop Until dc2x + count = 8 Or dc2y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
            Loop Until dc2y - count = 1
        End If
        If dc2x > 1 And dc2x < 8 And dc2y = 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
            Loop Until dc2x + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x + count, dc2y - count) = chesscount(dc2x + count, dc2y - count) + 1
            Loop Until dc2x + count = 8 Or dc2y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
            Loop Until dc2y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x - count, dc2y - count) = chesscount(dc2x - count, dc2y - count) + 1
            Loop Until dc2x - count = 1 Or dc2y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
            Loop Until dc2x - count = 1
        End If
        If dc2x = 8 And dc2y = 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
            Loop Until dc2y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x - count, dc2y - count) = chesscount(dc2x - count, dc2y - count) + 1
            Loop Until dc2x - count = 1 Or dc2y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
            Loop Until dc2x - count = 1
        End If
        If dc2x = 8 And dc2y > 1 And dc2y < 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x, dc2y - count) = chesscount(dc2x, dc2y - count) + 1
            Loop Until dc2y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x - count, dc2y - count) = chesscount(dc2x - count, dc2y - count) + 1
            Loop Until dc2x - count = 1 Or dc2y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
            Loop Until dc2x - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x - count, dc2y + count) = chesscount(dc2x - count, dc2y + count) + 1
            Loop Until dc2x - count = 1 Or dc2y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
            Loop Until dc2y + count = 8
        End If
        If dc2x = 8 And dc2y = 1 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
            Loop Until dc2x - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x - count, dc2y + count) = chesscount(dc2x - count, dc2y + count) + 1
            Loop Until dc2x - count = 1 Or dc2y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
            Loop Until dc2y + count = 8
        End If
        If dc2x > 1 And dc2x < 8 And dc2y = 1 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x - count, dc2y) = chesscount(dc2x - count, dc2y) + 1
            Loop Until dc2x - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x - count, dc2y + count) = chesscount(dc2x - count, dc2y + count) + 1
            Loop Until dc2x - count = 1 Or dc2y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x, dc2y + count) = chesscount(dc2x, dc2y + count) + 1
            Loop Until dc2y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x + count, dc2y + count) = chesscount(dc2x + count, dc2y + count) + 1
            Loop Until dc2x + count = 8 Or dc2y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc2x + count, dc2y) = chesscount(dc2x + count, dc2y) + 1
            Loop Until dc2x + count = 8
        End If
    End If
End Sub

Sub bishopcount
    If dc3x > 1 And dc3x < 8 And dc3y > 1 And dc3y < 8 Then
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc3x - count, dc3y - count) = chesscount(dc3x - count, dc3y - count) + 1
        Loop Until dc3x - count = 1 Or dc3y - count = 1
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc3x - count, dc3y + count) = chesscount(dc3x - count, dc3y + count) + 1
        Loop Until dc3x - count = 1 Or dc3y + count = 8
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc3x + count, dc3y + count) = chesscount(dc3x + count, dc3y + count) + 1
        Loop Until dc3x + count = 8 Or dc3y + count = 8
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc3x + count, dc3y - count) = chesscount(dc3x + count, dc3y - count) + 1
        Loop Until dc3x + count = 8 Or dc3y - count = 1
    Else
        If dc3x = 1 And dc3y = 1 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x + count, dc3y + count) = chesscount(dc3x + count, dc3y + count) + 1
            Loop Until dc3x + count = 8 Or dc3y + count = 8
        End If
        If dc3x = 1 And dc3y > 1 And dc3y < 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x + count, dc3y + count) = chesscount(dc3x + count, dc3y + count) + 1
            Loop Until dc3x + count = 8 Or dc3y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x + count, dc3y - count) = chesscount(dc3x + count, dc3y - count) + 1
            Loop Until dc3x + count = 8 Or dc3y - count = 1
        End If
        If dc3x = 1 And dc3y = 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x + count, dc3y - count) = chesscount(dc3x + count, dc3y - count) + 1
            Loop Until dc3x + count = 8 Or dc3y - count = 1
        End If
        If dc3x > 1 And dc3x < 8 And dc3y = 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x + count, dc3y - count) = chesscount(dc3x + count, dc3y - count) + 1
            Loop Until dc3x + count = 8 Or dc3y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x - count, dc3y - count) = chesscount(dc3x - count, dc3y - count) + 1
            Loop Until dc3x - count = 1 Or dc3y - count = 1
        End If
        If dc3x = 8 And dc3y = 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x - count, dc3y - count) = chesscount(dc3x - count, dc3y - count) + 1
            Loop Until dc3x - count = 1 Or dc3y - count = 1
        End If
        If dc3x = 8 And dc3y > 1 And dc3y < 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x - count, dc3y - count) = chesscount(dc3x - count, dc3y - count) + 1
            Loop Until dc3x - count = 1 Or dc3y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x - count, dc3y + count) = chesscount(dc3x - count, dc3y + count) + 1
            Loop Until dc3x - count = 1 Or dc3y + count = 8
        End If
        If dc3x = 8 And dc3y = 1 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x - count, dc3y + count) = chesscount(dc3x - count, dc3y + count) + 1
            Loop Until dc3x - count = 1 Or dc3y + count = 8
        End If
        If dc3x > 1 And dc3x < 8 And dc3y = 1 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x - count, dc3y + count) = chesscount(dc3x - count, dc3y + count) + 1
            Loop Until dc3x - count = 1 Or dc3y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc3x + count, dc3y + count) = chesscount(dc3x + count, dc3y + count) + 1
            Loop Until dc3x + count = 8 Or dc3y + count = 8
        End If
    End If
End Sub

Sub knightcount
    If dc4x > 2 And dc4x < 7 And dc4y > 2 And dc4y < 7 Then
        Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
        Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
        Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
        Let chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
        Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
        Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
        Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
        Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
    Else
        If dc4x = 1 And dc4y = 1 Then
            Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
        End If
        If dc4x = 2 And dc4y = 1 Then
            Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
        End If
        If dc4x > 2 And dc4x < 7 And dc4y = 1 Then
            Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 7 And dc4y = 1 Then
            Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 8 And dc4y = 1 Then
            Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 8 And dc4y = 2 Then
            Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
        End If
        If dc4x = 8 And dc4y > 2 And dc4y < 7 Then
            Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
        End If
        If dc4x = 8 And dc4y = 7 Then
            Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
        End If
        If dc4x = 8 And dc4y = 8 Then
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
        End If
        If dc4x = 7 And dc4y = 8 Then
            Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
        End If
        If dc4x > 2 And dc4x < 7 And dc4y = 8 Then
            Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            Let chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
        End If
        If dc4x = 2 And dc4y = 8 Then
            Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
        End If
        If dc4x = 1 And dc4y = 8 Then
            Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            Let chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
        End If
        If dc4x = 1 And dc4y = 7 Then
            Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            Let chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
        End If
        If dc4x = 1 And dc4y > 2 And dc4y < 7 Then
            Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            Let chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
        End If
        If dc4x = 1 And dc4y = 2 Then
            Let chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
        End If
        If dc4x = 2 And dc4y = 2 Then
            Let chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
        End If
        If dc4x > 2 And dc4x < 7 And dc4y = 2 Then
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            Let chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 7 And dc4y = 2 Then
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 7 And dc4y > 2 And dc4y < 7 Then
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
            Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 7 And dc4y = 7 Then
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x > 2 And dc4x < 7 And dc4y = 7 Then
            Let chesscount(dc4x - 2, dc4y - 1) = chesscount(dc4x - 2, dc4y - 1) + 1
            Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            Let chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            Let chesscount(dc4x - 2, dc4y + 1) = chesscount(dc4x - 2, dc4y + 1) + 1
        End If
        If dc4x = 2 And dc4y = 7 Then
            Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            Let chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
        End If
        If dc4x = 2 And dc4y > 2 And dc4y < 7 Then
            Let chesscount(dc4x - 1, dc4y - 2) = chesscount(dc4x - 1, dc4y - 2) + 1
            Let chesscount(dc4x + 1, dc4y - 2) = chesscount(dc4x + 1, dc4y - 2) + 1
            Let chesscount(dc4x + 2, dc4y - 1) = chesscount(dc4x + 2, dc4y - 1) + 1
            Let chesscount(dc4x + 2, dc4y + 1) = chesscount(dc4x + 2, dc4y + 1) + 1
            Let chesscount(dc4x + 1, dc4y + 2) = chesscount(dc4x + 1, dc4y + 2) + 1
            Let chesscount(dc4x - 1, dc4y + 2) = chesscount(dc4x - 1, dc4y + 2) + 1
        End If
    End If
End Sub

Sub rookcount
    If dc5x > 1 And dc5x < 8 And dc5y > 1 And dc5y < 8 Then
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
        Loop Until dc5x - count = 1
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
        Loop Until dc5y + count = 8
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
        Loop Until dc5x + count = 8
        Let count = 0
        Do
            Let count = count + 1
            Let chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
        Loop Until dc5y - count = 1
    Else
        If dc5x = 1 And dc5y = 1 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 8
        End If
        If dc5x = 1 And dc5y > 1 And dc5y < 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
        End If
        If dc5x = 1 And dc5y = 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
        End If
        If dc5x > 1 And dc5x < 8 And dc5y = 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
        End If
        If dc5x = 8 And dc5y = 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
        End If
        If dc5x = 8 And dc5y > 1 And dc5y < 8 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x, dc5y - count) = chesscount(dc5x, dc5y - count) + 1
            Loop Until dc5y - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 8
        End If
        If dc5x = 8 And dc5y = 1 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 8
        End If
        If dc5x > 1 And dc5x < 8 And dc5y = 1 Then
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x - count, dc5y) = chesscount(dc5x - count, dc5y) + 1
            Loop Until dc5x - count = 1
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x, dc5y + count) = chesscount(dc5x, dc5y + count) + 1
            Loop Until dc5y + count = 8
            Let count = 0
            Do
                Let count = count + 1
                Let chesscount(dc5x + count, dc5y) = chesscount(dc5x + count, dc5y) + 1
            Loop Until dc5x + count = 8
        End If
    End If
End Sub

Sub solution
    If vid = 1 Or vid = 7 Then Let c = 3
    If vid > 1 And vid < 5 Then Let c = 2
    If vid = 5 Or vid = 6 Then Let c = 1
    Let x = (dc1x * 17) + 83: y = (dc1y * 17) + 27
    Line (x - 1, y - 1)-(x + 14, y + 14), 0, BF
    Call king
    Let x = (dc2x * 17) + 83: y = (dc2y * 17) + 27
    Line (x - 1, y - 1)-(x + 14, y + 14), 0, BF
    Call queen
    Let x = (dc3x * 17) + 83: y = (dc3y * 17) + 27
    Line (x - 1, y - 1)-(x + 14, y + 14), 0, BF
    Call bishop
    Let x = (dc4x * 17) + 83: y = (dc4y * 17) + 27
    Line (x - 1, y - 1)-(x + 14, y + 14), 0, BF
    Call knight
    Let x = (dc5x * 17) + 83: y = (dc5y * 17) + 27
    Line (x - 1, y - 1)-(x + 14, y + 14), 0, BF
    Call rook
    If vid = 1 Or vid = 7 Then Let c = 3
    If vid > 1 And vid < 5 Then Let c = 10
    If vid = 5 Or vid = 6 Then Let c = 1
End Sub