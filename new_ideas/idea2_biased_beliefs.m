 \documentclass[12pt]{article}
\usepackage{amsfonts}
\usepackage{eurosym}
\usepackage{geometry}
\usepackage{amsmath,amsthm,amssymb}
\usepackage{graphicx}
\usepackage{comment}
\usepackage[utf8]{inputenc}
\usepackage{setspace}
%\usepackage[sort,comma]{natbib}
\usepackage[backend=biber, style = apa]{biblatex}
\usepackage{placeins} % to separate sections

\usepackage{adjustbox}
\usepackage{array}
\usepackage{multirow}
\usepackage{graphicx}
\usepackage{subcaption}
\usepackage{pifont}
\usepackage{amssymb}
\usepackage{comment}
 
\usepackage[hang, flushmargin, bottom]{footmisc}
\usepackage{hyperref}

\usepackage{footnotebackref}
\usepackage{xcolor}
\usepackage{booktabs}
\usepackage{pifont}
\usepackage{caption}
\usepackage{float}
\setlength{\marginparwidth}{2cm} 

\usepackage{todonotes}
\setcounter{MaxMatrixCols}{10}
%TCIDATA{OutputFilter=LATEX.DLL}
%TCIDATA{Version=5.50.0.2960}
%TCIDATA{<META NAME="SaveForMode" CONTENT="1">}
%TCIDATA{BibliographyScheme=BibTeX}
%TCIDATA{LastRevised=Sunday, April 28, 2024 18:12:38}
%TCIDATA{<META NAME="GraphicsSave" CONTENT="32">}
%TCIDATA{Language=American English}

%\setlength{\bibsep}{0.3pt}
\setlength{\textfloatsep}{5pt}
\hypersetup{breaklinks=true,hypertexnames=false,colorlinks=true,citecolor = teal}
\captionsetup{font=normalsize}
\newcommand{\cmark}{\ding{51}}
\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}
\renewcommand{\thetable}{\Roman{table}}
\geometry{verbose,tmargin=.9in,bmargin=1in,lmargin=1in,rmargin=.9in,nomarginpar}
\makeatletter

\DeclareTextSymbolDefault{\textquotedbl}{T1}
\theoremstyle{plain}
\newtheorem{thm}{Theorem}%[section] commented out to avoid numbering by section
\newtheorem{prop}[thm]{Proposition}
\newtheorem{ass}[thm]{Assumption}
\newtheorem{lemma}[thm]{Lemma}
\newtheorem{theorem}[thm]{Theorem}   % alias for \begin{theorem}
\newtheorem{definition}{Definition}
\makeatother



\newcommand{\sepline}{\par\bigskip\noindent\rule{\linewidth}{0.4pt}\par\medskip}

% \input{tcilatex}
\usepackage{enumitem} % allows custom labels
\usepackage{tikz}
\usetikzlibrary{shapes.geometric, arrows, positioning}

\addbibresource{../references.bib}
\begin{document}
 
\title{\Large Search and Leverage: With an Empirical Application to the Chilean Annuities Market\thanks{We thank...}}
\author{Lucas Schmitz\thanks{Yale University (email: \texttt{lucas.schmitz@yale.edu}). Corresponding author.} \,\,\,\,\,\, and \,\,\,\,\,\, Diego Cussen\thanks{New York University (email: \texttt{dc5004@nyu.edu}).}} 
\date{\today}
\maketitle
 

 


There is this story where people have private information about their risk and there is selection into the market. But I highly doubt that people actually can select into the market based on their risk type. My prior is that people have private information about their risk but actually do not use it correctly to choose the most convenient products. 

To prove the point we would need to show that people do not use private information as much as they should, hence we would need to observe private information. I think Chile is a good setting since we could merge the annuities data with health records. 

This would go in the same line as \textcite{handel_adverse_2013} that shows that inertia decreases adverse selection, because people are not choosing optimally. In this case it would be similar in the sense that people are just not using their private information to choose the best product. 


\textbf{Empirical strategy}

We can follow the annuities literature and estimate a model of annuities choice with private information, but in our setting we would have access to part of the private information (health records). Using this, we can use a mortality model to estimate the mortality risk given our observed health records, and given the estimated mortality model we can compute the effect o


For example consider that firms observe the covariates $x$ and consumers observe $x$ and $y$. Denote by $\mu_t(x,y)$ the probability an individual dies at age t $x$ and $y$ and by $\mu(x)$ the probability conditional only on $x$.
Denote by $S(t|x,y)$ and $S(t|x)$ the corresponding survival functions.


Consider a demand for annuities that depends on the expected mortality risk. Which we can microfound. For example the utility of an annuity could be: 
\begin{equation}
    U = \mathbb{E}_T\left[\int_0^{T} e^{-\delta t} c_t^\alpha dt \right] = \int_0^\infty e^{-\delta t} S(t|x,y) c_t^\alpha dt
