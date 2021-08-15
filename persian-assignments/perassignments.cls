\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{perassignments}

%\DeclareOption{onecolumn}{\OptionNotUsed}
%\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
%\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
%\ProcessOptions\relax

\LoadClass[12pt]{article}

\RequirePackage[a4paper,bindingoffset=0.2in,%
left=0.75in,right=0.75in,top=1in,bottom=1in,%
footskip=0.5in]{geometry}

\RequirePackage{changepage}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx,tabularx}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{xspace}
\RequirePackage{intcalc}



\fancypagestyle{fancy}{
	%\setlength{\headheight}{10pt}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
	\renewcommand\footrule{
	}
	%\renewcommand{\footruleskip}{100 pt}
	\fancyhf{}
	\fancyhead[L,R]{}
	\fancyfoot[C]{\textbf{\thepage}}
}



%\newcolumntype{L}{>{\centering\arraybackslash \hsize=0.8\hsize}X}
%\newcolumntype{M}{>{\centering\arraybackslash \hsize=0.6\hsize}X}
%\newcolumntype{R}{>{\raggedright\arraybackslash}X}
%\begin{tabularx}{\linewidth}{R  M  L}	
%\huge \fphCourseName & & \\ %\multirow{2}{*}{\includegraphics[width=5em]{sharif-logo.png}} \\ [2ex]
%\large \fphTerm & &  \\ [0.5ex] 
%\large \fphProfName & &  \fphDept \\ [0.3em]\hline 
%\fphStudentName &\large \textbf{\fphTitle}  & \fphStudentNumber \\ %\hline	
%\end{tabularx}

\newcommand{\fphCourseName}{نام درس}
\newcommand{\fphTerm}{شماره ترم}
\newcommand{\fphProfName}{نام استاد}
\newcommand{\fphDept}{نام دانشکده}
\newcommand{\fphStudentName}{نام دانشجو}
\newcommand{\fphTitle}{عنوان} 
\newcommand{\fphStudentNumber}{شماره دانشجو}



\fancypagestyle{fpheader}{
	%\setlength{\headheight}{128pt} % head height += 115
	%\addtolength{\topmargin}{-21.6pt} % top margin -= 21.6 pt = -.3 in
	%\addtolength{\textheight}{-200pt} %text height -= 93.4 pt
	\renewcommand{\headrulewidth}{0.5pt}
	\renewcommand{\footrulewidth}{0pt}
	\renewcommand\footrule{
	}
	%\renewcommand{\footruleskip}{100 pt}
	\fancyhf{}
	\fancyhead[R]{\begingroup\renewcommand{\arraystretch}{1.5}\centering
		\begin{tabular*}{\linewidth}{r @{\extracolsep{\fill}} cc}
			\huge \fphCourseName & & \multirow{2}{*}{\includegraphics[width=5.1em]{sharif-logo.png}} \\ [2ex]
			\large \fphTerm & &  \\ [0.7ex] 
			\large \fphProfName & &  \fphDept \\ [0.3em]\hline 
			\fphStudentName & \fphTitle  & \fphStudentNumber %\\ \hline
		\end{tabular*}
	 \endgroup}
 	\fancyfoot[C]{\textbf{\thepage}}
}
\newcommand{\addheader}{
	%\loadgeometry{HeaderLayout}
	\changepage{-116pt}{0pt}{0pt}{0pt}{0pt}{0pt}{116pt}{0pt}{0pt}
	\thispagestyle{fpheader}
}

%\newcommand{\heading}[7]
%{
%	%set paging
%			\begingroup
%			\setlength{\tabcolsep}{10pt} % Default value: 6pt
%			\renewcommand{\arraystretch}{1.5} % Default value: 1
%			\begin{table}
%				\begin{tabularx}{\textwidth}{R M L }	
%					
%					\huge #1 & & \multirow{2}{*}{\includegraphics[width=5em]{sharif-logo.png}} \\ [2ex]
%					\large #4 & &  \\ [0.5ex] 
%					\large #3 & &  #2 \\ [0.3em]\hline 
%					#5 &\large \textbf{#7}  & #6 \\ \hline	
%				\end{tabularx}
%			\end{table}
%			\endgroup
%
%}
\newcommand{\handoutFormat}[8]{
	\newcounter{year}
	\setcounter{year}{#4}
	\stepcounter{year}
	\setcounter{year}{\intcalcMod{\value{year}}{100}}
	
	
	\renewcommand{\fphCourseName}{#1}
	\renewcommand{\fphDept}{#8}
	\renewcommand{\fphTerm}{%نیم‌سال
		 ترم #3
		#4\lr{-}\ifnum\value{year}<10 0\fi\arabic{year}
	}
	\renewcommand{\fphProfName}{مدرس: #2}
	\renewcommand{\fphStudentName}{نام و نام‌خانوادگی: #5}
	\renewcommand{\fphStudentNumber}{شماره دانشجویی: #6}
	\renewcommand{\fphTitle}{\large \textbf{#7}}
%\heading
%	{#1}{#8}{مدرس: #2}{نیم‌سال #3
%		#4\lr{-}\ifnum\value{year}<10 0\fi\arabic{year}}
%	{نام و نام‌خانوادگی: #5}{شماره دانشجویی: #6}{#7}
%
}

\newcommand{\mathHandout}[7]{
	\handoutFormat{#1}{#2}{#3}{#4}{#5}{#6}{#7}{دانشکده علوم ریاضی}
}

\newcommand{\ceHandout}[7]{
	\handoutFormat{#1}{#2}{#3}{#4}{#5}{#6}{#7}{دانشکده مهندسی کامپیوتر}
}

\newcommand{\physHandout}
{
	\renewcommand{\fphCourseName}{آز فیزیک ۲}
	\renewcommand{\fphDept}{ }
	\renewcommand{\fphTerm}{آزمایش چهارم}
	\renewcommand{\fphProfName}{گروه چهارم}
	\renewcommand{\fphStudentName}{عماد زین‌اوقلی ۹۸۱۰۳۲۴۶}	
	\renewcommand{\fphStudentNumber}{پارسا رئیسی ۹۸۱۰۳۲۲۳}
	\renewcommand{\fphTitle}{محمد حسین نوریان ۹۶۱۰۴۶۶۵}
}

%Set digit math
\ExplSyntaxOn
\cs_set_eq:NN
\etex_iffontchar:D
\tex_iffontchar:D
\ExplSyntaxOff


