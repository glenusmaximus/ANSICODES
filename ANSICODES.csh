# http://en.wikipedia.org/wiki/ANSI_escape_code#CSI_codes

set ESC=""
set CSI="${ESC}["    # Control Sequence Introducer

set RESET="${CSI}0m"
set BOLD="${CSI}1m"
set DIM="${CSI}2m"  # Not widely supported
set ITALICS="${CSI}3m"  # Not widely supported
set UNDERLINE="${CSI}4m"
set INVERSE="${CSI}7m"
set STRIKETHROUGH="${CSI}9m"  # Not widely supported
set DEFAULT="${CSI}10m"
set BOLDOFF="${CSI}22m" # Normal colour or intensity
set ITALICSOFF="${CSI}23m"
set UNDERLINEOFF="${CSI}24m"
set INVERSEOFF="${CSI}27m"
set STRIKETHROUGHOFF="${CSI}29m"

set FGBLACK="${CSI}30m"
set FGRED="${CSI}31m"
set FGGREEN="${CSI}32m"
set FGYELLOW="${CSI}33m"
set FGBLUE="${CSI}34m"
set FGMAGENTA="${CSI}35m"
set FGCYAN="${CSI}36m"
set FGWHITE="${CSI}37m"
set FGDEFAULT="${CSI}39m"

set BGBLACK="${CSI}40m"
set BGRED="${CSI}41m"
set BGGREEN="${CSI}42m"
set BGYELLOW="${CSI}43m"
set BGBLUE="${CSI}44m"
set BGMAGENTA="${CSI}45m"
set BGCYAN="${CSI}46m"
set BGWHITE="${CSI}47m"
set BGDEFAULT="${CSI}49m"

# See 256 Colors section of http://bitmote.com/index.php?post/2012/11/19/Using-ANSI-Color-Codes-to-Colorize-Your-Bash-Prompt-on-Linux
#FG256="${CSI}38;5;Xm"
#BG256="${CSI}48;5;#m" where # is 0-255
# Use ./ansi-color to help generate these
set FGGRAY3="${CSI}38;5;m"
set FGCHARCOAL="${CSI}38;5;238m"
set BGCHARCOAL="${CSI}48;5;238m"
set FGORANGE="${CSI}38;5;202m"
set BGORANGE="${CSI}48;5;202m"
set FGBROWN="${CSI}38;5;52m"
set BGBROWN="${CSI}48;5;52m"
set FGHOTPINK="${CSI}38;5;199m"
set BGHOTPINK="${CSI}48;5;199m"
set FGPINK="${CSI}38;5;207m"
set BGPINK="${CSI}48;5;207m"
set FGLIGHTPINK="${CSI}38;5;219m"
set BGLIGHTPINK="${CSI}48;5;219m"
set FGTEAL="${CSI}38;5;30m"
set BGTEAL="${CSI}48;5;30m"
set FGOLIVE="${CSI}38;5;100m"
set BGOLIVE="${CSI}48;5;100m"
set FGLIME="${CSI}38;5;154m"
set BGLIME="${CSI}48;5;154m"
set FGAQUAMARINE="${CSI}38;5;122m"
set BGAQUAMARINE="${CSI}48;5;122m"
set FGGOLDEN="${CSI}38;5;220m"
set BGGOLDEN="${CSI}48;5;220m"
set FGSALMON="${CSI}38;5;209m"
set BGSALMON="${CSI}48;5;209m"
set FGMAUVE="${CSI}38;5;183m"
set BGMAUVE="${CSI}48;5;183m"
set FGPALEYELLOW="${CSI}38;5;228m"
set BGPALEYELLOW="${CSI}48;5;228m"
set FGDARKBLUE="${CSI}38;5;17m"
set BGDARKBLUE="${CSI}48;5;17m"
set FGCREAM="${CSI}38;5;229m"
set BGCREAM="${CSI}48;5;229m"

set CUU="${CSI}1A" # Cursor up 1
set CUD="${CSI}1B" # Cursor down 1
set CUF="${CSI}1C" # Cursor forward 1
set CUB="${CSI}1D" # Cursor back 1

set BACKSLASH="\\" # Backslash character
# Privacy message http://www.gnu.org/software/screen/manual/html_node/Privacy-Message.html#Privacy-Message
set PRIVACYMSG="${ESC}"+'^'
# PRIVACYMSGOFF doesn't appear to work correctly. Need to print $ESC $BACKSLASH
set PRIVACYMSGOFF="${ESC}"+$BACKSLASH

set FGGOOGLE="${FGBLUE}G${FGRED}o${FGYELLOW}o${FGBLUE}g${FGGREEN}l${FGRED}e$RESET"

# Heavy Check Mark (U+2714)
set TICK="${FGGREEN}✔$RESET"
# Heavy (Ballot) X Mark (U+2718)
set XMARK="${FGRED}✘$RESET"
