\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{perassignments}

%\DeclareOption{onecolumn}{\OptionNotUsed}
%\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
%\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
%\ProcessOptions\relax
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



\newcommand{\CourseName}[1][نام درس]{\gdef\@CourseName{#1}}
\newcommand{\Semester}[1][شماره ترم]{\gdef\@Semester{\SemesterT{#1}}}
\newcommand{\Year}[1][سال]{\gdef\@Year{\YearT{#1}}}
\newcommand{\Prof}[1][نام استاد]{\gdef\@Prof{\ProfT{#1}}}
\newcommand{\Dept}[1][نام دانشکده]{\gdef\@Dept{#1}}
\newcommand{\Name}[1][نام دانشجو]{\gdef\@Name{\NameT{#1}}}
\newcommand{\StudentNumber}[1][شماره دانشجو]{\gdef\@StudentNumber{\StuNumberT{#1}}}
\newcommand{\Title}[1][عنوان]{\gdef\@Title{#1}}


%\newcommand{\fphCourseName}{نام درس}
%\newcommand{\fphTerm}{ترم}
%\newcommand{\fphProfName}{نام استاد}
%\newcommand{\fphDept}{نام دانشکده}
%\newcommand{\fphStudentName}{نام دانشجو}
%\newcommand{\fphTitle}{عنوان} 
%\newcommand{\fphStudentNumber}{شماره دانشجو}


\fancypagestyle{fancy}{
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
	\renewcommand\footrule{
	}
	\fancyhf{}
	\fancyhead[L,R]{}
	\fancyfoot[C]{\textbf{\thepage}}
}


%\newcommand{\titleTable}{
%	\vspace*{-1.5cm}
%	\begingroup
%	\renewcommand{\arraystretch}{1.5}
%	\centering
%	\begin{tabular*}{\linewidth}{r @{\extracolsep{\fill}} cc}
%		\huge \fphCourseName & & \multirow{2}{*}{\includegraphics[width=5.1em]{sharif-logo.png}} \\ [2ex]
%		\large \fphTerm & &  \\ [0.7ex] 
%		\large \fphProfName & &  \fphDept \\ [0.3em]\hline 
%		\fphStudentName & \large{\textbf{\fphTitle}}  & \fphStudentNumber \\ [1em]\hline
%	\end{tabular*}
%	\endgroup
%}

\newcommand{\makeMytitle}{
	\begingroup
	\vspace*{-1.5cm}
	\renewcommand{\arraystretch}{1.5}
	\centering
	\begin{tabular*}{\linewidth}{r @{\extracolsep{\fill}} cc}
		\huge \@CourseName & & \multirow{2}{*}{\includegraphics[width=5.1em]{sharif-logo.png}} \\ [2ex]
		\large \@Semester \@Year & &  \\ [0.7ex] 
		\large \@Prof & &  \@Dept \\ [0.3em]\hline 
		\@Name & \large{\textbf{\@Title}}  & \@StudentNumber \\ [1em]\hline
	\end{tabular*}
	\endgroup
}

%\newcommand{\handoutFormat}[8]{
%	\newcounter{year}
%	\setcounter{year}{#4}
%	\stepcounter{year}
%	\setcounter{year}{\intcalcMod{\value{year}}{100}}
%	
%	
%	\renewcommand{\fphCourseName}{#1}
%	\renewcommand{\fphDept}{#8}
%	\renewcommand{\fphTerm}{%
%		نیم‌سال #3
%		#4\lr{-}\ifnum\value{year}<10 0\fi\arabic{year}
%	}
%	\renewcommand{\fphProfName}{مدرس: #2}
%	\renewcommand{\fphStudentName}{نام و نام‌خانوادگی: #5}
%	\renewcommand{\fphStudentNumber}{شماره دانشجویی: #6}
%	\renewcommand{\fphTitle}{#7}
%}

%\newcommand{\mathHandout}[7]{
%	\handoutFormat{#1}{#2}{#3}{#4}{#5}{#6}{#7}{دانشکده علوم ریاضی}
%}
%
%\newcommand{\ceHandout}[7]{
%	\handoutFormat{#1}{#2}{#3}{#4}{#5}{#6}{#7}{دانشکده مهندسی کامپیوتر}
%}


%Set digit math
\ExplSyntaxOn
\cs_set_eq:NN
\etex_iffontchar:D
\tex_iffontchar:D
\ExplSyntaxOff

\endinput

