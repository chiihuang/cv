\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}

\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\usepackage{enumitem}
\usepackage{parskip}
\usepackage{hyperref}
\usepackage[left=0.75in,top=0.6in,right=0.75in,bottom=0.6in]{geometry}
\usepackage{bold-extra}
\usepackage[en-US]{datetime2}

%----------------
% Package Setup
%----------------
\hypersetup{colorlinks,urlcolor=blue}
\DTMlangsetup[en-US]{abbr=true}
\DTMlangsetup[en-US]{showdayofmonth=false}

\newcommand{\printName}[1]{\textbf{\huge \MakeUppercase{#1}}\\\vspace{0.5em}}
\newcommand{\printPhone}[1]{{\em Phone}: #1\\}
\newcommand{\printEmail}[1]{{\em Email}: \href{mailto:#1}{#1}\\}
\newcommand{\printWebsite}[1]{{\em Website}: \url{#1}\\}
\newcommand{\printAddress}[1]{{\em Address}: #1\\}

\newenvironment{cvHeader}{\begin{center}}{\end{center}}

% #1: Title, #2: City, #3: Interval
\newenvironment{cvSection}[1]{
	\medskip
	\textbf{\Large \uppercase{#1}}
	\medskip
	\hrule
	\begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{1.5em} % Margin within the section
  }
  \item[]
}{
	\end{list}
}

% #1: Title, #2: City, #3: Interval
\newenvironment{eduSubsection}[3]{
	{\bf #1}, #2 \hfill #3
	\begin{itemize}[label=$\cdot$]
}{
	\end{itemize}
}

% #1: Company, #2: Location, #3: Interval, #4: Role/Title
\newenvironment{experienceSubsection}[4]{
	{\bf #1} \hfill #3\\
	{\em #4} \hfill #2
	\begin{itemize}[label=$\cdot$]
}{
	\end{itemize}
	\medskip
}

% #1: Title, #2: Interval, #3: subtitle
\newenvironment{projectSubsection}[3]{
	{\bf #1} \hfill #2\\
	{\em #3}
	\begin{itemize}[label=$\cdot$]
}{
	\end{itemize}
	\medskip
}