Rem JCyan.bat: start jconsole under emacs,
Rem outputting Lisp to change to cyan-colored text.
%BASEDSK%
cd "%BASEDSK%\Users\DevonMcC\J902\bin"
call \Utl\setPrmpt.bat

Rem Echo emacs commands to set font and colors so I can Ctl-x them once J starts:
Rem Larger font:
Rem jconsole %BASEDSK%\amisc\JSys\J8\DHMConfig.ijs -interactive -js "1!:44 (BASEDSK,'\amisc\work\JobSearch') [ smoutput qts'' [ smoutput JVERSION [ echo '(set-foreground-color $qcyan$q)(set-face-foreground font-lock-string-face $qgreen$q)' rplc '$q';34{a. [ echo '(set-face-background ''secondary-selection $qturquoise$q)(set-default-font $q-outline-Consolas-normal-r-normal-normal-18-96-96-120-c-*-iso8859-1$q)(setq default-directory $qC:\\amisc\\work\\JobSearch\\$q)' rplc '$q';34{a."
Rem Smaller font:
jconsole %BASEDSK%\amisc\JSys\J8\DHMConfig.ijs -prompt -js "1!:44 (BASEDSK,'\amisc\work\Poker') [ smoutput qts'' [ smoutput JVERSION [ echo '(set-foreground-color $qcyan$q)(set-face-foreground font-lock-string-face $qgreen$q)' rplc '$q';34{a. [ echo '(set-face-background ''secondary-selection $qturquoise$q)(set-default-font $q-outline-Consolas-normal-r-normal-normal-14-96-96-120-c-*-iso8859-1$q)(setq default-directory $qC:\\amisc\\work\\JobSearch\\$q)' rplc '$q';34{a."
Rem The '...' rplc '$q';34{a. inserts double-quotes for "$q" to get around problems w/embedded quotes
