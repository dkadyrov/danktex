\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2014/08/16 Example LaTeX class]
\LoadClass{article}

\RequirePackage{geometry}
\geometry{letterpaper, margin=1in}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{\ClassNumber}
\chead{\Title}
\rhead{Page \thepage}
\lfoot{\Author}
\cfoot{}
\rfoot{\ClassName}

\RequirePackage[T1]{fontenc}
\RequirePackage{textcomp}

\RequirePackage{courier}
\RequirePackage[bookmarks,hypertexnames=false,debug]{hyperref}
\RequirePackage{bookmark}

\RequirePackage{listings}
\lstset{
    numbers=left,
    xleftmargin=2em,
    frame=single,
    framexleftmargin=0em,
    basicstyle=\footnotesize\ttfamily,
    xleftmargin=.075\textwidth,
    xrightmargin=.075\textwidth,
    numberstyle=\footnotesize\ttfamily,
    upquote=true,
    framesep=10pt,
    numbersep=20pt,
    keywordstyle=\bfseries,
    stringstyle=\textit,
    showstringspaces=false,
    columns=fixed,
    breaklines=true,
}

% \RequirePackage{placeins}
% \RequirePackage{environ}
% \RequirePackage{xifthen}
% % Redefine these if you want to change the language
% \newcommand{\problemlabel}{Problem}
% \newcommand{\solutionlabel}{Solution}


% % Set up counters for problems and subproblems
% \newcounter{ProblemNum}
% \newcounter{SubProblemNum}[ProblemNum]
% \renewcommand{\theProblemNum}{\arabic{ProblemNum}}
% \renewcommand{\theSubProblemNum}{\alph{SubProblemNum}}


% % The problem environment is the base unit of content for this class.
% \newcommand{\subsectiontitle}{}                                                                                                                                  
% \newenvironment{problem}[1]%
% {
%     \stepcounter{ProblemNum}
%     \renewcommand{\subsectiontitle}{\problemlabel \ \theProblemNum \ifthenelse{\isempty{#1}}{}{\ : #1}}
%     \medskip \subsection*{\subsectiontitle}
%     \FloatBarrier

%     \phantomsection
%     \addcontentsline{toc}{section}{\subsectiontitle}
% }
% {
%   \FloatBarrier
% }


% % The subproblem command divides a problem into parts a), b), c), ...
% \newcommand*{\subproblem}{%
%     \stepcounter{SubProblemNum}%
%     {\bf \theSubProblemNum)\hspace{2pt}}
% }


% % The solution environment should be used within the problem environment
% \NewEnviron{solution}{
%     \setcounter{SubProblemNum}{0}
%     \FloatBarrier
%     \subsubsection*{\solutionlabel}
%     \BODY
% }



\newenvironment{problem}[1][]{
    \phantomsection
    \addcontentsline{toc}{section}{Problem #1}
    \textbf{Problem #1}\\
}{
    \vspace{4mm}
}

\newenvironment{part}[1][]{
    \phantomsection
    \addcontentsline{toc}{subsection}{Part #1}
    \textbf{Part #1}\\
}{
    \vspace{4mm}
}


\newenvironment{solution}{
    \textbf{Solution}
    \linebreak
}{
    \vspace{4mm}
}


\renewcommand\headrulewidth{0.4pt}
\renewcommand\footrulewidth{0.4pt}

\setlength\parindent{0pt}

\newcommand{\Title}[1]{\gdef\Title{#1}}
\newcommand{\DueDate}[1]{\gdef\DueDate{#1}}
\newcommand{\ClassName}[1]{\gdef\ClassName{#1}}
\newcommand{\ClassNumber}[1]{\gdef\ClassNumber{#1}}
\newcommand{\ClassSection}[1]{\gdef\ClassSection{#1}}
\newcommand{\Instructor}[1]{\gdef\Instructor{#1}}
\newcommand{\Author}[1]{\gdef\Author{#1}}
\newcommand{\AuthorID}[1]{\gdef\AuthorID{#1}}
\newcommand{\School}[1]{\gdef\School{#1}}
%
% Title Page
%
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{amsmath}

\renewcommand{\maketitle}{%
    \thispagestyle{empty}
    \begin{center}
        \Large
        \Title \\
        \vspace{4mm}
        \large
        Due on \DueDate \\
        \ClassName \\ 
        \ClassNumber$-$\ClassSection \\
        \Instructor \\
        \School \\
        \vspace{4mm}
        \Author\\
        \vspace{4mm}
    \end{center}
}

\RequirePackage{csquotes}
\RequirePackage{hyperref}
\RequirePackage{caption}