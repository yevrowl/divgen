$ExeIcon:'divgen.ico'
_Icon
_Title "Divine generator for chess"
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
declare sub letter1 ()
declare sub letter2 ()
declare sub letter3 ()
declare sub letter4 ()
declare sub letter5 ()
declare sub letter6 ()
declare sub letter7 ()
declare sub letter8 ()
declare sub letterA ()
declare sub letterB ()
declare sub letterC ()
declare sub letterD ()
declare sub letterE ()
declare sub letterF ()
declare sub letterG ()
declare sub letterH ()
declare sub king ()
declare sub queen ()
declare sub bishop ()
declare sub knight ()
declare sub rook ()
declare sub pawn ()
declare sub kingcount ()
declare sub queencount ()
declare sub bishopcount ()
declare sub knightcount ()
declare sub rookcount ()
declare sub cells ()
declare sub chessboard ()
declare sub chess ()
declare sub solution ()

Common Shared x, y, z, cd1, cd2, cn, ck, cf, cb1, cb2, cb3, cb4, cb5 As Integer
Common Shared dc1x, dc1y, dc2x, dc2y, dc3x, dc3y, dc4x, dc4y, dc5x, dc5y, row, col, index, count As Integer
cd1 = 1: cd2 = 1: cn = 7: ck = 7: cf = 7: cb1 = 7: cb2 = 6: cb3 = 3: cb4 = 13: cb5 = 9

Dim Shared chebo(8, 8) As Integer
index = 100
For row = 1 To 8: For col = 1 To 8
        chebo(row, col) = index + 1
        index = index + 1
Next col: Next row
Dim Shared chesscount(8, 8) As Integer

begin:
Cls
For row = 1 To 8: For col = 1 To 8
        chesscount(row, col) = 0
Next col: Next row
Randomize Timer

Screen 12
Color 1
Print
Print "  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�"
Print "  �                                                                           �"
Print "  �             樛樛樛  樛樛� 樛� 樛� 樛樛� 樛� 樛� 樛樛樛�                   �"
Print "  �             � 樛 炳 桀 樂 � � � � 桀 樂 � 炳� � � 樛樛�                   �"
Print "  �             � 桀� � 樂 桀 桀炳炮� 樂 桀 � 桀� � � 樛樂�                   �"
Print "  �             桀樛樂� 桀樛�  炳樂�  桀樛� 桀桎桀� 桀樛樛�                   �"
Print "  �                                                                           �"
Print "  �  樛樛樛� 樛樛樛� 樛� 樛� 樛樛樛� 樛樛樛� 樛樛樛� 樛樛樛� 樛樛樛� 樛樛樛�  �"
Print "  �  � 樛樛� � 樛樛� � 炳� � � 樛樛� � 樛� � � 樛� � 桀� 樛� � 樛� � � 樛� �  �"
Print "  �  � 桀� � � 樛樂� � 桀� � � 樛樂� � � 樛� � 樛� �   � �   � 桀� � � � 樛�  �"
Print "  �  桀樛樛� 桀樛樛� 桀桎桀� 桀樛樛� 桀桀樛� 桀� 桀�   桀�   桀樛樛� 桀桀樛�  �"
Print "  �                                                                           �"
Print "  �                         樛樛樛� 樛樛樛� 樛樛樛�                           �"
Print "  �                         � 樛樛� � 樛� � � 樛� �                           �"
Print "  �                         � 樛�   � 桀� � � � 樛�                           �"
Print "  �                         桀�     桀樛樛� 桀桀樛�                           �"
Print "  �                                                                           �"
Print "  �                 樛樛樛� 樛� 樛� 樛樛樛� 樛樛樛� 樛樛樛�                   �"
Print "  �                 � 樛樛� � 桀� � � 樛樛� � 樛樛� � 樛樛�                   �"
Print "  �                 � 桀樛� � 樛� � � 樛樂� 桀樛� � 桀樛� �                   �"
Print "  �                 桀樛樛� 桀� 桀� 桀樛樛� 桀樛樛� 桀樛樛�                   �"
Print "  �                                                                           �"
Print "  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�"
Print
Color 2
Print "                Press Enter key to solution or Esc key for exit"
Print
Print "                           Press any key to continue"
Do
Loop Until InKey$ <> ""
Do
    Cls
    Call chessboard
    Call chess
    GoTo begin
Loop

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

    figure:
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
                    GoTo coordinatex
                End If
            Case Is = Chr$(50)
                z = 2: y = 151: x = 50
                If new2x <> 0 Then
                    Rem
                Else
                    Call queen
                    GoTo coordinatex
                End If
            Case Is = Chr$(51)
                z = 3: y = 220: x = 50
                If new3x <> 0 Then
                    Rem
                Else
                    Call bishop
                    GoTo coordinatex
                End If
            Case Is = Chr$(52)
                z = 4: y = 289: x = 50
                If new4x <> 0 Then
                    Rem
                Else
                    Call knight
                    GoTo coordinatex
                End If
            Case Is = Chr$(53)
                z = 5: y = 358: x = 50
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
        If k$ = Chr$(13) Then Call solution
        If k$ = Chr$(27) Then System
    Loop

    coordinatey:
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
        If k$ = Chr$(13) Then Call solution
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
    If new1y = 0 Or new2y = 0 Or new3y = 0 Or new4y = 0 Or new5y = 0 Then GoTo figure

    If dc1x = new1x And dc1y = Abs(new1y - 9) And dc2x = new2x And dc2y = Abs(new2y - 9) And dc3x = new3x And dc3y = Abs(new3y - 9) And dc4x = new4x And dc4y = Abs(new4y - 9) And dc5x = new5x And dc5y = Abs(new5y - 9) Then
        Locate 2: Color 2: Print "                       C o n g r a t u l a t i o n   ! ! !                      "
    Else
        Locate 2: Color 2: Print "                   I n a c c u r a c y   a d m i t t e d . . .                  "
    End If

    Call solution
    Do
    Loop Until InKey$ <> ""
    Cls
    Call chessboard
    cf = 7
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
End Sub

Sub solution
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