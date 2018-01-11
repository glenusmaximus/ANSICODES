# http://en.wikipedia.org/wiki/ANSI_escape_code#CSI_codes
# require "ANSICODES.pl";

$BEL                = "\x07";
$ESC                = "\x1b";
#$CSI                = "\x1b[";    # Control Sequence Introducer
$CSI                = $ESC."[";    # Control Sequence Introducer
$OSC                = $ESC."]";    # Operating System Command
#$IND                = $ESC."D";    # Index
#$NEL                = $ESC."E";    # Next Line
#$HTS                = $ESC."H";    # Tab Set
#$RI                 = $ESC."M";    # Reverse Index
#$SS2                = $ESC."N";    # Single Shift Select of G2 Character Set
#$SS3                = $ESC."O";    # Single Shift Select of G3 Character Set
#$DCS                = $ESC."P";    # Device Control String
#$SPA                = $ESC."V";    # Start of Guarded Area
#$EPA                = $ESC."W";    # End of Guarded Area
#$SOS                = $ESC."X";    # Start of String
#$PM                 = $ESC."^";    # Privacy Message
#$ST                 = $ESC."\";    # String Terminator
#$APC                = $ESC."_";    # Application Program Command
#$RIS                = $ESC."c";    # Full Reset

$RESET              = $CSI."0m";
$BOLD               = $CSI."1m";
$DIM                = $CSI."2m";  # Not widely supported
$ITALICS            = $CSI."3m";  # Not widely supported
$UNDERLINE          = $CSI."4m";
$INVERSE            = $CSI."7m";
$STRIKETHROUGH      = $CSI."9m";  # Not widely supported
$DEFAULT            = $CSI."10m";
$BOLDOFF            = $CSI."22m"; # Normal colour or intensity
$ITALICSOFF         = $CSI."23m";
$UNDERLINEOFF       = $CSI."24m";
$INVERSEOFF         = $CSI."27m";
$STRIKETHROUGHOFF   = $CSI."29m";

$FGBLACK            = $CSI."30m";
$FGRED              = $CSI."31m";
$FGGREEN            = $CSI."32m";
$FGYELLOW           = $CSI."33m";
$FGBLUE             = $CSI."34m";
$FGMAGENTA          = $CSI."35m";
$FGCYAN             = $CSI."36m";
$FGWHITE            = $CSI."37m";
$FGDEFAULT          = $CSI."39m";

$BGBLACK            = $CSI."40m";
$BGRED              = $CSI."41m";
$BGGREEN            = $CSI."42m";
$BGYELLOW           = $CSI."43m";
$BGBLUE             = $CSI."44m";
$BGMAGENTA          = $CSI."45m";
$BGCYAN             = $CSI."46m";
$BGWHITE            = $CSI."47m";
$BGDEFAULT          = $CSI."49m";

# See 256 Colors section of http://bitmote.com/index.php?post/2012/11/19/Using-ANSI-Color-Codes-to-Colorize-Your-Bash-Prompt-on-Linux
#FG256="${CSI}38;5;Xm"
#BG256="${CSI}48;5;#m" where # is 0-255
# Use ./ansi-color to help generate these
$FGGRAY3            = $CSI."38;5;m";
$FGCHARCOAL         = $CSI."38;5;238m";
$BGCHARCOAL         = $CSI."48;5;238m";
$FGORANGE           = $CSI."38;5;202m";
$BGORANGE           = $CSI."48;5;202m";
$FGBROWN            = $CSI."38;5;52m";
$BGBROWN            = $CSI."48;5;52m";
$FGHOTPINK          = $CSI."38;5;199m";
$BGHOTPINK          = $CSI."48;5;199m";
$FGPINK             = $CSI."38;5;207m";
$BGPINK             = $CSI."48;5;207m";
$FGLIGHTPINK        = $CSI."38;5;219m";
$BGLIGHTPINK        = $CSI."48;5;219m";
$FGTEAL             = $CSI."38;5;30m";
$BGTEAL             = $CSI."48;5;30m";
$FGOLIVE            = $CSI."38;5;100m";
$BGOLIVE            = $CSI."48;5;100m";
$FGLIME             = $CSI."38;5;154m";
$BGLIME             = $CSI."48;5;154m";
$FGAQUAMARINE       = $CSI."38;5;122m";
$BGAQUAMARINE       = $CSI."48;5;122m";
$FGGOLDEN           = $CSI."38;5;220m";
$BGGOLDEN           = $CSI."48;5;220m";
$FGSALMON           = $CSI."38;5;209m";
$BGSALMON           = $CSI."48;5;209m";
$FGMAUVE            = $CSI."38;5;183m";
$BGMAUVE            = $CSI."48;5;183m";
$FGPALEYELLOW       = $CSI."38;5;228m";
$BGPALEYELLOW       = $CSI."48;5;228m";
$FGDARKBLUE         = $CSI."38;5;17m";
$BGDARKBLUE         = $CSI."48;5;17m";
$FGCREAM            = $CSI."38;5;229m";
$BGCREAM            = $CSI."48;5;229m";

$CUU                = $CSI."1A"; # Cursor up 1
$CUD                = $CSI."1B"; # Cursor down 1
$CUF                = $CSI."1C"; # Cursor forward 1
$CUB                = $CSI."1D"; # Cursor back 1

$PRIVACYMSG         = "^";     # Privacy message http://www.gnu.org/software/screen/manual/html_node/Privacy-Message.html#Privacy-Message
$PRIVACYMSGOFF      = "\\";

# Operating System Controls
# The following commands can be used by adding a string and terminated with $BEL
# e.g. printf "%suser@host%s", $XTERMWINNAME,$BEL; will set the window name.
$XTERMICONWINNAME   = $OSC."0;"; # Change Icon Name and Window Title
$XTERMICONNAME      = $OSC."1;"; # Change Icon Name
$XTERMWINNAME       = $OSC."2;"; # Change Window Title

# Heavy Check Mark (U+2714)
$TICK               = $FGGREEN."✔".$RESET;
# Heavy (Ballot) X Mark (U+2718)
$XMARK              = $FGRED."✘".$RESET;
