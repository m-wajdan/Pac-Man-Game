INCLUDE Irvine32.inc

INCLUDELIB winmm.lib
PlaySoundA PROTO :PTR BYTE, :DWORD, :DWORD

INCLUDELIB kernel32.lib


.data

;--------------------------------------------------------------------------------------------------------------------------------------------------
;                                   PACMAN INTERFACE DECLARATION WITH PLAYER INPUT VAR
;--------------------------------------------------------------------------------------------------------------------------------------------------

pacman BYTE "                                                                                                             ", 0ah
       BYTE "                                      ______  ___  _____ ___  ___  ___   _   _                               ", 0ah
       BYTE "                                      | ___ \/ _ \/  __ \|  \/  | / _ \ | \ | |                              ", 0ah
       BYTE "                                      | |_/ / /_\ \ /  \/| .  . |/ /_\ \|  \| |                              ", 0ah
       BYTE "                                      |  __/|  _  | |    | |\/| ||  _  || . ` |                              ", 0ah
       BYTE "                                      | |   | | | | \__/\| |  | || | | || |\  |                              ", 0ah
       BYTE "                                      \_|   \_| |_/\____/\_|  |_/\_| |_/\_| \_/                              ", 0ah
       BYTE "                                        .-.   .-.     .--.                                                   ", 0ah
       BYTE "                                       | OO| | OO|   / _.-' .-.    .-.    .-.                                ", 0ah
       BYTE "                                       |   | |   |   \  '-. '-'    '-'    '-'                                ", 0ah
       BYTE "                                       '^^^' '^^^'    '--'                                                   ", 0ah
       BYTE "                                                                                                             ", 0ah
       BYTE "                                                                                                             ", 0ah
       BYTE "                                                 ENTER YOUR NAME                                             ", 0ah

PlayerName BYTE 30 DUP(0)


;----------------------------------------------------------------------------------------------------------------------------------------------------
;                                    MENU DECLARATION AND MENU INPUT VAR AND INSTRUCTIONS 
;----------------------------------------------------------------------------------------------------------------------------------------------------

menu BYTE "               __      ___  ____   __    ____  ____                                                                            ",0ah                                 
     BYTE "              /  )()  / __)(_  _) /__\  (  _ \(_  _)                                                                           ",0ah
     BYTE "               )(     \__ \  )(  /(__)\  )   /  )(                                                                             ",0ah
     BYTE "              (__)()  (___/ (__)(__)(__)(_)\_) (__)                                                                            ",0ah
     BYTE "              ___     ____  _  _  ___  ____  ____  __  __  ___  ____  ____  _____  _  _                                        ",0ah
     BYTE "             (__ \ ()(_  _)( \( )/ __)(_  _)(  _ \(  )(  )/ __)(_  _)(_  _)(  _  )( \( )                                       ",0ah
     BYTE "              / _/    _)(_  )  ( \__ \  )(   )   / )(__)(( (__   )(   _)(_  )(_)(  )  (                                        ",0ah
     BYTE "             (____)()(____)(_)\_)(___/ (__) (_)\_)(______)\___) (__) (____)(_____)(_)\_)                                       ",0ah
     BYTE "              ___    ____  _  _  ____  ____                                                                                    ",0ah
     BYTE "             (__ )()( ___)( \/ )(_  _)(_  _)                                                                                   ",0ah
     BYTE "              (_ \   )__)  )  (  _)(_   )(                                                                                     ",0ah
     BYTE "             (___/()(____)(_/\_)(____) (__)                                                                                    ",0ah

menuInput Byte 0

 instructions BYTE "                                                                                                                            ",0ah                                                                                                                  
              BYTE " /\ /\/ _\ /__\  _    __ _   ___    __| | __      __   / _| ___  _ __   _ __ ___   _____   _____ _ __ ___   ___ _ __ | |_   ",0ah
              BYTE "/ / \ \ \ /_\   (_)  / _` | / __|  / _` | \ \ /\ / /  | |_ / _ \| '__| | '_ ` _ \ / _ \ \ / / _ | '_ ` _ \ / _ | '_ \| __|  ",0ah
              BYTE "\ \_/ _\ //__    _  | (_| | \__ \ | (_| |  \ V  V /   |  _| (_) | |    | | | | | | (_) \ V |  __| | | | | |  __| | | | |_   ",0ah
              BYTE " \___/\__\__/   (_)  \__,_| |___/  \__,_|   \_/\_/    |_|  \___/|_|    |_| |_| |_|\___/ \_/ \___|_| |_| |_|\___|_| |_|\__|  ",0ah          