\end{equation}

We assume that firms only observe $x$, individuals observe $x$ and $y$ and the econometrician also observes $x$ and $y$.

Individuals face a choice set $\mathcal{C}$ of annuities contracts with different guaranteed periods and prices. We observe the choice of annuity $j \in \mathcal{C}$ that maximizes their utility given their information:


\textbf{Identification argument}

Given that firms observe only $x$, the choice set $\mathcal{C}$ depends only on $x$, variation in prices and average choices across different $x$ allows us to identify the 


Hence the choice of annuity $j$ reveals information about $y$ since individuals choose the annuity that maximizes their utility given their information $(x,y)$ over the choice set $\mathcal{C}(x)$.

Identification issue: if individuals are bad at translating their information ($x,y$) into mortality beliefs, then we cannot identify the model. 

\begin{itemize}
    \item Note that here the data from SCOMP is not better than the medicare data, it seems unlikely that no researcher has tried to estimate this behavioral bias before. 
\end{itemize}

\newpage


\subsection*{Two-period model with distorted survival beliefs}

\paragraph{1. Environment.}

Time is $t=1,2$. Each individual has initial wealth (savings) $W=0$ at $t=1$.

\begin{itemize}
    \item True probability of being alive at $t=2$ is $x\in(0,1)$.
    \item Individual beliefs about survival are distorted: the perceived survival probability is
    \[
        \hat x \equiv \theta x,
    \]
    where $\theta>0$ and $\theta=1$ corresponds to rational beliefs.
    \item Period utility from consumption is
    \[
        u(c) = c^{\alpha}, \qquad \alpha\in(0,1).
    \]
    \item Bequest utility is linear:
    \[
        v(B) = \beta_i B, \qquad \beta_i \ge 0.
    \]
    \item No time discounting.
\end{itemize}

At $t=1$ the individual chooses between:

\begin{enumerate}
    \item Not buying an annuity (self-insuring with savings).
    \item Buying an annuity that pays a fixed amount $F>0$ in each period in which the individual is alive (no bequest from the annuity).
\end{enumerate}

\paragraph{2. No annuity: optimal consumption and expected utility.}

If the individual does not buy the annuity, she chooses savings $s \in [0,W]$ at $t=1$:
\[
    c_1 = W - s.
\]

At $t=2$:
\begin{itemize}
    \item If alive, consumption is $c_2 = s$ and bequest $B=0$.
    \item If dead, consumption is $c_2=0$ and bequest is $B = s$.
\end{itemize}

Given beliefs $\hat x = \theta x$, expected utility from not buying the annuity, for a given $s$, is
\begin{align*}
    U^{N}(s; x,\theta,\beta_i)
    &= u(c_1)
       + \hat x \, u(c_2)
       + (1-\hat x)\, v(B) \\
    &= (W - s)^{\alpha}
       + \theta x \, s^{\alpha}
       + (1-\theta x)\, \beta_i s.
\end{align*}

The individual chooses $s$ to maximize $U^{N}(s; x,\theta,\beta_i)$ subject to $0 \le s \le W$.
Assuming an interior solution $s^\ast \in (0,W)$, the first-order condition is
\begin{align*}
    \frac{\partial U^{N}}{\partial s}
    &= -\alpha (W - s)^{\alpha-1}
       + \theta x \, \alpha s^{\alpha-1}
       + (1-\theta x)\,\beta_i
       \;=\;0.
\end{align*}

Denote the optimal choice by $s^\ast(x,\theta,\beta_i,W)$ (solution to the FOC and bounds).  
Optimal consumptions are then
\[
    c_1^\ast = W - s^\ast, 
    \qquad
    c_2^\ast = s^\ast,
    \qquad
    B^\ast = s^\ast.
\]

The maximal expected utility from not buying the annuity is
\[
    V^{N}(x,\theta,\beta_i,W)
    \;=\;
    (W - s^\ast)^{\alpha}
    + \theta x \, (s^\ast)^{\alpha}
    + (1-\theta x)\, \beta_i s^\ast.
\]

\paragraph{3. Buying the annuity: expected utility.}

If the individual buys the annuity, assume she uses all her wealth $W$ to buy an annuity that pays $F$ in each period she is alive, with no bequest from the annuity and no additional savings.

Then:
\begin{itemize}
    \item At $t=1$: consumption $c_1 = F$.
    \item At $t=2$: if alive, $c_2 = F$ and $B=0$; if dead, $c_2=0$ and $B=0$.
\end{itemize}

Given beliefs $\hat x = \theta x$, expected utility from buying the annuity is
\begin{align*}
    V^{A}(x,\theta)
    &= u(F) + \hat x \, u(F) + (1-\hat x)\, v(0) \\
    &= F^{\alpha} + \theta x \, F^{\alpha} \\
    &= (1 + \theta x)\, F^{\alpha}.
