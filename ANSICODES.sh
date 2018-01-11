# http://en.wikipedia.org/wiki/ANSI_escape_code#CSI_codes
#
# To use, include the following:
#
# . ANSICODES.sh

ESC=""
BEL=""
#ESC="\033"
CSI="${ESC}["    # Control Sequence Introducer
OSC="${ESC}]"    # Operating System Command
#IND="${ESC}D"    # Index
#NEL="${ESC}E"    # Next Line
#HTS="${ESC}H"    # Tab Set
#RI ="${ESC}M"    # Reverse Index
#SS2="${ESC}N"    # Single Shift Select of G2 Character Set
#SS3="${ESC}O"    # Single Shift Select of G3 Character Set
#DCS="${ESC}P"    # Device Control String
#SPA="${ESC}V"    # Start of Guarded Area
#EPA="${ESC}W"    # End of Guarded Area
#SOS="${ESC}X"    # Start of String
#PM ="${ESC}^"    # Privacy Message
#ST ="${ESC}\"    # String Terminator
#APC="${ESC}_"    # Application Program Command
#RIS="${ESC}c"    # Full Reset

RESET="${CSI}0m"
BOLD="${CSI}1m"
DIM="${CSI}2m"  # Not widely supported
ITALICS="${CSI}3m"  # Not widely supported
UNDERLINE="${CSI}4m"
INVERSE="${CSI}7m"
STRIKETHROUGH="${CSI}9m"  # Not widely supported
DEFAULT="${CSI}10m"
BOLDOFF="${CSI}22m" # Normal colour or intensity
ITALICSOFF="${CSI}23m"
UNDERLINEOFF="${CSI}24m"
INVERSEOFF="${CSI}27m"
STRIKETHROUGHOFF="${CSI}29m"

FGBLACK="${CSI}30m"
FGRED="${CSI}31m"
FGGREEN="${CSI}32m"
FGYELLOW="${CSI}33m"
FGBLUE="${CSI}34m"
FGMAGENTA="${CSI}35m"
FGCYAN="${CSI}36m"
FGWHITE="${CSI}37m"
FGDEFAULT="${CSI}39m"

BGBLACK="${CSI}40m"
BGRED="${CSI}41m"
BGGREEN="${CSI}42m"
BGYELLOW="${CSI}43m"
BGBLUE="${CSI}44m"
BGMAGENTA="${CSI}45m"
BGCYAN="${CSI}46m"
BGWHITE="${CSI}47m"
BGDEFAULT="${CSI}49m"

# See 256 Colors section of http://bitmote.com/index.php?post/2012/11/19/Using-ANSI-Color-Codes-to-Colorize-Your-Bash-Prompt-on-Linux
#FG256="${CSI}38;5;Xm"
#BG256="${CSI}48;5;#m" where # is 0-255
#
# Usage: ANSI256SetVar number NAME
# Puts fg and bg codes into the variables FGNAME and BGNAME respectively
ANSI256SetVar() {
 local __fgvar="FG$2"
 local __bgvar="BG$2"
 eval $__fgvar="${CSI}38\;5\;${1}m"
 eval $__bgvar="${CSI}48\;5\;${1}m"
}

# Use ./ansi-color to help generate these
FGGRAY3="${CSI}38;5;m"
ANSI256SetVar 238 CHARCOAL
ANSI256SetVar 202 ORANGE
ANSI256SetVar 199 HOTPINK
ANSI256SetVar 207 PINK
ANSI256SetVar 219 LIGHTPINK
ANSI256SetVar  52 BROWN
ANSI256SetVar  30 TEAL
ANSI256SetVar 100 OLIVE
ANSI256SetVar 154 LIME
ANSI256SetVar 122 AQUAMARINE
ANSI256SetVar 220 GOLDEN
ANSI256SetVar 209 SALMON
ANSI256SetVar 183 MAUVE
ANSI256SetVar 229 CREAM
ANSI256SetVar 228 PALEYELLOW
ANSI256SetVar  17 DARKBLUE
FGCREAM="${CSI}38;5;229m"
BGCREAM="${CSI}48;5;229m"

CUU="${CSI}1A" # Cursor up 1
CUD="${CSI}1B" # Cursor down 1
CUF="${CSI}1C" # Cursor forward 1
CUB="${CSI}1D" # Cursor back 1

BACKSLASH="\\" # Backslash character
# Privacy message http://www.gnu.org/software/screen/manual/html_node/Privacy-Message.html#Privacy-Message
PRIVACYMSG="${ESC}"+'^'
# PRIVACYMSGOFF doesn't appear to work correctly. Need to print $ESC $BACKSLASH
PRIVACYMSGOFF="${ESC}"+$BACKSLASH

# Operating System Controls
# The following commands can be used by adding a string and terminated with $BEL
# e.g. echo -n "$XTERMWINNAME$USER@$HOST$BEL" will set the window name.
XTERMICONWINNAME="${OSC}0;" # Change Icon Name and Window Title
XTERMICONNAME="${OSC}1;"    # Change Icon Name
XTERMWINNAME="${OSC}2;"     # Change Window Title

# Print "Google" using the Google colors
FGGOOGLE="${FGBLUE}G${FGRED}o${FGYELLOW}o${FGBLUE}g${FGGREEN}l${FGRED}e$RESET"

# Heavy Check Mark (U+2714)
TICK="${FGGREEN}✔${RESET}"
# Heavy (Ballot) X Mark (U+2718)
XMARK="${FGRED}✘${RESET}"
# http://stackoverflow.com/questions/602912/how-do-you-echo-a-4-digit-unicode-character-in-bash
UPLEFT=$(printf "\xe2\x86\xb0")
UPRIGHT=$(printf "\xe2\x86\xb1")
DOWNRIGHT=$(printf "\xe2\x86\xb3")
RIGHTDOWN=$(printf "\xe2\x86\xb4")

#EURO=$(printf "\xe2\x82\xac")
#BULLET=$(printf "\xe2\x80\xa2")
#LOWER1_8=$(printf "\xe2\x96\x81")
#LOWER2_8=$(printf "\xe2\x96\x82")
#LOWER3_8=$(printf "\xe2\x96\x83")
#LOWER4_8=$(printf "\xe2\x96\x84")
#LOWER5_8=$(printf "\xe2\x96\x85")
#LOWER6_8=$(printf "\xe2\x96\x86")
#LOWER7_8=$(printf "\xe2\x96\x87")
#LOWER8_8=$(printf "\xe2\x96\x88")