InstructionInput BYTE 0
;-----------------------------------------------------------------------------------------------------------------------------------------------------
;                                                       MAZE FOR LEVEL 1
;-----------------------------------------------------------------------------------------------------------------------------------------------------
lvl1 db "                                                               ",0ah
     db"                          _                    _            __  ",0ah
     db"                         | |                  | |          /_ | ",0ah
     db"                         | |     _____   _____| |  ______   | | ",0ah
     db"                         | |    / _ \ \ / / _ \ | |______|  | | ",0ah
     db"                         | |___|  __/\ V /  __/ |           | | ",0ah
     db"                         |______\___| \_/ \___|_|           |_| ",0
                                       
                                       

Maze0033   DB  "##############################################################################################################", 0ah          
           DB  "#                                                                                                            #", 0ah          
           DB  "#----                o            o              o             o             o       o         o         ----#", 0ah          
           DB  "#----                                                                                                     ---#", 0ah
           DB  "#----       -----------------------      -----------       ----------         ------------------          ---#", 0ah
           DB  "#----       -----------------------      -----------       ----------         ------------------          ---#", 0ah
           DB  "#----       ----    o             o                   o                         o       o   ----      o   ---#", 0ah
           DB  "#----       ----                                                                            ----          ---#", 0ah
           DB  "#----  o    ----         --------        -----------    -------------      ------------     ----          ---#", 0ah
           DB  "#----       ----    o    --------        -----------    -------------   o  ------------     ----          ---#", 0ah
           DB  "#----                    -      -        -         -            -----             -----     ----      o   ---#", 0ah
           DB  "#----                    -      -   o    -         -  o         -----             -----                   ---#", 0ah
           DB  "#----  o                 -      -        -         -            -----             -----                   ---#", 0ah
           DB  "#----               o    -      -        -         -       -----        o     -----         ----          ---#", 0ah
           DB  "#----       ----         -      -        -         -       -----              -----         ----      o   ---#", 0ah
           DB  "#----       ----         -      -   o    -         -  o         -----             -----     ----          ---#", 0ah
           DB  "#----  o    ----         -      -        -         -            -----   o         -----     ----          ---#", 0ah
           DB  "#----       ----    o    --------        -----------     ------------      ------------     ----          ---#", 0ah
           DB  "#----       ----         --------        -----------     ------------      ------------     ----      o   ---#", 0ah
           DB  "#----       ----------                                                                      ----          ---#", 0ah
           DB  "#----       ---------------------                                          ---------------------          ---#", 0ah
           DB  "#----                                                                                                     ---#", 0ah
           DB  "#----          o                     o           o           o         o               o              o   ---#", 0ah
           DB  "#                                                                                                            #", 0ah
           DB  "##############################################################################################################", 0 


;-----------------------------------------------------------------------------------------------------------------------------------------
;                                                       GAME OVER MESSAGE 
;-----------------------------------------------------------------------------------------------------------------------------------------
 gameOverMsg byte "                                                              ",0ah
             byte " _____ ____  _      _____   ____  _     _____ ____    _  _  _ ",0ah
             byte "/  __//  _ \/ \__/|/  __/  /  _ \/ \ |\/  __//  __\  / \/ \/ \",0ah
             byte "| |  _| / \|| |\/|||  \    | / \|| | //|  \  |  \/|  | || || |",0ah
             byte "| |_//| |-||| |  |||  /_   | \_/|| \// |  /_ |    /  \_/\_/\_/",0ah
             byte "\____\\_/ \|\_/  \|\____\  \____/\__/  \____\\_/\_\  (_)(_)(_)",0

exitMsg BYTE "Exiting the game. Goodbye!", 0


;--------------------------------------------------------------------------------------------------------------------------------
;                                              PACMAN PLACEMENT AND MOVEMENT VARIABLES 
;--------------------------------------------------------------------------------------------------------------------------------
                ;MOVEMENT VAR
pacmanX BYTE 11
pacmanY BYTE 4
movementKey BYTE 'd'
pacmanChar BYTE '<'
oldX byte 0
oldY byte 0
currentMove BYTE 'd'

                ;WALLS CHECK AND PACMANS MOVEMNT
tempX      BYTE ?
tempY      BYTE ?
isValid    BYTE ?
                
                ; PLAYERS SCORE and DISPLAY MSG
totalScore DWORD 0
score      DWORD 0
scoreMsg BYTE "Score: ", 0

                ;PACANS LIVES LEFT AND DISPLAY MSG
LivesMsg BYTE "Lives Left: ",0
pacmanLives DWORD 3
isGameOver byte ?

;--------------------------------------------------------------------------------------------------------------------------------
;                                                 GHOST PLACEMENT VARIABLES FOR LEVEL 1
;--------------------------------------------------------------------------------------------------------------------------------
ghostChar BYTE 'X', 0
collisionCooldown DWORD 0

ghost1X db  20
ghost1Y db  6

ghost2X db  101
ghost2Y db  19


ghost3X db 50
ghost3Y db 23

ghost4X BYTE 56
ghost4Y BYTE 2

