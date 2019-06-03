\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2014/08/16 Example LaTeX class]
\LoadClass{article}

\RequirePackage{fancyhdr}

\pagestyle{fancy}
\lhead{}
\chead{}
\rhead{}
\lfoot{}
\cfoot{Page \thepage}

\RequirePackage{titlesec}
\titleformat{\section}
{\normalfont\Large\bfseries}{Problem~\thesection}{1em}{}

\titleformat{\subsection}
{\normalfont\large\bfseries}{Part~\thesubsection}{1em}{}