\end{align*}

\paragraph{4. Adoption condition for the annuity.}

The individual buys the annuity if and only if
\[
    V^{A}(x,\theta)
    \;\ge\;
    V^{N}(x,\theta,\beta_i,W),
\]
i.e.
\[
    (1 + \theta x)\, F^{\alpha}
    \;\ge\;
    (W - s^\ast)^{\alpha}
    + \theta x \, (s^\ast)^{\alpha}
    + (1-\theta x)\, \beta_i s^\ast,
\]
where $s^\ast = s^\ast(x,\theta,\beta_i,W)$ solves
\[
    -\alpha (W - s)^{\alpha-1}
    + \theta x \, \alpha s^{\alpha-1}
    + (1-\theta x)\,\beta_i = 0
\]
subject to $0 \le s \le W$.

\newpage 

\subsection*{Identification of $\theta$ and the distribution of $\beta_i$}

\paragraph{Setup.}

Recall the two-period model above. For each individual $i$:

\begin{itemize}
    \item True survival probability from period 1 to 2 is $x_i\in(0,1)$.
    \item Believed survival probability is $\hat x_i = \theta x_i$, with $\theta>0$ and $\theta x_i\in(0,1)$.
    \item Bequest weight $\beta_i$ is heterogeneous with CDF $F_\beta$ on $[0,\infty)$.
    \item Initial wealth $W>0$ and annuity payout $F>0$ are common and observed.
\end{itemize}

The expected utility from buying the annuity is
\[
    U^{A}(x_i,\theta) = (1+\theta x_i)F^\alpha.
\]

The expected utility from not buying the annuity, given bequest weight $\beta_i$, is
\[
    U^{N}(c_1;x_i,\theta,\beta_i) 
    = c_1^\alpha + \theta x_i (W-c_1)^\alpha + (1-\theta x_i)\beta_i (W-c_1),
\]
and the individual chooses $c_1^\ast(x_i,\theta,\beta_i)$ solving the FOC
\[
    \alpha c_1^{\alpha-1} 
    - \alpha \theta x_i (W-c_1)^{\alpha-1}
    - (1-\theta x_i)\beta_i = 0,
\]
with $0\le c_1^\ast\le W$.
Define the optimized no-annuity value
\[
    U^{N,\ast}(x_i,\theta,\beta_i) 
    \equiv U^{N}(c_1^\ast(x_i,\theta,\beta_i);x_i,\theta,\beta_i).
\]

The observed binary choice is
\[
    D_i = 
    \begin{cases}
        1, & \text{if the individual buys the annuity},\\
        0, & \text{otherwise}.
    \end{cases}
\]

We assume that for each $i$, the individual chooses the option with higher (perceived) expected utility:
\[
    D_i = \mathbf 1\!\left\{U^{A}(x_i,\theta)\ge U^{N,\ast}(x_i,\theta,\beta_i)\right\}.
\]

We observe $(x_i,D_i)$ in the data; the primitives of interest are the scalar $\theta$ and the CDF $F_\beta$.

\paragraph{Step 1: Threshold structure in $\beta_i$.}

\begin{lemma}[Single crossing in $\beta_i$]
For any fixed $(x,\theta)$, $U^{A}(x,\theta)$ is independent of $\beta$, and $U^{N,\ast}(x,\theta,\beta)$ is strictly increasing in $\beta$. Hence the difference
\[
    \Delta U(x,\theta,\beta) \equiv U^{A}(x,\theta)-U^{N,\ast}(x,\theta,\beta)
\]
is strictly decreasing in $\beta$.
\end{lemma}

\begin{proof}
By construction, $U^{A}(x,\theta)$ does not depend on $\beta$. In $U^{N}(c_1;x,\theta,\beta)$ the term $(1-\theta x)\beta (W-c_1)$ is strictly increasing in $\beta$ whenever $W-c_1>0$ and $\theta x<1$. Optimization over $c_1$ preserves monotonicity in $\beta$, so $U^{N,\ast}(x,\theta,\beta)$ is increasing in $\beta$. Therefore $\Delta U(x,\theta,\beta)$ is strictly decreasing in $\beta$.
\end{proof}

\begin{corollary}[Threshold rule]
For each $(x,\theta)$ there exists a (possibly infinite) cutoff $\beta^\ast(x;\theta)\in[0,\infty]$ such that
\[
    D_i = 1
    \iff
    \beta_i \le \beta^\ast(x_i;\theta),
\]
i.e.
\[
    \Delta U(x_i,\theta,\beta_i)\ge 0
    \iff
    \beta_i \le \beta^\ast(x_i;\theta).
\]
\end{corollary}