ghost5X BYTE 45
ghost5Y BYTE 10
;--------------------------------------------------------------------------------------------------------------------------------
; Level 1 Winning check Var
;--------------------------------------------------------------------------------------------------------------------------------

level1_Win db 0
level1_Food db 30
FoodCollected db 0



;--------------------------------------------------------------------------------------------------------------------------------
; GAME LEVEL 2 VARIABLES AND MAZE
;--------------------------------------------------------------------------------------------------------------------------------
level2Flag db 0
lvl2 db "             _                    _            ___    ",0ah  
     db "            | |                  | |          |__ \   ",0ah
     db "            | |     _____   _____| |  ______     ) |  ",0ah
     db "            | |    / _ \ \ / / _ \ | |______|   / /   ",0ah
     db "            | |___|  __/\ V /  __/ |           / /_   ",0ah
     db "            |______\___| \_/ \___|_|          |____|  ",0ah
                                         
                                         

MazeLVL2   DB  "##############################################################################################################", 0ah          
           DB  "#                                                                                                            #", 0ah          
           DB  "#----          o     o        o   o         o   o             o   o             o   o         o   o       ---#", 0ah          
           DB  "#----                                                                                                     ---#", 0ah
           DB  "#----       ------------------------------------------------------------------------------------    ---------#", 0ah
           DB  "#----       ------------------------------------------------------------------------------------          ---#", 0ah
           DB  "#----   o   ----    o             o   o                                         o       o   ----      o   ---#", 0ah
           DB  "#----       ----                                                                            ----          ---#", 0ah
           DB  "#----   P   ----        ------------   --------------   ---------------   --------------    ----          ---#", 0ah
           DB  "#----       ----    o     -------        ----------      ------------   o  -----------      ----          ---#", 0ah
           DB  "#----   o                -      -        -         -  P         -----             -----     ----      o   ---#", 0ah
           DB  "#----                    -      -   o    -         -            -----             -----                   ---#", 0ah
           DB  "#-------------           -      -        -         -  o         -----             -----             ---------#", 0ah
           DB  "#----               o    -      -  ---   -         - ---   -----        o     -----      o  ----          ---#", 0ah
           DB  "#----   o   ----         -      -        -         -       -----              -----         ----      o   ---#", 0ah
           DB  "#----       ----         -      -   o    -         -  o         -----             -----     ----          ---#", 0ah
           DB  "#----       ----         -      -        -         -            -----   o         -----     ----          ---#", 0ah
           DB  "#----       ----    o    --------        -----------     ------------      -----------      ----          ---#", 0ah
           DB  "#----   o   ----        ------------   --------------  ----------------  --------------     ----      o   ---#", 0ah
           DB  "#----       --------                                                                     o  ----          ---#", 0ah
           DB  "#----       ------------------------------------------------------------------------------------    ---------#", 0ah
           DB  "#----       ------------------------------------------------------------------------------------          ---#", 0ah
           DB  "#----   o        o  o                o   o              o    o                   o     o       P      o   ---#", 0ah
           DB  "#----                                                                                                     ---#", 0ah
           DB  "##############################################################################################################", 0 


;--------------------------------------------------------------------------------------------------------------------------------
; MAZE AND VAR FOR LEVEL3
;--------------------------------------------------------------------------------------------------------------------------------

;60=o
;5=P

level3Flag db 0
lvl3 db "                                           ",0ah   
     db"  _                    _            ____    ",0ah
     db" | |                  | |          |___ \   ",0ah
     db" | |     _____   _____| |  ______    __) |  ",0ah
     db" | |    / _ \ \ / / _ \ | |______|  |__ <   ",0ah
     db" | |___|  __/\ V /  __/ |           ___) |  ",0ah
     db" |______\___| \_/ \___|_|          |____/   ",0
                                          
                                         
