\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DESDstyle}

% These do nothing, but provide them like in article.cls
\newif\if@restonecol
\newif\if@titlepage

\LoadClass[twocolumn]{article}
\RequirePackage[style=ieee]{biblatex}
\RequirePackage{graphicx}
\RequirePackage{xcolor}



%%%%% Declare TITLE %%%%%
\renewcommand{\maketitle}{%
    \twocolumn[
        \centering
        \fontsize{16}{19}\fontfamily{put}\fontseries{b}%
        \selectfont
        \@title
        \medskip
        ]%
}

%%%%%%%Creating Author Block%%%%%%%
% \newcommand{\authorblock}{%
%     \twocolumn[
%         \hspace{5mm}
%         \fontsize{12}{19}\fontfamily{put}\fontseries{b}%
%         \selectfont
%         % \@author
%         \medskip
%         ]%
% }

% \def\@IEEEspecialpapernotice{\relax}
% \def\@IEEEauthorblockconfadjspace{-0.25em}
% \def\@IEEEauthordefaulttextstyle{\normalfont\@IEEEcompsocnotconfonly{\sffamily}\sublargesize}
% % variable to indicate if the current block is the first block in the column
% \newif\if@IEEEprevauthorblockincol   \@IEEEprevauthorblockincolfalse

\def\@IEEEauthorhalign{\@IEEEauthordefaulttextstyle% default text style
   \lineskip=0pt\relax% disable line spacing
   \lineskiplimit=0pt\relax%
   \baselineskip=0pt\relax%
   \@IEEEcurfontSAVE% save the current font
   \mathsurround\z@\relax% no extra spacing around math
   \let\\\@IEEEauthorhaligncr% replace newline with halign friendly one
   \tabskip=0pt\relax% no column spacing
   \everycr{}% ensure no problems here
   \@IEEEprevauthorblockincolfalse% no author blocks yet
   \def\@IEEEauthorblockXinterlinespace{2.7ex}% default interline space
   \vtop\bgroup%vtop box
   \halign\bgroup&\relax\hfil\@IEEEcurfontRESTORE\relax ##\relax
   \hfil\@IEEEcurfontSAVE\@IEEEauthorstrutrule\cr}

% {\begin{@IEEEauthorhalign}\@author\end{@IEEEauthorhalign}}
\author

%%%%%