#set page(margin: 3pt, columns: 2)
#align(center)[= Advanced Methods in Applied Mathematics]

== Algebraic Equations & asymptotics
estimate behaviour using assumption that $epsilon -> 0$
$ x^2 - epsilon x - 1 = 0 ~ x^2 - 1 = 0 $
Our estimation is done by guessing $x = x_0 + epsilon x_1 + epsilon^2 x_2 + ...$ and substituting to solve
for each $x_i$. \
However a big assumption we are making is that the form of our answer for $x$ is correct. sometimes we need $epsilon^(1/2)$ terms etc... to get correct form for the solution. \
Seeing a contradiction in the algebra likely means the initial form was incorrect.\
Another way to fix the problem of guessing the correct form is to rescale. The steps are:
1. find dominate balance by equating terms for $x$
2. determine which 2 terms are dominant (large for when $epsilon ->0$)
3. apply rescaling and solving using asymptotics

== Properties of Asymptotics and Differntial Equations
radius of convergence:
$ R = lim_(n->infinity) |a_n / a_(n+1)| $
Asymptoticity: a sequence $f_n(epsilon)$ is asymptotic if
$ (f_(n+1) (epsilon)) / (f_n (epsilon)) -> 0 "as" epsilon -> 0, forall n $
A series is an asymptotic approximation of a function $f(epsilon)$ if as $epsilon ->0$ and for all $N >= 0$
$ (f(epsilon) - sum f_n (epsilon)) / (f_N (epsilon)) -> 0 "as" epsilon -> 0 $
Big-O notation: largest order behaviour, as $epsilon -> 0$, we can cap an asymptotic solution at $O(epsilon^N)$.\
ODEs - Regular peturbation methods: we can apply this technique to ODEs, by substituting the following into the differential equation
$ y(x) ~ y_0 (x) + epsilon y_1 (x) + epsilon^2 y_2 (x) + ... $
initial conditions are then found using
$ y(a) = b ~ y(a) = y_0 (a) + epsilon y_1 (a) + epsilon^2 y_2 (a) + ... $
$ y_0 (a) = b, y_1(a) = 0, y_2(a) = 0, ... $

== Matched Asymptotic Expansions
problem: our solution cannot satisfy both boundary conditions.\
We can solve this by apply a boundary layer, by apply rescalings at each of the two endpoints.\
steps:
1. Rescaling to ODE, let $x = epsilon^alpha eta$ and $y(x) = Y(eta)$
$ d / (d x) = (d eta) / (d x) d / (d eta) = epsilon^(-alpha) d / (d eta) $
2. Work out new dominate balance, equating terms for different values of $alpha$
3. apply rescaled $Y(eta)$ to ODE
4. match the two boundaries,
$ lim_(eta -> infinity) Y_0 (eta) = lim_(x -> 0) y_0 (x) $

Composite solution: $y(x) ~ y_0 (x) + Y_0 (eta) - y_"overlap"$ where  $y_"overlap"$ is either limit but this doesn't always work.\

Van Dyke's Matching Principle tells us we need\
(m terms inner) (n terms outer) = (n terms outer) (m terms inner)
1.  n term outer for $y(x)$
2. apply $x = epsilon eta$
3. expand to m terms
4. then do the opposite to equate
e.g. find $y(eta) = Y(x)$ and find both in terms of the same variable before equating.

== Method of Multiple Scales
ODE: $y'' + omega^2 y = 0$ has the solution $y= A sin(omega t) + B cos(omega t)$\
Trig identities:
- $sin^2 (theta) = 1/2 - 1/2 cos(2 theta)$
- $cos^2 (theta) = 1/2 + 1/2 sin(2 theta)$
- $sin theta cos theta = 1/2 sin(2 theta)$
Method of multiple scales:
1. let $tau = t$ and $T = epsilon t$
2. convert $y(t)$ to $Y(tau, T)$, $d/(d t) -> delta / (delta tau) + epsilon delta / (delta T)$
3. solve a $y'' + omega^2 y = 0$ ODE at $epsilon^0$ level with general solution
4. solve the next level $epsilon^1$ level to solve for $A(T), B(T)$ setting secularity conditions to zero
we can also set $y_0 = A(T) e^(i tau) + A^*(T) e^(-i tau)$ where
$ A(T) = R(T) e^(i theta(T)), A^*(T) = R(T) e^(-i theta(T)) $
In this case, our secularity condition is at $e^(i tau)$ and $e^(-i tau)$ and solved by setting both real and imaginary parts to zero.

