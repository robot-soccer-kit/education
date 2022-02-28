\LoadClass[a4paper,12pt]{article}

\RequirePackage[french]{babel}%langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{lastpage}
\RequirePackage{nomencl}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage{fancyhdr}
\csname @addtoreset\endcsname{section}{part}

\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2.5cm]{geometry} %Configuration de la page

%-------------------- Informations sur le rapport ----------------------

\newcommand{\matiere}[1]{\renewcommand{\matiere}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}
\newcommand{\classe}[1]{\renewcommand{\classe}{#1}}



\newcommand{\fairemarges}[1]{
\makenomenclature
\pagestyle{fancy}
\setlength{\unitlength}{1mm}
\addtolength{\headheight}{0\baselineskip}
\renewcommand{\headrulewidth}{0.6pt}
\renewcommand{\footrulewidth}{0.5pt}
\fancyfoot{}
\lhead{ \includegraphics[width=1cm]{../../../images/rhoban_logo_mini.pdf}  \hspace{0.5cm}}
\rfoot{\thepage  / \pageref{LastPage}}
\lfoot{#1}
\cfoot{\titre}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}

\ThisLRCornerWallPaper{1}{../../../images/Fond-Gris.jpg}
	\centering %Centraliser le contenu
	\includegraphics[width=1\textwidth]{../../../images/rhoban_logo.pdf}\par %Insertion du logo
	%\vspace{0.5cm} 
	{\scshape \Huge Robot Soccer Kit \par} %Robot Soccer Kit
	\vspace{1cm}%Espace de 1cm
	{\scshape \LARGE Livret de l'Éleve \par}
	\vspace{1cm}%Espace de 1cm
	{ \Large {\scshape Matière :} \matiere \par} % Matière
	\vspace{1cm}%Espace de 1cm
	{ \Large {\scshape Classe :} \classe \par} % Classe
	\vspace{1cm}%Espace de 1cm
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
	{\huge\bfseries \titre \par}
	\vspace{0.4cm}
    \rule{\linewidth}{0.2 mm} \\[1 cm]
	\vspace{0.5cm}%Espace de 0.5cm
    

	{\scshape Clément GASPARD \par}
	{\scshape LaBRI - DART - Rhoban \par}
	{\scshape \textit{University of Bordeaux} \par}
	{\scshape Bordeaux, France \par}
	{clement.gaspard@u-bordeaux.fr \par}
    
	\vfill
	{\large Version : \today\par} %Affichage de la date

\end{titlepage}
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{
\begin{figure}[h!]
\centering
\includegraphics[width=#2]{images/#1}
\caption{#3}
\label{#4}
\end{figure}
}

\newcommand{\reference}[1]{
    \textsc{Figure} \ref{#1}
}