MazeLVL3   DB  "##############################################################################################################", 0ah
           DB  "###### o  ####### o ########## o ########## o ########### o ########### o ############ o ###########  o ######", 0ah
           DB  "#----                o            o              o    P        o             o                 o         ----#", 0ah
           DB  "#----                                                 #                                                   ---#", 0ah
           DB  "#----  o     -----------------------      ---------   #      ----------         ------------------        ---#", 0ah
           DB  "#----       -----------------------      -----------  #     ----------         ------------------         ---#", 0ah
           DB  "#----       ----    o             o            o      o         o               o       o   ----      o   ---#", 0ah
           DB  "#----       ----                                      #                                      ----         ---#", 0ah
           DB  "#----  o    ----         --------        -----------  #  -------------      ------------     ----         ---#", 0ah
           DB  "#----       ----    o    --------        -----------  #  -------------   o  ------------     ----         ---#", 0ah
           DB  "#----                    -   o  -        -     P   -  #          -----             -----     ----     o   ---#", 0ah
           DB  "#----                    -          o    -            o         -----             -----                   ---#", 0ah
           DB  "###### oP ####### o ########## o ########## o ########### o ########### o ############ o ###########  o ######", 0ah
           DB  "#----                    -               -         -  #     -----        o     -----         ----         ---#", 0ah
           DB  "#----       ----         -      -        -         -  #     -----              -----         ----     o   ---#", 0ah
           DB  "#----       ----         -  P   -   o    -            o         -----             -----     ----          ---#", 0ah
           DB  "#----  o    ----         -      -        -         -  #          -----   o         -----     ----         ---#", 0ah
           DB  "#----       ----    o    --------        -----------  #   ------------      ------------     ----         ---#", 0ah
           DB  "#----       ----         --------        -----------  #   ------------      ------------     ----     o   ---#", 0ah
           DB  "#----       ----------                                o                                     ----          ---#", 0ah
           DB  "#----  o     --------- o ---------                    #                      ---------------------        ---#", 0ah
           DB  "#----                                                 #                                                   ---#", 0ah
           DB  "#----          o                     o           o    #       o         o               o                 ---#", 0ah
           DB  "###### o  ####### o ########## o ########## o ########### o ########### o ############ o ###########  P  #####", 0ah
           DB  "##############################################################################################################", 0 


;--------------------------------------------------------------------------------------------------------------------------------
; YOU WON DISPLAY AND USERS SCORE AND NAME WITH IT
;--------------------------------------------------------------------------------------------------------------------------------
winMessage db"                                                                                      ",0ah
           db"      $$\     $$\  $$$$$$\  $$\   $$\             $$\      $$\  $$$$$$\  $$\   $$\    ",0ah
           db"      \$$\   $$  |$$  __$$\ $$ |  $$ |            $$ | $\  $$ |$$  __$$\ $$$\  $$ |   ",0ah
           db"       \$$\ $$  / $$ /  $$ |$$ |  $$ |            $$ |$$$\ $$ |$$ /  $$ |$$$$\ $$ |   ",0ah
           db"        \$$$$  /  $$ |  $$ |$$ |  $$ |            $$ $$ $$\$$ |$$ |  $$ |$$ $$\$$ |   ",0ah
           db"         \$$  /   $$ |  $$ |$$ |  $$ |            $$$$  _$$$$ |$$ |  $$ |$$ \$$$$ |   ",0ah
           db"          $$ |    $$ |  $$ |$$ |  $$ |            $$$  / \$$$ |$$ |  $$ |$$ |\$$$ |   ",0ah
           db"          $$ |     $$$$$$  |\$$$$$$  |            $$  /   \$$ | $$$$$$  |$$ | \$$ |   ",0ah
           db"          \__|     \______/  \______/             \__/     \__| \______/ \__|  \__|   ",0
                                                                            
                                                                             
                                                                             

;--------------------------------------------------------------------------------------------------------------------------------
; BACK GROUND MUSIC
;--------------------------------------------------------------------------------------------------------------------------------
bgMusic      BYTE "bgMusic.wav", 0
SND_FILENAME EQU 00020000h
SND_ASYNC EQU 00000001h

;--------------------------------------------------------------------------------------------------------------------------------
; FILE HANDLNIG VARS
;--------------------------------------------------------------------------------------------------------------------------------
fileName BYTE "ScoreHistory.txt", 0
newline BYTE 0Dh, 0Ah
fileHandle HANDLE ?
bytesWritten DWORD ?


;################################################################################################################################
;#####################################[.code section where procedures and all the functionality is being done]###################
;################################################################################################################################




;--------------------------------------------------------------------------------------------------------------------------------
; main procedure of code
;--------------------------------------------------------------------------------------------------------------------------------
.code
main PROC



    call game


    exit
main ENDP


;--------------------------------------------------------------------------------------------------------------------------------
; GAME PROCEDURE THAT CONTROLS THE FLOW OF THE GAME 
;--------------------------------------------------------------------------------------------------------------------------------
game PROC
    INVOKE PlaySoundA, OFFSET bgMusic, 0,SND_FILENAME OR SND_ASYNC

    call PacmanInterface
    call Clrscr
    
MainMenu:
    call clrscr
    call menuP       ; Should return choice in EAX
    
                     ; Check user input
    cmp eax, 1
    je StartGameLevel1
    cmp eax, 2
    je showInstruction
    cmp eax, 3
    je exitGame
    
                     ; Invalid input - show menu again
    jmp MainMenu

                        ; ------------------------- LABELS FOR MENU INPUT -------------------------
exitGame:
    call Clrscr

    mov edx, OFFSET exitMsg
    call WriteString
    mov eax, 100
    call Delay

    mov edx, OFFSET gameOverMsg
    call WriteString
    call Crlf
    call Crlf

    ; Print Player Name
    mov edx, OFFSET playerName
    call WriteString
    call Crlf

    ; Print Total Score
    mov edx, OFFSET scoreMsg   ; e.g., "Your final score is: "
    call WriteString
    mov eax, totalScore
    call WriteInt
    call Crlf

    call SavePlayerName



    ;mov eax, 500
    ;call Delay

    call Crlf
    exit


