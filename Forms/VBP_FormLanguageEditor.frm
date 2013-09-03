VERSION 5.00
Begin VB.Form FormLanguageEditor 
   BackColor       =   &H80000005&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   " Language Editor"
   ClientHeight    =   9000
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   15360
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   600
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1024
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.PictureBox picContainer 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   7455
      Index           =   0
      Left            =   3480
      ScaleHeight     =   497
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   785
      TabIndex        =   6
      Top             =   720
      Width           =   11775
      Begin VB.ListBox lstLanguages 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   4620
         Left            =   840
         Sorted          =   -1  'True
         TabIndex        =   10
         Top             =   1560
         Width           =   10695
      End
      Begin PhotoDemon.smartOptionButton optBaseLanguage 
         Height          =   375
         Index           =   0
         Left            =   120
         TabIndex        =   8
         Top             =   120
         Width           =   4380
         _ExtentX        =   7726
         _ExtentY        =   661
         Caption         =   "start a new language file from scratch"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin PhotoDemon.smartOptionButton optBaseLanguage 
         Height          =   375
         Index           =   1
         Left            =   120
         TabIndex        =   9
         Top             =   600
         Width           =   3510
         _ExtentX        =   6191
         _ExtentY        =   661
         Caption         =   "edit an existing language file:"
         Value           =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label lblTitle 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "language files currently available:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   285
         Index           =   0
         Left            =   840
         TabIndex        =   7
         Top             =   1080
         Width           =   3540
      End
   End
   Begin VB.CommandButton cmdNext 
      Caption         =   "&Next"
      Default         =   -1  'True
      Height          =   615
      Left            =   11880
      TabIndex        =   4
      Top             =   8310
      Width           =   1725
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   615
      Left            =   13860
      TabIndex        =   3
      Top             =   8310
      Width           =   1365
   End
   Begin VB.CommandButton cmdPrevious 
      Caption         =   "&Previous"
      Enabled         =   0   'False
      Height          =   615
      Left            =   10080
      TabIndex        =   2
      Top             =   8310
      Width           =   1725
   End
   Begin VB.PictureBox picContainer 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   7455
      Index           =   1
      Left            =   3480
      ScaleHeight     =   497
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   785
      TabIndex        =   11
      Top             =   720
      Width           =   11775
      Begin VB.ComboBox cmbPhraseFilter 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   360
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   15
         Top             =   6840
         Width           =   4500
      End
      Begin VB.ListBox lstPhrases 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   5580
         Left            =   240
         Sorted          =   -1  'True
         TabIndex        =   13
         Top             =   480
         Width           =   4500
      End
      Begin VB.Label lblTitle 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "phrases to display:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   285
         Index           =   2
         Left            =   0
         TabIndex        =   14
         Top             =   6360
         Width           =   1995
      End
      Begin VB.Label lblTitle 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "list of phrases:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   285
         Index           =   1
         Left            =   0
         TabIndex        =   12
         Top             =   0
         Width           =   1560
      End
   End
   Begin VB.Label lblBackground 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   -240
      TabIndex        =   5
      Top             =   8235
      Width           =   17415
   End
   Begin VB.Label lblExplanation 
      BackStyle       =   0  'Transparent
      Caption         =   "(text populated at run-time)"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   7320
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Top             =   780
      Width           =   3135
      WordWrap        =   -1  'True
   End
   Begin VB.Line Line1 
      BorderColor     =   &H8000000D&
      Index           =   0
      X1              =   224
      X2              =   224
      Y1              =   48
      Y2              =   544
   End
   Begin VB.Label lblWizardTitle 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Step 1: select a language file"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3555
   End
End
Attribute VB_Name = "FormLanguageEditor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Option Compare Text

'Custom tooltip class allows for things like multiline, theming, and multiple monitor support
Dim m_ToolTip As clsToolTip

'The current list of available languages.  This list is not currently updated with the language the user is working on.
' It only contains a list of languages already stored in the /App/PhotoDemon/Languages and Data/Languages folders.
Dim listOfAvailableLanguages() As pdLanguageFile

'The language currently being edited.  This curLanguage variable will contain all metadata for the language file.
Dim curLanguage As pdLanguageFile

'The current wizard page
Dim curWizardPage As Long

Private Sub CmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdNext_Click()
    changeWizardPage True
End Sub

Private Sub cmdPrevious_Click()
    changeWizardPage False
End Sub

