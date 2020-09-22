VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Disable copying from TextBox"
   ClientHeight    =   3015
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5775
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   5775
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Text            =   "Test pasting from clipboard"
      Top             =   2520
      Width           =   5535
   End
   Begin VB.TextBox Text1 
      Height          =   2295
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Text            =   "Form1.frx":000C
      Top             =   120
      Width           =   5535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
PrevProc = GetWindowLong(Text1.hWnd, GWL_WNDPROC)
Call SetWindowLong(Text1.hWnd, GWL_WNDPROC, AddressOf Proc)
End Sub
