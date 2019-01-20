%%
%% This is file `UnicaPhdThesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% UnicaPhdThesis.dtx  (with options: `class')
%% 
%% Copyright (C) 1995, 1996, 1997, 1998, 1999 Marco Comini <comini@di.unipi.it>.
%% 
%% This class is the Phd Thesis format of the Computer Science Deartment of
%% the Unica University -- Italy.
%% 
%% This class is distributed in the hope that it will be useful, but WITHOUT
%% ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
%% FITNESS FOR A PARTICULAR PURPOSE.
%% 
%% Direct use of code from this class in another class which is either sold
%% for profit, or not made freely available, is explicitly forbidden by the
%% author.
%% 
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{PhdThesis}[1999/04/23 1.7n Unica PhdThesis document class]
\newif\if@phd@MTh
\newif\if@phd@chp
\newif\if@phd@draft
\newif\if@phd@italian
\newif\if@phd@show
%%% Options
\DeclareOption{a5paper}
{\ClassWarningNoLine{UnicaPhdThesis}{Option `a5paper' not supported}}
\DeclareOption{b5paper}
{\ClassWarningNoLine{UnicaPhdThesis}{Option `b5paper' not supported}}
\DeclareOption{letterpaper}
{\ClassWarningNoLine{UnicaPhdThesis}{Option `letterpaper' not supported}}
\DeclareOption{legalpaper}
{\ClassWarningNoLine{UnicaPhdThesis}{Option `legalpaper' not supported}}
\DeclareOption{executivepaper}
{\ClassWarningNoLine{UnicaPhdThesis}{Option `executivepaper' not supported}}
\DeclareOption{landscape}
{\ClassWarningNoLine{UnicaPhdThesis}{Option `landscape' not supported}}
\DeclareOption{titlepage}
{\ClassWarningNoLine{UnicaPhdThesis}{Option `titlepage' not supported}}
\DeclareOption{twocolumn}
{\ClassWarningNoLine{UnicaPhdThesis}{Option `twocolumn' not supported}}
\DeclareOption{draft}
{\@phd@drafttrue\@phd@showtrue\PassOptionsToClass{draft}{book}}
\DeclareOption{final}{\@phd@draftfalse\@phd@showfalse}
\DeclareOption{a4paper}{\PassOptionsToClass{a4paper}{book}}
\DeclareOption{onecolumn}{\PassOptionsToClass{onecolumn}{book}}
\DeclareOption{PhdThesis}{\@phd@MThfalse\PassOptionsToClass{twoside}{book}}
\DeclareOption{MasterThesis}{\@phd@MThtrue\PassOptionsToClass{oneside}{book}}
\DeclareOption{american}{\@phd@italianfalse}
\DeclareOption{english}{\@phd@italianfalse}
\DeclareOption{italian}{\@phd@italiantrue}
\DeclareOption{chapterempty}{\@phd@chptrue}
\DeclareOption{chapterplain}{\@phd@chpfalse}
\DeclareOption{noshow}{\@phd@showfalse}
\DeclareOption{show}{\@phd@showtrue}
\ExecuteOptions{final,a4paper,onecolumn,american,chapterempty,PhdThesis}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}
%%% New Headings
\newcommand{\@phd@newpagestyle}[2]{%
\@namedef{ps@#1}{\let\@oddfoot\@empty\let\@evenfoot\@empty
\let\@mkboth\@phd@mkboth#2}}
\if@phd@chp
\let\ps@latexplain\ps@plain
\let\ps@plain\ps@empty
\fi
\AtBeginDocument{\pagestyle{smallheadings}}
\@phd@newpagestyle{smallheadings}{%
\def\@evenhead{\thepage\hfil\footnotesize\leftmark}
\def\@oddhead{{\footnotesize\rightmark}\hfil\thepage}
\def\chaptermark##1{%
\markthischapter{\MakeUppercase{%
\ifnum \c@secnumdepth >\m@ne
\if@mainmatter
\@chapapp\ \thechapter. \ %
\fi
\fi
##1}}}%
\def\sectionmark##1{%
\markthissection{\MakeUppercase{%
\ifnum \c@secnumdepth >\z@
\thesection. \ %
\fi
##1}}}}
\@phd@newpagestyle{underheadings}{%
\def\@evenhead{\underline{\makebox[\textwidth]
{{\small\bfseries\thepage\hfill\leftmark}
\rule[-0.5ex]{0pt}{1ex}}}}%
\def\@oddhead{\underline{\makebox[\textwidth]
{{\small\bfseries\rightmark\hfill\thepage}
\rule[-0.5ex]{0pt}{1ex}}}}%
\def\chaptermark##1{%
\markthischapter{\MakeUppercase{%
\ifnum \c@secnumdepth >\m@ne
\if@mainmatter
\@chapapp\ \thechapter. \ %
\fi
\fi
##1}}}%
\def\sectionmark##1{%
\markthissection{\MakeUppercase{%
\ifnum \c@secnumdepth >\z@
\thesection. \ %
\fi
##1}}}}
\@phd@newpagestyle{miniheadings}{%
\def\@evenhead{\underline{\makebox[\textwidth]
{{\small\bfseries\thepage\hfill\leftmark}
\rule[-0.5ex]{0pt}{1ex}}}}%
\def\@oddhead{\underline{\makebox[\textwidth]
{{\small\bfseries\rightmark\hfill\thepage}
\rule[-0.5ex]{0pt}{1ex}}}}%
\def\chaptermark##1{%
\markthischapter{\MakeUppercase{%
\ifnum \c@secnumdepth >\m@ne
\if@mainmatter
\thechapter. \ %
\fi
\fi
##1}}}%
\def\sectionmark##1{%
\markthissection{\MakeUppercase{%
\ifnum \c@secnumdepth >\z@
\thesection. \ %
\fi
##1}}}}
\@phd@newpagestyle{centerheadings}{%
\def\@evenhead{\thepage\hfil{\footnotesize\itshape\leftmark}\hfil}
\def\@oddhead{\hfil{\footnotesize\itshape\rightmark}\hfil\thepage}
\def\chaptermark##1{\markthischapter{\MakeUppercase{##1}}}%
\def\sectionmark##1{\markthissection{\MakeUppercase{##1}}}}
\@phd@newpagestyle{centerscheadings}{%
\def\@evenhead{\thepage\hfil{\footnotesize\scshape\leftmark}\hfil}
\def\@oddhead{\hfil{\footnotesize\scshape\rightmark}\hfil\thepage}
\def\chaptermark##1{\markthischapter{##1}}%
\def\sectionmark##1{\markthissection{##1}}}
%%% Document page shape
\ifcase \@ptsize% mods for 10 pt
\ClassWarningNoLine{UnicaPhdThesis}
{You should use 12pt option instead of 10pt}
\setlength\textheight{53\baselineskip}
\or% mods for 11 pt
\ClassWarningNoLine{UnicaPhdThesis}
{You should use 12pt option instead of 11pt}
\textheight 46\baselineskip
\or% mods for 12 pt
\setlength\textheight{42\baselineskip}
\fi
\advance\textheight by \topskip
\setlength\headsep{10mm}
\setlength\topmargin{3mm}
\if@phd@MTh
\setlength\evensidemargin{5mm}
\setlength\oddsidemargin{15mm}
\setlength\textwidth{140mm}
\setlength\parskip {0.2em plus 1pt minus 1pt}
\AtBeginDocument{
\setlength\baselineskip {1.3125\baselineskip}
}
\InputIfFileExists{MasterThesis.cfg}{
\ClassWarningNoLine{UnicaPhdThesis}{using Master Thesis LOCAL page layout}
}{
\ClassWarningNoLine{UnicaPhdThesis}{using Master Thesis DAFAULT page layout}
}
\else
\setlength\evensidemargin{3mm}
\setlength\oddsidemargin{7mm}
\setlength\textwidth{150mm}
\InputIfFileExists{UnicaPhdThesis.cfg}{
\ClassWarningNoLine{UnicaPhdThesis}{using Phd Thesis LOCAL page layout}
}{
\ClassWarningNoLine{UnicaPhdThesis}{using Phd Thesis DAFAULT page layout}
}
\fi
%%% MakeTitle Strings Definition Commands
%% Init strings
\let\@phd@abstract\@empty
\let\@phd@address\@empty
\let\@phd@chair\@empty
\let\@phd@number\@empty
\let\@phd@referee\@empty
\let\@phd@supervisor\@empty
\let\@phd@coordinator\@empty
\let\@phd@ssd\@empty
\let\@phd@cycle\@empty
\let\@phd@phd\@empty
\if@phd@MTh%
\gdef\@phd@university{
University of Cagliari
\vskip 0.75em plus 0.25em minus 0.25em
{\large%
Facolt\`a di Scienze Matematiche Fisiche e Naturali\\
Corso di Laurea in Informatica
}
}
\else
\gdef\@phd@university{
University of Cagliari
\vskip 0.75em plus 0.25em minus 0.25em
{\large%
Department of Mathematics and Computer Science\\
\phdname \, \@phd@phd \\[5pt]
\cyclename\; \@phd@cycle 
}
}
\fi
\newcommand*{\university}[1]{\gdef\@phd@university{#1}}
\newcommand*{\supervisor}[1]{\gdef\@phd@supervisor{#1}}
\newcommand*{\coordinator}[1]{\gdef\@phd@coordinator{#1}}
\newcommand*{\ssd}[1]{\gdef\@phd@ssd{#1}}
\newcommand*{\cycle}[1]{\gdef\@phd@cycle{#1}}
\newcommand*{\phd}[1]{\gdef\@phd@phd{#1}}
\newcommand*{\referee}[1]{\gdef\@phd@referee{#1}}
\newcommand*{\chair}[1]{\gdef\@phd@chair{#1}}
\newcommand*{\phdnumber}[1]{\gdef\@phd@number{#1}}
\newcommand{\titleabstract}[1]{\gdef\@phd@abstract{#1}}
\newcommand*{\address}[1]{\gdef\@phd@address{#1}}
\if@twoside
\newcommand*{\markthischapter}[1]{\markboth{#1}{}}
\newcommand*{\markthissection}[1]{\markright{#1}}
\let\@phd@mkboth\markboth
\else
\newcommand*{\markthischapter}[1]{\markright{#1}}
\newcommand*{\markthissection}[1]{}
\let\@phd@mkboth\@gobbletwo
\fi
\newcommand*\printindex{\InputIfFileExists{\jobname.ind}{}
{\ClassWarningNoLine{UnicaPhdThesis}{No file \jobname.ind.}}}
\newcommand*{\maketitlepage}{
\begin{titlepage}%
\let\footnotesize\small
\let\footnoterule\relax
\null%\vfil
\begin{center}%
\includegraphics[height=25mm]{./logo-unica.jpg} \\[0.2cm]
\vskip -2cm
\textsc{\@phd@university}\par
\vskip 2em plus .25em minus .25em
{\large\textsc{\thesisname}\ifx\@phd@number\@empty\else:
\@phd@number\fi\par}
\vskip 2em
{\LARGE\bfseries\@title\par}\vskip2em%
\if@phd@MTh
\begin{minipage}[t]{0.45\textwidth}
\begin{center}
\begin{tabular}[t]{c}%
\textsc{\candidatename}\\[1ex]
\@author
\end{tabular}\\[5em]\mbox{}
\end{center}
\end{minipage}
\else
\begin{tabular}[t]{c}%
\large\@author
\end{tabular}\par
\fi
\ifx\@phd@abstract\@empty\else
\vskip.5em plus.25em minus.25em
\vfill
\begin{minipage}[t]{0.87\textwidth}
\textbf{\abstractname.} \@phd@abstract
\end{minipage}\par
\vskip.5em plus.25em minus.25em
\fi%
\vfill
{\large
\ifx\undefined\datename\else\datename~\fi
\@date\par}% Set date in \large size.
\end{center}%\par
\ifx\@thanks\@empty\else
\par\vfil\begin{center}
\@thanks
\end{center}
\fi%
\ifx\@phd@address\@empty\else
\par\vfil\begin{center}
\@phd@address
\end{center}
\fi%
\null
\end{titlepage}%
\thispagestyle{empty}
\setcounter{footnote}{0}%
\let\thanks\relax\let\maketitle\relax
\gdef\@thanks{}\gdef\@author{}\gdef\@title{}
}
\newenvironment{abstract}
{\chapter*{\abstractname}\thispagestyle{empty}}
{\thispagestyle{empty}\cleardoublepage\thispagestyle{empty}}
\newenvironment{acknowledgments}
{\chapter*{\acknowledgmentsname}\thispagestyle{empty}}
{\thispagestyle{empty}\cleardoublepage\thispagestyle{empty}}
\newenvironment{approval}{
\begin{titlepage}
\vspace*{70pt}
\vskip 0pt plus.3fil
\begin{center}
}{
\end{center}
\vskip 0pt plus.6fil
\end{titlepage}
\thispagestyle{empty}
}
\newenvironment{dedication}{
\begin{titlepage}
\vspace*{70pt}
\vskip 0pt plus.3fil
\begin{flushright}
}{
\end{flushright}
\vskip 0pt plus.6fil
\thispagestyle{empty}
\end{titlepage}
\thispagestyle{empty}
}
\newenvironment{summary}
{\chapter*{\summaryname}\thispagestyle{empty}}
{\thispagestyle{empty}\cleardoublepage\thispagestyle{empty}}
\newenvironment{preface}{
\let\@phd@thechapter\thechapter
\def\thechapter{\@Alph\c@chapter}
\if@twocolumn
\@restonecoltrue\onecolumn
\else
\@restonecolfalse
\fi
\chapter*{\prefacename
\chaptermark{\prefacename}\sectionmark{\prefacename}}%
\ifnum \c@secnumdepth >\m@ne
\if@mainmatter
\ClassWarningNoLine{UnicaPhdThesis}{preface environment %
should not be used in mainmatter mode}
\fi
\setcounter{chapter}{16}\setcounter{section}{0}% `P'=16
\typeout{\prefacename.}%
\addcontentsline{toc}{chapter}
{\protect\numberline{}\prefacename}%
\else
\addcontentsline{toc}{chapter}{\prefacename}%
\fi
\if@restonecol\twocolumn\fi
\thispagestyle{empty}
}{
\cleardoublepage
\setcounter{chapter}{0}
\setcounter{section}{0}%
\let\thechapter\@phd@thechapter
}
\newenvironment{introduction}{
\let\@phd@thechapter\thechapter
\def\thechapter{\@Alph\c@chapter}
\if@twocolumn
\@restonecoltrue\onecolumn
\else
\@restonecolfalse
\fi
\chapter*{\introductionname
\chaptermark{\introductionname}\sectionmark{\introductionname}}%
\ifnum \c@secnumdepth >\m@ne
\if@mainmatter
\ClassWarningNoLine{UnicaPhdThesis}{introduction environment %
should not be used in mainmatter mode}
\fi
\setcounter{chapter}{9}\setcounter{section}{0}% `I'=9
\typeout{\introductionname.}%
\addcontentsline{toc}{chapter}
{\protect\numberline{}\introductionname}%
\else
\addcontentsline{toc}{chapter}{\introductionname}%
\fi
\if@restonecol\twocolumn\fi
\thispagestyle{empty}
}{
\cleardoublepage
\setcounter{chapter}{0}
\setcounter{section}{0}%
\let\thechapter\@phd@thechapter
}
\newenvironment{conclusions}{
\let\@phd@thechapter\thechapter
\def\thechapter{\@Alph\c@chapter}
\if@twocolumn
\@restonecoltrue\onecolumn
\else
\@restonecolfalse
\fi
\chapter*{\conclusionsname
\chaptermark{\conclusionsname}\sectionmark{\conclusionsname}}%
\ifnum \c@secnumdepth >\m@ne
\if@mainmatter\else
\ClassWarningNoLine{UnicaPhdThesis}{conclusions environment %
should be used in mainmatter mode}
\fi
\setcounter{chapter}{3}\setcounter{section}{0}% `C'=3
\typeout{\conclusionsname.}%
\addcontentsline{toc}{chapter}
{\protect\numberline{}\conclusionsname}%
\else
\addcontentsline{toc}{chapter}{\conclusionsname}%
\fi
\if@restonecol\twocolumn\fi
\thispagestyle{empty}
}{
\cleardoublepage
\setcounter{chapter}{0}
\setcounter{section}{0}%
\let\thechapter\@phd@thechapter
}
\newenvironment{chapterabstract}
{\normalfont\small\hrulefill~\abstractname~\hrulefill%\bigskip
\quotation\small}%
{\endquotation%\bigskip
\hrule\bigskip\noindent\ignorespaces}
\if@phd@show
\RequirePackage[notref,notcite]{showkeys}[1995/11/22]
\else
\ClassWarningNoLine{UnicaPhdThesis}{FINAL VERSION option used}
\fi
%%% Language Dependent Names
\AtBeginDocument{
\if@phd@italian
\providecommand*\abstractname{Sommario}
\providecommand*\acknowledgmentsname{Ringraziamenti}
\providecommand*\chairname{Direttore}
\providecommand*\conclusionsname{Conclusioni}
\providecommand*\indexname{Glossario}
\providecommand*\introductionname{Introduzione}
\providecommand*\prefacename{Prefazione}
\providecommand*\refereename{Controrelatore}
\providecommand*\summaryname{Riassunto}
\providecommand*\supervisorname{Relatore1}
\providecommand*\supervisorname{Relatore2}
\providecommand*\phdcoordinatorname{Coordinatore Dottorato}
\providecommand*\ssdname{S.S.D.}
\providecommand*\cyclename{Ciclo}
\providecommand*\phdname{Dottorato di Ricerca in}
\if@phd@MTh%
\providecommand*\thesisname{Tesi di Laurea}
\providecommand*\candidatename{Candidato}
\providecommand*\datename{Anno Accademico}
\else
\providecommand*\thesisname{Tesi di Dottorato}
\fi
\else
\providecommand*\abstractname{Abstract}
\providecommand*\acknowledgmentsname{Acknowledgments}
\providecommand*\chairname{Chair}
\providecommand*\conclusionsname{Conclusions}
\providecommand*\indexname{Index}
\providecommand*\introductionname{Introduction}
\providecommand*\prefacename{Preface}
\providecommand*\refereename{Referee}
\providecommand*\summaryname{Summary}
\providecommand*\candidatename{Candidate}
\providecommand*\supervisorname{PhD Supervisor}
\providecommand*\phdcoordinatorname{PhD Coordinator}
\providecommand*\ssdname{S.S.D.}
\providecommand*\cyclename{Cycle}
\providecommand*\phdname{PhD Course in}
\if@phd@MTh%
\providecommand*\thesisname{Master Thesis}
\providecommand*\candidatename{Candidate}
\providecommand*\datename{Academic Year}
\else
\providecommand*\thesisname{Ph.D.~Thesis}
\fi
\fi
}
%%% Patches book.cls definitions
\renewenvironment{thebibliography}[1]
{\chapter*{\bibname
\chaptermark{\bibname}\sectionmark{\bibname}}%
\typeout{\bibname.}%
\addcontentsline{toc}{chapter}{\protect\numberline{}\bibname}
\list{\@biblabel{\@arabic\c@enumiv}}%
{\settowidth\labelwidth{\@biblabel{#1}}%
\leftmargin\labelwidth
\advance\leftmargin\labelsep
\@openbib@code
\usecounter{enumiv}%
\let\p@enumiv\@empty
\renewcommand\theenumiv{\@arabic\c@enumiv}}%
\sloppy
\clubpenalty4000
\@clubpenalty\clubpenalty
\widowpenalty4000%
\sfcode`\.\@m}
{\def\@noitemerr
{\@latex@warning{Empty `thebibliography' environment}}%
\endlist}
\renewcommand\tableofcontents{%
\if@twocolumn\@restonecoltrue\onecolumn\else\@restonecolfalse\fi
\chapter*{\contentsname
\chaptermark{\contentsname}\sectionmark{\contentsname}}%
\@starttoc{toc}\if@restonecol\twocolumn\fi}
\renewcommand\listoffigures{%
\if@twocolumn\@restonecoltrue\onecolumn\else\@restonecolfalse\fi
\chapter*{\listfigurename
\chaptermark{\listfigurename}\sectionmark{\listfigurename}}%
\@starttoc{lof}\if@restonecol\twocolumn\fi}
\renewcommand\listoftables{%
\if@twocolumn\@restonecoltrue\onecolumn\else\@restonecolfalse\fi
\chapter*{\listtablename
\chaptermark{\listtablename}\sectionmark{\listtablename}}%
\@starttoc{lot}\if@restonecol\twocolumn\fi}
\renewenvironment{theindex}
{\if@twocolumn\@restonecolfalse\else\@restonecoltrue\fi
\if@openright\cleardoublepage\else\clearpage\fi
\columnseprule \z@
\columnsep 35\p@
\twocolumn[\@makeschapterhead{\indexname}]%
\chaptermark{\indexname}\sectionmark{\indexname}%
\typeout{\indexname.}%
\addcontentsline{toc}{chapter}{\protect\numberline{}\indexname}
\thispagestyle{plain}\parindent\z@
\parskip\z@ \@plus .3\p@\relax
\let\item\@idxitem}
{\if@restonecol\onecolumn\else\clearpage\fi}
\renewcommand*{\maketitle}{
\begin{titlepage}%
\let\footnotesize\small
\let\footnoterule\relax
\null%\vfil
\begin{center}%
\vskip -4cm
\hskip -1cm
\begin{minipage}[t]{1\textwidth}
\begin{center}
\begin{tabular}[t]{cccccccc}%
%\hspace{-1.7cm}
%&
%\includegraphics[height=15mm]{./images/UE.png}
%&
%\hspace{1.8cm}
%&
%\includegraphics[height=15mm]{./images/MIUR.png}
%&
%\hspace{1.5cm}
%&
%\includegraphics[height=15mm]{./images/RAS.png}
%&
%\hspace{1.5cm}
%&
%\includegraphics[height=15mm]{./images/POR.png}
\end{tabular}\\[5em]\mbox{}
\end{center}
\end{minipage}

\includegraphics[height=25mm]{./images/stemma_unica.pdf}\\[0.2cm]
\textsc{\@phd@university}\par
\vskip 4em plus .25em minus .25em
{\large\textsc{\thesisname}\ifx\@phd@number\@empty\else:
\@phd@number\fi\par}
\vskip 4em
{\LARGE\bfseries\@title\par}\vskip2em%
\textsc{\ssdname} \@phd@ssd
\vskip 4em
\if@phd@MTh
\begin{minipage}[t]{0.45\textwidth}
\begin{center}
\begin{tabular}[t]{c}%
\textsc{\candidatename}\\[1ex]
\@author
\end{tabular}\\[5em]\mbox{}
\end{center}
\end{minipage}
\else
\begin{tabular}[t]{c}%
\textsc{\candidatename}\\[1ex]
\large\@author
\end{tabular}\par
\fi
\vskip1em\vfill
\def\and{\end{tabular}\\[5em]\mbox{}\end{center}\end{minipage}\hfill
\begin{minipage}[t]{0.45\textwidth}\begin{center}
\begin{tabular}[t]{c}\textsc{\supervisorname}\\[1ex]%
}
\ifx\@phd@supervisor\@empty\else
\begin{minipage}[t]{0.95\textwidth}
\begin{center}
\begin{tabular}[t]{ccc}%
\textsc{\supervisorname} 
&
\hspace{15ex}
&
\textsc{\phdcoordinatorname} \\[1ex]
\@phd@supervisor
& & 
\@phd@coordinator
\end{tabular}\\[5em]\mbox{}
\end{center}
\end{minipage}
\fi%
\def\and{\end{tabular}\\[5em]\mbox{}\end{center}\end{minipage}\hfill
\begin{minipage}[t]{0.45\textwidth}\begin{center}
\begin{tabular}[t]{c}\textsc{\refereename}\\[1ex]%
}
\ifx\@phd@referee\@empty\else
\hfill
\begin{minipage}[t]{0.45\textwidth}
\begin{center}
\begin{tabular}[t]{c}%
\textsc{\refereename}\\[1ex]
\@phd@referee
\end{tabular}\\[5em]\mbox{}
\end{center}
\end{minipage}
\fi%
\par
\def\and{\end{tabular}\\[5em]\mbox{}\end{center}\end{minipage}\hfill
\begin{minipage}[t]{0.45\textwidth}\begin{center}
\begin{tabular}[t]{c}\textsc{\chairname}\\[1ex]%
}
\ifx\@phd@chair\@empty\else
\begin{minipage}[t]{0.45\textwidth}
\begin{center}
\begin{tabular}[t]{c}%
\textsc{\chairname}\\[1ex]
\@phd@chair
\end{tabular}\\[5em]\mbox{}
\end{center}
\end{minipage}
\fi%
\vskip1em\vfill
{\large
\ifx\undefined\datename\else\datename~\fi
\@date\par}% Set date in \large size.
\end{center}%\par
\ifx\@thanks\@empty\else
\par\vfil\begin{center}
\@thanks
\end{center}
\fi%
\ifx\@phd@address\@empty\else
\par\vfil\begin{center}
\@phd@address
\end{center}
\fi%
\null
\end{titlepage}%
\thispagestyle{empty}
\setcounter{footnote}{0}%
\let\thanks\relax\let\maketitle\relax
}
\endinput
%%
%% End of file `UnicaPhdThesis.cls'.