== WKB Analysis
ODE: $epsilon^2 y'' + q(x) y = 0$, where $q(x) != 0$ general solution
$ y = A(x; epsilon) e^(f(x) / epsilon^alpha) $
$ A(x; epsilon) ~ A_0 (x) + epsilon A_1 (x) + epsilon^2 A_2 (x) + ... $
General Solution if $q(x) > 0$:
$ C_1/q^(1/4) e^(i/epsilon integral sqrt(q) d x) + C_2/q^(1/4) e^(-i/epsilon integral sqrt(q) d x) $
General Solution if $q(x) < 0$ removing growing exponential components:
$ C_1/q^(1/4) e^(1/epsilon integral sqrt(q) d x) + C_2/q^(1/4) e^(-1/epsilon integral sqrt(q) d x) $
we can get more correction at $epsilon^(n+1)$ with
$ f'' A_n + 2 f' A_n ' + A_(n-1) '' $
$ A_n = - 1/(2 (f')^(1/2)) integral (A_(n-1) '')/((f') ^(1/2)) d x $
What if $q(x) = 0$ (turning point)?

== Asymptotic Expansions for Integrals, Laplace's Method
Complex functions: $f(z) = f(x + y i) = u(x, y) + i v(x, y)$
Cauchy-Riemann Equations, hold if and only if $f$ is differentiable:
$ (delta u) / (delta x) = (delta v) / (delta y), (delta v) / (delta x) = - (delta u) / (delta y) $
Contour integration: choose path to follow, e.g. $z = -1 + i y$ along $x=-1$ path
If a pole exists within our region, then we should use Residue formula.\
Assuming g has N poles at $z=z_j$ then where k is the order of the pole (generally k=1)
$ integral.cont_C g(z) d z = 2 pi i sum_(j=1)^N "Res"_(z=z_j) g(z) $
$ "Res"_(z=z_0) g(z) = 1/(k-1)! lim_(z->z_0) d^(k-1) / (d z^(k-1)) (z-z_0)^k g(z) $
Gamma function, $integral_0^infinity t^(z-1) e^(-t) d t = Gamma(z) = (z-1)!$

== Laplace's Method
$I(x) = integral_a^b f(t) e^(x g(t)) d t$
- $g'(t) < 0 "on" [a, b]$, expand f, g around a
- $g'(t) > 0 "on" [a, b]$, expand f, g around b
- $g'(t) = 0 "on" [a, b]$, if $g'(c) = 0$, expand f, g around c
Express integral as $I(x) ~ integral_(a+delta)^(b-delta) tilde(f) (t) e^(x tilde(g) (t)) d t$ depending on boundary $delta$ will change\
With multiple contributions, we expand around both depending on the behaviour. Consider all local maxima of g(t)\
When we expand, we always need at least 1 non-constant term for g(t)\

== Watson's Lemma
$I(x) = integral_0^b f(t) e^(-x t) d t$ for $b > 0$ where f is continuous on $[0, b]$ and f(t) has the asymptotic expansion
$ f(t) ~ t^alpha sum_(n=0)^(infinity) a_n t^(beta_n) "as" t -> 0^+ $
$ I(x) ~ sum_(n=0)^(infinity) (alpha_n Gamma(alpha + beta_n + 1)) / (x^(alpha + beta_n + 1)) $

== Stationary Phase
$I(x) = integral_a^b f(t) e^(i x psi(t)) d t$ expanded around $t_0$ where $psi'(t_0) = 0$
General solution for $psi'(t_0) = 0 in [a, b]$
$ I(x) ~ f(t_0) (2 / (- x i psi''(t_0)) )^(1/2) e^(i x psi(t_0)), psi''(t_0) > 0 $
If there are no stationary points, we use the end points and end-point expansion
$ D = f(t), I = e^(i x g(t)) $
$ i/x (...) + -1/x^2 (...) + O(1/x^3) $
If end point is stationary  we take half the stationary point formula.\
Rule of thumb for deforming, if $psi(t) = t^beta$ then a deformation of $e^((pi i) / (2 beta))$ will always work.\
Then let $t = u e^((i pi) / (2 beta))$ to apply deformation.\

== Steepest Descent
