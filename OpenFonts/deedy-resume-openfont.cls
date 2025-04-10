% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Package Imports
\usepackage[hmargin=0.9cm, vmargin=0.5cm]{geometry}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{ragged2e}

% hidelinks hides the boxes around the links
\usepackage[hidelinks,
			colorlinks = true,
			linkcolor = blue,
            urlcolor  = blue,
            citecolor = blue,
            anchorcolor = blue]{hyperref}

% Publications
\usepackage{cite}
%\renewcommand\refname{\vskip -1.5cm}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/ubuntu/,BoldItalicFont=Ubuntu-MediumItalic,BoldFont=Ubuntu-Bold,ItalicFont=Ubuntu-LightItalic]{Ubuntu-Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[4]{
\centering{
\fontsize{34pt}{34pt}
\fontspec[Path = fonts/ubuntu/]{Ubuntu-Light}\selectfont #1 
\fontspec[Path = fonts/ubuntu/]{Ubuntu-Regular}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/ubuntu/]{Ubuntu-Light}\fontsize{10pt}{12pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\centering{
\color{headings}
\fontspec[Path = fonts/ubuntu/]{Ubuntu-Regular}\fontsize{9pt}{9pt}\selectfont #4}
\vspace{-16pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{4pt}}
\newcommand{\subsectionsep}{\vspace{4pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/ubuntu/]{Ubuntu-Regular}\fontsize{16pt}{20pt}\selectfont \raggedright}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/ubuntu/]{Ubuntu-Medium}\fontsize{12pt}{12pt}\selectfont\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/ubuntu/]{Ubuntu-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/ubuntu/]{Ubuntu-Light}\fontsize{10pt}{12pt}\selectfont {#1 \\} \normalfont}

% Project command
\newcommand{\project}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/ubuntu/]{Ubuntu-Regular}\fontsize{10pt}{10pt}\selectfont\uppercase {#1 \\} \normalfont}

% Highlight command
\newcommand{\highlight}[1]{\color{subheadings}\fontspec[Path = fonts/ubuntu/]{Ubuntu-Bold}\bfseries\selectfont {#1}\normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/ubuntu/]{Ubuntu-Light}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\fontsize{10pt}{10pt}\begin{justify}\begin{itemize}\itemsep1.3pt \parskip0pt \parsep0pt}
{\end{itemize}\end{justify}\vspace{-\topsep}}