showInstruction:
    call Clrscr
    mov eax, CYAN + (BLACK * 16)
    call SetTextColor
    mov edx, offset instructions
    call WriteString
                    ; Wait for key press
    call WaitMsg      
    
                    ; Return to menu instead of jumping straight to game
    call Clrscr
    jmp MainMenu
;(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((   GAME LEVEL 1    )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
StartGameLevel1:
                    ; SHOWING USER THAT LEVEL 1 IS STARTING
    call clrscr
    mov edx, OFFSET lvl1
    call WriteString
    mov eax, 1000
    call Delay
    call clrscr

    call showBoard1
    call DrawPacman


    GameLoop:
        call PacmanMovement
        call CheckGhostCollision
                                         
                    ; Jump to level 2 if level 1 is finished

        cmp FoodCollected,3  ;===============================================  WINNGIN COND FOR LVL1   ==============================================================
        jae GameLevel2
                    ; Jump to game over if lives = 0
        cmp isGameOver, 1
        je exitGame

        call DrawPacman
        call DrawGhosts
        call DrawScore
        call DrawLives
        cmp collisionCooldown, 0
        jle skipCooldownDec
        dec collisionCooldown
        skipCooldownDec:
        mov eax, 100
        call Delay
        jmp GameLoop

;(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((   GAME LEVEL 2    )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
GameLevel2: 
                    ; SHOWING USER FOR THE START OF LEVEL2
    call clrscr
    mov edx, OFFSET lvl2
    call WriteString
    mov eax, 1000
    call Delay
    call clrscr


    mov FoodCollected,0
    mov level2Flag,1

    mov eax, score
    add totalScore, eax
    mov score, 0


    mov pacmanLives,3
    call showBoard2
    call DrawPacman

        GameLoop2:
        call PacmanMovement
        call CheckGhostCollision
                                         
                    ; Jump to level 3 if level 2 is finished

        cmp FoodCollected,6     ;===============================================   WINNING COND FOR LVL2   =========================================================
        jae GameLevel3
                    ; Jump to game over if lives = 0
        cmp isGameOver, 1
        je exitGame

        call DrawPacman
        call DrawGhosts
        call DrawScore
        call DrawLives
        cmp collisionCooldown, 0
        jle skipCooldownDec2
        dec collisionCooldown
        skipCooldownDec2:
        mov eax, 100
        call Delay
        jmp GameLoop2
;(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((   GAME LEVEL 3    )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
GameLevel3:
                        ; SHOWING USER FOR THE START OF LEVEL3
    call clrscr
    mov edx, OFFSET lvl3
    call WriteString
    mov eax, 1000
    call Delay
    call clrscr

    mov level2Flag,0
    mov FoodCollected,0

    mov level3Flag,1

    mov eax, score
    add totalScore, eax
    mov score, 0


    mov pacmanLives,3
    call showBoard3
    call DrawPacman

        GameLoop3:
            call PacmanMovement
            call CheckGhostCollision
                                         
                        ; Jump to level 3 if level 2 is finished

            cmp FoodCollected, 9    ;===============================================   WINNING COND FOR LVL3   =========================================================
            jae gameWon

                        ; Jump to main menu
            cmp isGameOver, 1
            je exitGame

            call DrawPacman
            call DrawGhosts
            call DrawScore
            call DrawLives
            cmp collisionCooldown, 0
            jle skipCooldownDec3
            dec collisionCooldown
            skipCooldownDec3:
            mov eax, 60
            call Delay
        jmp GameLoop3
gameWon:

        
        
        call Clrscr
        mov edx, OFFSET winMessage
        call WriteString
        call Crlf
        call Crlf
        
                                    ; Show player name
        mov edx, OFFSET playerName
        call WriteString
        call Crlf

                                    ; Show final score
        mov edx, OFFSET scoreMsg
        call WriteString

        mov eax,score
        add totalScore, eax          ; final level's score
        mov eax, totalScore
        call WriteInt

        call SavePlayerName

        call Crlf

                                    ; Delay before going back to main menu
        mov eax, 2000
        call Delay
        call WaitMsg
        mov level2Flag,0
        mov level3Flag,0
        mov score,0
        jmp MainMenu

ret
game ENDP

;--------------------------------------------------------------------------------------------------------------------------------
; PACMAN INTERFACE PRINTING
;--------------------------------------------------------------------------------------------------------------------------------
PacmanInterface PROC
    
    mov eax, LightRed + (Black * 16)
    call SetTextColor
    mov edx,offset pacman
    call writestring 

    mov edx, OFFSET PlayerName
    mov ecx, 30
    call ReadString

    ;mov edx, OFFSET PlayerName
    ;call WriteString
    ;call Crlf


    ret
PacmanInterface ENDP

;--------------------------------------------------------------------------------------------------------------------------------
;MENU PRINTING PROCEDURE
;--------------------------------------------------------------------------------------------------------------------------------
menuP PROC

    mov eax, GREEN + (Black * 16)
    call SetTextColor
    mov edx,offset menu
    call writestring 

    mov edx, OFFSET menuInput
    mov ecx, 1
    call ReadInt

    ret
menuP ENDP

;--------------------------------------------------------------------------------------------------------------------------------
; SHOW MAZE FOR EACH LEVEL AND DRAWING PACMA ON IT + GHOST DRAWING ON MAZE
;--------------------------------------------------------------------------------------------------------------------------------
showBoard1 PROC
    call Clrscr
    mov eax, BLUE + (BLACK * 16)
    call SetTextColor
    mov edx,offset maze0033
    call writestring
   
   ret
showBoard1 ENDP

showBoard2 PROC
    call Clrscr
    mov eax, BROWN + (BLACK * 16)
    call SetTextColor
    mov edx,offset mazeLVL2
    call writestring
   
   ret
showBoard2 ENDP

showBoard3 PROC
    call Clrscr
    mov eax, WHITE + (BLACK * 16)
    call SetTextColor
    mov edx,offset mazeLVL3
    call writestring
   
   ret
showBoard3 ENDP


DrawPacman PROC
    ; Erase Pacman from old position
    mov dl, oldX
    mov dh, oldY
    call Gotoxy
    mov al, ' '        
    call WriteChar

    ; Draw Pacman at new position
    mov dl, pacmanX
    mov dh, pacmanY
    call Gotoxy
    mov al, pacmanChar            
    call WriteChar
    ret
DrawPacman ENDP

DrawGhosts PROC
    ; Set ghost color
    mov eax, RED + (BLACK * 16)
    call SetTextColor

    ; ---- Draw Ghost 1 ----
    mov dl, ghost1X
    mov dh, ghost1Y
    call Gotoxy
    mov al, ghostChar
    call WriteChar

    ; ---- Draw Ghost 2 ----
    mov dl, ghost2X
    mov dh, ghost2Y
    call Gotoxy
    mov al, ghostChar
    call WriteChar

    ; ---- Check for level-based extra ghosts ----
    cmp level2Flag, 1
    je drawForLevel2

    cmp level3Flag, 1
    je drawForLevel3

    jmp endGhostDraw

drawForLevel2:
    ; Draw Ghost 3 only
    mov dl, ghost3X
    mov dh, ghost3Y
    call Gotoxy
    mov al, ghostChar
    call WriteChar
    jmp endGhostDraw

drawForLevel3:
    ; Draw Ghost 3
    mov dl, ghost3X
    mov dh, ghost3Y
    call Gotoxy
    mov al, ghostChar
    call WriteChar

    ; Draw Ghost 4
    mov dl, ghost4X
    mov dh, ghost4Y
    call Gotoxy
    mov al, ghostChar
    call WriteChar

    ; Draw Ghost 5
    mov dl, ghost5X
    mov dh, ghost5Y
    call Gotoxy
    mov al, ghostChar
    call WriteChar

endGhostDraw:
    ret
DrawGhosts ENDP





;--------------------------------------------------------------------------------------------------------------------------------
; GHOST COLLISION PROCEDURE
;--------------------------------------------------------------------------------------------------------------------------------

CheckGhostCollision PROC
    ; Skip collision check if cooldown is active
    cmp collisionCooldown, 0
    jne skipCollisionCheck

    cmp pacmanLives, 0
    je setGameOver

    ; ----------------- Ghost 1 Collision -----------------
    movzx eax, pacmanX
    movzx ebx, ghost1X
    cmp eax, ebx
    jne checkGhost2
    movzx eax, pacmanY
    movzx ebx, ghost1Y
    cmp eax, ebx
    jne checkGhost2
    dec pacmanLives
    mov collisionCooldown, 10
    jmp skipCollisionCheck

checkGhost2:
    ; ----------------- Ghost 2 Collision -----------------
    movzx eax, pacmanX
    movzx ebx, ghost2X
    cmp eax, ebx
    jne checkGhost3
    movzx eax, pacmanY
    movzx ebx, ghost2Y
    cmp eax, ebx
    jne checkGhost3
    dec pacmanLives
    mov collisionCooldown, 10
    jmp skipCollisionCheck

checkGhost3:
    cmp level2Flag, 1
    jl checkGhost4
    ; ----------------- Ghost 3 Collision -----------------
    movzx eax, pacmanX
    movzx ebx, ghost3X
    cmp eax, ebx
    jne checkGhost4
    movzx eax, pacmanY
    movzx ebx, ghost3Y
    cmp eax, ebx
    jne checkGhost4
    dec pacmanLives
    mov collisionCooldown, 10
    jmp skipCollisionCheck

checkGhost4:
    cmp level3Flag, 1
    jl checkGhost5
    ; ----------------- Ghost 4 Collision -----------------
    movzx eax, pacmanX
    movzx ebx, ghost4X
    cmp eax, ebx
    jne checkGhost5
    movzx eax, pacmanY
    movzx ebx, ghost4Y
    cmp eax, ebx
    jne checkGhost5
    dec pacmanLives
    mov collisionCooldown, 10
    jmp skipCollisionCheck

checkGhost5:
    ; ----------------- Ghost 5 Collision -----------------
    movzx eax, pacmanX
    movzx ebx, ghost5X
    cmp eax, ebx
    jne skipCollisionCheck
    movzx eax, pacmanY
    movzx ebx, ghost5Y
    cmp eax, ebx
    jne skipCollisionCheck
    dec pacmanLives
    mov collisionCooldown, 10
    jmp skipCollisionCheck

setGameOver:
    mov isGameOver, 1

skipCollisionCheck:
    ret
CheckGhostCollision ENDP



;--------------------------------------------------------------------------------------------------------------------------------
;DRAW LIVES AND SCORE BELOW THE MAZE
;--------------------------------------------------------------------------------------------------------------------------------
DrawLives PROC
   

    mov dl, 30     ; column
    mov dh, 31     ; row
    call Gotoxy

    mov edx, OFFSET LivesMsg
    call WriteString

    mov eax, pacmanLives
    call WriteInt


    ret
DrawLives ENDP


DrawScore PROC
    mov dl, 30       ; column
    mov dh, 30       ; row
    call Gotoxy



    mov edx, OFFSET scoreMsg
    call WriteString

    mov eax, score
    call WriteInt

    ret
DrawScore ENDP


;--------------------------------------------------------------------------------------------------------------------------------
;PacmanMovement PROC
;
;   Old X,Y save
;   Read Key input + Delay
;   use jz to chk of key is read or not ( if not then continue with old move )
;   if key entred: 4 labels for up(w) down(s) left(a) right(d) and inc/dec the X/Y respectively
;   store your currect move and also store the current X,Y as Old X,Y
;   Check for the walls through calling is_valid_movement_for_pacman function
;
;--------------------------------------------------------------------------------------------------------------------------------
PacmanMovement PROC
    ; Save old position
    mov al, pacmanX
    mov oldX, al
    mov al, pacmanY
    mov oldY, al

    ; Check for keyboard input

    call ReadKey
    jz NoKeyPressed   ; If no key pressed, continue with current move
    
    cmp al, 'w'       ; Up
    je CheckUp
    cmp al, 's'       ; Down
    je CheckDown
    cmp al, 'a'       ; Left
    je CheckLeft
    cmp al, 'd'       ; Right
    je CheckRight
    jmp NoKeyPressed  ; If invalid key, continue with current move

CheckUp:
    mov al, pacmanX
    mov tempX, al
    mov al, pacmanY
    dec al
    mov tempY, al
    call Is_Valid_Pos_For_Pacman
    cmp isValid, 1
    jne WallCollision
    jmp MoveUp

CheckDown:
    mov al, pacmanX
    mov tempX, al
    mov al, pacmanY
    inc al
    mov tempY, al
    call Is_Valid_Pos_For_Pacman
    cmp isValid, 1
    jne WallCollision
    jmp MoveDown

CheckLeft:
    mov al, pacmanX
    dec al
    mov tempX, al
    mov al, pacmanY
    mov tempY, al
    call Is_Valid_Pos_For_Pacman
    cmp isValid, 1
    jne WallCollision
    jmp MoveLeft

CheckRight:
    mov al, pacmanX
    inc al
    mov tempX, al
    mov al, pacmanY
    mov tempY, al
    call Is_Valid_Pos_For_Pacman
    cmp isValid, 1
    jne WallCollision
    jmp MoveRight

WallCollision:
    ; Don't move, just update facing direction
    mov al, movementKey
    mov currentMove, al
    ret

MoveUp:
    mov movementKey, 'w'
    mov pacmanChar, '^'
    dec pacmanY
    jmp MovementDone

MoveDown:
    mov movementKey, 's'
    mov pacmanChar, 'v'
    inc pacmanY
    jmp MovementDone

MoveLeft:
    mov movementKey, 'a'
    mov pacmanChar, '>'
    dec pacmanX
    jmp MovementDone

MoveRight:
    mov movementKey, 'd'
    mov pacmanChar, '<'
    inc pacmanX
    jmp MovementDone

NoKeyPressed:
    ; Continue with current move, but check if valid first
    mov al, currentMove
    cmp al, 'w'
    je CheckUp
    cmp al, 's'
    je CheckDown
    cmp al, 'a'
    je CheckLeft
    cmp al, 'd'
    je CheckRight

MovementDone:
    ; Update current move
    mov al, movementKey
    mov currentMove, al
    ret
PacmanMovement ENDP


;--------------------------------------------------------------------------------------------------------------------------------
;CHECKING FOR THE VALID POSITION OF THE PACMAN
;--------------------------------------------------------------------------------------------------------------------------------
Is_Valid_Pos_For_Pacman PROC
    push eax
    push ebx
    push ecx
    push edx
    push esi
    
    ; Calculate position in maze: esi = offset of maze + (Y * 111) + X
    movzx eax, tempY      ; Y position
    mov ebx, 111          ; Bytes per line
    mul ebx               ; eax = Y * 111
    movzx ebx, tempX      ; X position
    add eax, ebx          ; eax = (Y * 111) + X

    ; Select maze based on flags
    cmp level2Flag, 1
    je useLevel2Maze

    cmp level3Flag, 1
    jne useLevel1Maze     ; If level3Flag != 1, go to level 1

    cmp level2Flag, 0
    je useLevel3Maze      ; If level2Flag is 0, use level 3

useLevel1Maze:
    mov esi, OFFSET maze0033
    jmp mazeSelected

useLevel2Maze:
    mov esi, OFFSET MazeLVL2
    jmp mazeSelected

useLevel3Maze:
    mov esi, OFFSET MazeLVL3

mazeSelected:
    add esi, eax          ; Point to maze character
    
    mov al, [esi]
    cmp al, ' '           ; Check for empty space
    je ValidMove
    cmp al, 'o'           ; Check for cherry
    je CollectCherry
    cmp al, 'P'           ; Check for power pellet (only in level 2)
    je CollectPowerPellet
    jmp InvalidMove

CollectCherry:
    mov byte ptr [esi], ' '
    inc score
    inc FoodCollected
    jmp ValidMove

CollectPowerPellet:
    mov byte ptr [esi], ' '
    inc score
    add score, 10              ; Bonus points for power pellet
    add FoodCollected, 10
    jmp ValidMove

ValidMove:
    mov isValid, 1
    jmp DoneChecking

InvalidMove:
    mov isValid, 0

DoneChecking:
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
Is_Valid_Pos_For_Pacman ENDP



;--------------------------------------------------------------------------------------------------------------------------------
;FILE HANDLING
;--------------------------------------------------------------------------------------------------------------------------------
SavePlayerName PROC
    LOCAL nameLength:DWORD
    LOCAL levelStr[16]:BYTE    ; Buffer for " Level:X" string
    
    ; Get actual string length (excluding null terminator)
    mov edx, OFFSET PlayerName
    call StrLength            ; Returns length in EAX
    mov nameLength, eax
    
    ; Open file for appending
    INVOKE CreateFile,
        ADDR fileName,
        FILE_APPEND_DATA or FILE_WRITE_DATA,
        FILE_SHARE_READ,
        NULL,
        OPEN_ALWAYS,
        FILE_ATTRIBUTE_NORMAL,
        0
    mov fileHandle, eax
    cmp eax, INVALID_HANDLE_VALUE
    je doneSaving

    ; Move file pointer to end
    INVOKE SetFilePointer,
        fileHandle,
        0,
        0,
        FILE_END

    ; Write the actual name characters
    INVOKE WriteFile,
        fileHandle,
        ADDR PlayerName,
        nameLength,
        ADDR bytesWritten,
        NULL
    
    
    mov levelStr[0], ' '      ; Space before "Level:"
    mov levelStr[1], 'L'
    mov levelStr[2], 'e'
    mov levelStr[3], 'v'
    mov levelStr[4], 'e'
    mov levelStr[5], 'l'
    mov levelStr[6], ':'
    
    cmp level3Flag, 1
    je Level3
    cmp level2Flag, 1
    je Level2
    
    ; Default to Level 1
    mov levelStr[7], '1'
    mov levelStr[8], 0        ; Null terminator
    jmp WriteLevel
    
Level2:
    mov levelStr[7], '2'
    mov levelStr[8], 0
    jmp WriteLevel
    
Level3:
    mov levelStr[7], '3'
    mov levelStr[8], 0

WriteLevel:
    INVOKE WriteFile,
        fileHandle,
        ADDR levelStr,
        8,                    ; " Level:X" is 8 bytes
        ADDR bytesWritten,
        NULL
    
    INVOKE WriteFile,
        fileHandle,
        ADDR newline,
        2,
        ADDR bytesWritten,
        NULL

    call CloseFile

doneSaving:
    ret
SavePlayerName ENDP



;--------------------------------------------------------------------------------------------------------------------------------
;
;--------------------------------------------------------------------------------------------------------------------------------


;--------------------------------------------------------------------------------------------------------------------------------
;ENDING THE MAIN ----------------------------------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------------------------------------------------
END main