\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{perassignments}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass[12pt]{article}

\RequirePackage[a4paper,bindingoffset=0.2in,%
left=0.75in,right=0.75in,top=1in,bottom=1in,%
footskip=0.5in]{geometry}


\RequirePackage{fancyhdr}
\RequirePackage{graphicx,tabularx}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{xspace}
\RequirePackage{intcalc}

\let\@CourseName\@empty
\let\@Semester\@empty
\let\@Year\@empty
\let\@Prof\@empty
\let\@Dept\@empty
\let\@Name\@empty
\let\@StudentNumber\@empty
\let\@Title\@empty

\newcommand{\SemesterT}[1]{نیم‌سال #1}
\newcommand{\YearT}[1]{
	\newcounter{year}
	\setcounter{year}{#1}
	\stepcounter{year}
	\setcounter{year}{\intcalcMod{\value{year}}{100}}
	#1\lr{-}\ifnum\value{year}<10 0\fi\arabic{year}
}

\newcommand{\ProfT}[1]{مدرس: #1}
\newcommand{\NameT}[1]{نام و نام‌خانوادگی: #1}
\newcommand{\StuNumberT}[1]{شماره دانشجویی: #1}




\newcommand{\CollabFirst}[2][دانشجو اول]{\gdef\@CollabFirstName{#1} \gdef\@CollabFirstNumber{#2}}
\newcommand{\CollabSecond}[2][دانشجو دوم]{\gdef\@CollabSecondName{#1} \gdef\@CollabSecondNumber{#2}}
\newcommand{\CollabThird}[2][دانشجو سوم]{\gdef\@CollabThirdName{#1} \gdef\@CollabThirdNumber{#2}}

\newcommand{\CourseName}[1][نام درس]{\gdef\@CourseName{\huge {#1}}}
\newcommand{\Semester}[1][شماره ترم]{\gdef\@Semester{\large{\SemesterT{#1}}}}
\newcommand{\Year}[1][سال]{\gdef\@Year{\large{\YearT{#1}}}}
\newcommand{\Prof}[1][نام استاد]{\gdef\@Prof{\large{\ProfT{#1}}}}
\newcommand{\Dept}[1][نام دانشکده]{\gdef\@Dept{#1}}
\newcommand{\Name}[1][نام دانشجو]{\gdef\@Name{\NameT{#1}}}
\newcommand{\StudentNumber}[1][شماره دانشجویی]{\gdef\@StudentNumber{\StuNumberT{#1}}}
\newcommand{\Title}[1][عنوان]{\gdef\@Title{\large{\textbf{#1}}}}



\fancypagestyle{fancy}{
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
	\renewcommand\footrule{
	}
	\fancyhf{}
	\fancyhead[L,R]{}
	\fancyfoot[C]{\textbf{\thepage}}
}



\newcommand{\makeMytitle}{
	\begingroup
	\vspace*{-1.5cm}
	\renewcommand{\arraystretch}{1.5}
	\centering
	\begin{tabular*}{\linewidth}{r @{\extracolsep{\fill}} cc}
		\@CourseName & & \multirow{2}{*}{\includegraphics[width=5.1em]{sharif-logo.png}} \\ [2ex]
		 \@Semester \@Year & &  \\ [0.7ex] 
		\@Prof & &  \@Dept \\ [0.3em]\hline 
		\@Name & \@Title & \@StudentNumber \\ [1em]\hline
	\end{tabular*}
	\endgroup
}
\newcommand{\MakeMyLabTitle}{
	\begingroup
	\vspace*{-1.5cm}
	\renewcommand{\arraystretch}{1.5}
	\centering
	\begin{tabular*}{\linewidth}{r @{\extracolsep{\fill}} cc}
		\@CourseName & & \multirow{2}{*}{\includegraphics[width=5.1em]{sharif-logo.png}} \\ [2ex]
		\@Semester \@Year & &  \\ [0.7ex] 
		\@Prof & &  \@Dept \\ [0.3em]\hline 
		\@CollabFirstName & \@CollabSecondName & \@CollabThirdName \\
		\@CollabFirstNumber & \@CollabSecondNumber & \@CollabThirdNumber \\ [0.6em]\hline
	\end{tabular*}
	\endgroup
}


%Set digit math
%\ExplSyntaxOn
%\cs_set_eq:NN
%\etex_iffontchar:D
%\tex_iffontchar:D
%\ExplSyntaxOff

\endinput