'Change the active wizard page.  If moveForward is set to TRUE, the wizard page will be advanced; otherwise, it will move
' to the previous page.
Private Sub changeWizardPage(ByVal moveForward As Boolean)

    'Before changing the page, maek sure all user input on the current page is valid
    Select Case curWizardPage
    
        'The first page is the language selection page.  When the user leaves this page, we must load the language they've selected
        ' into memory - so this validation step is quite large.
        Case 0
        
            'If the user wants to edit an existing language, make sure they've selected one.  (I hate OK-only message boxes, but am
            ' currently too lazy to write a more elegant warning!)
            If optBaseLanguage(1) And (lstLanguages.ListIndex = -1) Then
                pdMsgBox "Please select a language before continuing to the next step.", vbOKOnly + vbInformation + vbApplicationModal, "Please select a language"
                Exit Sub
            End If
            
            'If they want to start a new language file from scratch, set the load path to the MASTER English language file (which is
            ' hopefully present... if not, there's not much we can do.)
            If optBaseLanguage(0) Then
                
                If loadAllPhrasesFromFile(g_UserPreferences.getLanguagePath & "Master\MASTER.xml") Then
                    
                'For some reason, we failed to load the master language file.  Tell them to download a fresh copy of PD.
                Else
                    pdMsgBox "Unfortunately, the master language file could not be located on this PC.  This file is included with the official release of PhotoDemon, but it may not be included with development or beta builds." & vbCrLf & vbCrLf & "To start a new translation, please download a fresh copy of PhotoDemon from tannerhelland.com/photodemon.", vbOKOnly + vbInformation + vbApplicationModal, "Master language file missing"
                    Unload Me
                End If
            
            'They want to edit an existing language.  Follow the same general pattern as for the master language file (above).
            Else
            
                If loadAllPhrasesFromFile(listOfAvailableLanguages(lstLanguages.ListIndex).FileName) Then
                    
                'For some reason, we failed to load the master language file.  Tell them to download a fresh copy of PD.
                Else
                    pdMsgBox "Unfortunately, this language file could not be loaded.  It's possible the copy on this PC is out-of-date." & vbCrLf & vbCrLf & "To continue, please download a fresh copy of PhotoDemon from tannerhelland.com/photodemon.", vbOKOnly + vbInformation + vbApplicationModal, "Language file could not be loaded"
                    Unload Me
                End If
            
            End If
            
        'The second page is the phrase editing page.  This is the most important page in the wizard.
        Case 1
    
    End Select

    'Everything has successfully validated, so go ahead and advance (or decrement) the page count
    If moveForward Then curWizardPage = curWizardPage + 1 Else curWizardPage = curWizardPage - 1
        
    'Hide all inactive panels (and show the active one)
    Dim i As Long
    For i = 0 To picContainer.Count - 1
        If i = curWizardPage Then picContainer(i).Visible = True Else picContainer(i).Visible = False
    Next i
    
    'If we are at the beginning, disable the previous button
    If curWizardPage = 0 Then cmdPrevious.Enabled = False Else cmdPrevious.Enabled = True
    
    'If we are at the end, change the text of the "next" button; otherwise, make sure it says "next"
    If curWizardPage = picContainer.Count - 1 Then
        cmdNext.Enabled = False
    Else
        cmdNext.Enabled = True
    End If
    '    cmdNext.Caption = g_Language.TranslateMessage("Save language and exit editor")
    'Else
    '    If cmdNext.Caption <> g_Language.TranslateMessage("Next") Then cmdNext.Caption = g_Language.TranslateMessage("Next")
    'End If

End Sub

Private Sub Form_Activate()
    
    'Assign the system hand cursor to all relevant objects
    Set m_ToolTip = New clsToolTip
    makeFormPretty Me, m_ToolTip
        
End Sub

Private Sub Form_Load()
    
    MsgBox "This tool is currently under heavy development.  It may not work as expected (or at all).", vbInformation + vbOKOnly + vbApplicationModal, "Development warning"
    
    'By default, the first wizard page is displayed
    curWizardPage = 0
    
    'Retrieve a list of available languages from the translation engine
    g_Language.copyListOfLanguages listOfAvailableLanguages
    
    'Add the contents of that array to the list box on the opening panel (the list of available languages, from which the user
    ' can select a language file as the "starting point" for their own translation).
    lstLanguages.Clear
    
    Dim i As Long
    For i = 0 To UBound(listOfAvailableLanguages)
    
        'Note that we DO NOT add the English language entry - that is used by the "start a new language file from scratch" option.
        If StrComp(listOfAvailableLanguages(i).langType, "Default", vbTextCompare) <> 0 Then
            Dim listEntry As String
            listEntry = listOfAvailableLanguages(i).langName
            
            'For official translations, an author name will always be provided.  Include the author's name in the list.
            If listOfAvailableLanguages(i).langType = "Official" Then
                listEntry = listEntry & " ("
                listEntry = listEntry & g_Language.TranslateMessage("official translation by")
                listEntry = listEntry & " " & listOfAvailableLanguages(i).Author
                listEntry = listEntry & ")"
            
            'For unofficial translations, an author name may not be provided.  Include the author's name only if it's available.
            Else
                listEntry = listEntry & " ("
                listEntry = listEntry & g_Language.TranslateMessage("unofficial translation by")
                listEntry = listEntry & " "
                If Len(listOfAvailableLanguages(i).Author) > 0 Then
                    listEntry = listEntry & listOfAvailableLanguages(i).Author
                Else
                    listEntry = listEntry & g_Language.TranslateMessage("unknown author")
                End If
                listEntry = listEntry & ")"
            End If
            
            'To save us time in the future, use the .ItemData property of this entry to store the language's original index position
            ' in our listOfAvailableLanguages array.
            lstLanguages.AddItem listEntry
            lstLanguages.ItemData(lstLanguages.NewIndex) = i
            
        Else
            MsgBox i
        End If
    Next i
    
    'By default, no language is selected for the user
    lstLanguages.ListIndex = -1
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ReleaseFormTheming Me
End Sub

Private Function loadAllPhrasesFromFile(ByVal srcLangFile As String) As Boolean

End Function