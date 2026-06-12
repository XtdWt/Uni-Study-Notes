#align(center)[= MATH4528: Exam Prep]


== Martingales
=== Question 3
\
Subsets of $F$ or $cal(F)_Omega$ = $2^n$ where n is the number of possible events in $Omega$. \
\
Subsets of $cal(F)_S$ where S is a Random Variable, $S(omega): Omega -> RR$. Here $cal(F)_S = {S^(-1)(B): B in BB(RR)}$. \
\
A Random Variable X, is $cal(F)_S$ measurable if $forall B, X^(-1)(B) in cal(F)_S$. \
\
Finding distribution of $Z = E[X|cal(F)_S]$:
1. find the most finite division of $Omega$.
$ Omega = A union B union C, A inter B inter C = emptyset $
2. determine the form of Z as constant across the subdivisions.
$ Z = cases(
  z_1 "if " A,
  z_2 "if " B,
  z_3 "if " C,
) $
3. calculate each constant.
$ forall A in cal(F)_S, integral_A X d P = integral_A Z d P $
$ integral_A X d P = E[X 1_(A)] = z_a P(A) = integral_A Z d P $
$ z_a = E[X 1_(A)] / P(A) $
This works because since Z is $cal(F)_S$-measurable, then it must be constant under $cal(F)_S$.\
\
=== Question 4
\
For two sigma fields such that $cal(F) subset cal(G)$,
$ E[E[Y|cal(G)]E[Y|cal(F)]] = E[(E[Y|cal(F)])^2] $
we can apply the tower property $E[Z] = E[E[Z|F]]$.
$ E[E[Y|cal(G)]E[Y|cal(F)]] = E{E[E[Y|cal(G)]E[Y|cal(F)] | cal(F)]} $
here the smaller sigma field applies,
$ E[E[Y|cal(G)]E[Y|cal(F)]] = E{E[Y|cal(F)] E[E[Y|cal(G)]|cal(F)]} $
$ E[E[Y|cal(G)]E[Y|cal(F)]] = E{E[Y|cal(F)] E[Y|cal(F)]} $
$ E[E[Y|cal(G)]E[Y|cal(F)]] = E{(E[Y|cal(F)])^2} $
\
Doob's Inequality:
$ P(max_(m<=n) X_m >= lambda) = P(max_(m<=n) X_m + c >= lambda + c) <= P(max_(m<=n) (X_m + c)^2 >= (lambda + c)^2) $
$ P(max_(m<=n) (X_m + c)^2 >= (lambda + c)^2) <= E[(X_n + c)^2] / (lambda + c)^2 $
Optimise for c by finding the derivative equal to zero
$ delta/(delta c) (E[X_n^2] + c^2) / (lambda + c)^2 = 0 -> c = E[X_n^2] / lambda $
\
== Question 5
\
Sequence $X_n$ is a martingale, if $E[X_(n+1)|cal(F)_n] = X_n$.\
Proof uses the fact that $X_n$ is $cal(F)_n$-integrable and that anything $n+1$ is independent of $cal(F)_n$.\
\
For a stopping time $N = inf {n: S_n = 0}$,
$ {S_n <= 0} subset {N <= n} $
which by taking compliments imples
$ {N > n} subset.eq {S_n > 0} $
\
For a stopping time $N = inf {S_n = 0}$, we can say that
$ E[N] <= sum_(n=0)^infinity P(N>n) $
\
If $X_(N and n)$ is uniformly integrable and $N = inf {S_n = 0}$ is a stopping time, then
$ E[X_N] = E[X_0] $
\
== Question 6
\
For a Brownian motion process $B(s)$, if $0<=s<=t$, $E[B(s)B(t)] = s$.\
\
If ${B(s): 0<=s<=t}$ is uniformly continuous, then it has a Riemann sum:
$ integral_0^t B(s) d s = lim_(n -> infinity) t/n sum_(k=1)^n B(t/n k) $
$ X_n := t/n sum_(k=1)^n B(t/n k) $
which implies that $X_n$ is Gaussian, but NOT i.i.d, since each $B(t/n k)$ is dependant, but we can split this up into independent increments.
$ X_n = t/n sum_(k=1)^n sum_(j=1)^k B(t/n j) - B(t/n (j-1)) $
which we can simplify by counting the number of each increment in a grid
$ X_n = t/n sum_(k=1)^n (n - k + 1) [B(t/n k) - B(t/n (k-1))] $
which IS a sum of independant Gaussian random variables, so we can find mean and variance as expected. Follows from the linear combination of i.i.d Normals since,
$ B(t/n k) - B(t/n (k-1)) ~ N(0, t/n) $

== Probability
=== Question 1
\
Borel-Cantelli Lemmas, for a sequence of events ${A_i}_(i>=0)$, \
First Lemma: if $sum_(k=0)^infinity P(A_n) < infinity$, then $P{A_n "infinitely often"} = 0$\
Second Lemma: if $sum_(k=0)^infinity P(A_n) = infinity$, then $P{A_n "infinitely often"} = 1$\
\
Infinitely Often and Eventually: $P{A_n "infinitely often"} = 1 - P{A_n "eventually"}$
\
If $X_(n, m)$ is a triangular array, $accent(X, -)_n := 1/n sum_(m=1)^n X_(n, m)$\
The following are equivalent:
$ P(A_n "infinitely often") = 0 $
$ P(A_n "eventually") = 1 $
$ P(limsup A_n) = 1 $
\
=== Question 2
\
A triangular array $X_(n, k)$ has the condition of Infinite Smallness if for $epsilon > 0$ and for $n -> infinity$
$ max_(k=1, ..., n) P(|X_(n, k)| >= epsilon) -> 0 $
Where it is sufficient to consider the behaviour of $P(|X_(n, k)| >= epsilon) forall k $ as $n -> infinity$\
For a discrete period ${1, ..., n}$, we can split these up into intervals from ${1, ..., n-1}$ and ${2, ..., n}$ forming the Upper and Lower Riemann Sums,
based on whether $f(1)$ or $f(n)$ is larger.
$ "Lower Riemann Sum" <= integral f(x) d x <= "Upper Riemann Sum" $
Lévy spectral function
\