\paragraph{Step 2: Choice probabilities given $(\theta,F_\beta)$.}

Define the conditional annuitization probability
\[
    p(x) \equiv \Pr(D_i=1\mid x_i=x).
\]
Using the threshold result,
\[
    p(x) = \Pr(\beta_i\le \beta^\ast(x;\theta))
         = F_\beta\big(\beta^\ast(x;\theta)\big).
\]
Thus, for any given pair $(\theta,F_\beta)$, the model implies the choice-probability function
\begin{equation}
    p(x;\theta,F_\beta) = F_\beta\big(\beta^\ast(x;\theta)\big).
    \label{eq:prob_function}
\end{equation}

\paragraph{Step 3: Observables and non-identification.}

Assume that from the data we know the function $p(x)$ for all $x$ in the support of $x_i$.\footnote{Formally, we observe the joint distribution of $(x_i,D_i)$, so $p(x)=\Pr(D_i=1\mid x_i=x)$ is identified.}

Equation \eqref{eq:prob_function} shows that the observables pin down only the \emph{composition} of $F_\beta$ with the cutoff function $\beta^\ast(\cdot;\theta)$:
\[
    p(x) = F_\beta\big(\beta^\ast(x;\theta)\big).
\]

We now show that $(\theta,F_\beta)$ is \emph{not} identified from $p(x)$ alone.

\begin{assumption}[Monotonic $\beta^\ast$ in $x$]
For each fixed $\theta>0$, the function $x\mapsto \beta^\ast(x;\theta)$ is strictly monotone and continuous on the support of $x$, hence invertible, with inverse $b\mapsto x^\theta(b)$.
\end{assumption}

\begin{proposition}[Non-identification of $(\theta,F_\beta)$]
Suppose the data are generated by some true pair $(\theta_0,F_\beta^0)$, yielding choice probabilities $p(x) = F_\beta^0(\beta^\ast(x;\theta_0))$.
Then for any alternative $\theta_1>0$ with monotone $\beta^\ast(\cdot;\theta_1)$, there exists a CDF $F_\beta^1$ such that
\[
    p(x) = F_\beta^1\big(\beta^\ast(x;\theta_1)\big)
    \quad\text{for all }x.
\]
Hence $(\theta,F_\beta)$ is not point-identified.
\end{proposition}

\begin{proof}
Fix any $\theta_1>0$ and consider the function $\beta^\ast(x;\theta_1)$.
By monotonicity, it has an inverse $x^{\theta_1}(b)$ satisfying $\beta^\ast(x^{\theta_1}(b);\theta_1)=b$.

Define a new CDF $F_\beta^1$ on the range of $\beta^\ast(\cdot;\theta_1)$ by
\[
    F_\beta^1(b) \equiv p\big(x^{\theta_1}(b)\big), \qquad 
    b\in \mathrm{Range}\big(\beta^\ast(\cdot;\theta_1)\big).
\]
Because $p(\cdot)$ is nondecreasing in $x$ and $x^{\theta_1}(\cdot)$ is monotone in $b$, $F_\beta^1$ is nondecreasing in $b$ and can be completed to a valid CDF on $[0,\infty)$.

Then, for any $x$,
\[
    F_\beta^1\big(\beta^\ast(x;\theta_1)\big)
    = p\big(x^{\theta_1}(\beta^\ast(x;\theta_1))\big)
    = p(x).
\]
Thus the pair $(\theta_1,F_\beta^1)$ generates exactly the same choice probabilities $p(x)$ as the true pair $(\theta_0,F_\beta^0)$.

Therefore the mapping $(\theta,F_\beta)\mapsto p(x)$ is not injective: different pairs $(\theta,F_\beta)$ produce the same observable distribution of $(x_i,D_i)$, so $(\theta,F_\beta)$ is not identified.
\end{proof}

\paragraph{Conclusion.}

In this two-period model with one binary annuitization choice and heterogeneous bequest weights $\beta_i\sim F_\beta$, the observable choice probabilities by risk type $x$ satisfy
\[
    p(x) = F_\beta\big(\beta^\ast(x;\theta)\big),
\]
which depends on $(\theta,F_\beta)$ only through their composition. Without additional structure (e.g.\ parametric restrictions on $F_\beta$, extra product dimensions that shift the cutoff differently for beliefs vs.\ $\beta_i$, or direct information on $\beta_i$), the belief parameter $\theta$ and the distribution $F_\beta$ cannot be separately identified.


\newpage


\sepline

What are the impacts of LTV policies? Some thoughts: 

\begin{itemize}
    \item Poor people can not save enough equity to buy a house. [they are left out]
    \item Housing prices and quantity decrease due to a lower demand 
    \item Risky consumers are screened out of the market 
    \item 
\end{itemize}

\printbibliography

\end{document}