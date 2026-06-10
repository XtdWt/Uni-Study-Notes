== Isometry
\
Angle between vectors:
$ cos(theta) = (u dot v)/(abs(u) dot abs(v)) $
Lines:
$ y = m x + c " or" P Q = lambda v $
Transformation:
A unique (u, v) such that $(u,v) = alpha(x, y)$\
Inverses:
Inverses exist if $alpha$ is a transformation, then,
$ alpha^(-1) = (x(u, v), y(u, v)) $
Translation:
$ tau_(v)(x, y) = (x + v_1, y + v_2) $
Half-Turn:
$ eta_Q (x, y) = (2q_1 - x, 2q_2 - y) $
Isometry:
$ d(P, Q) = d(alpha(P), alpha(Q)) $
Reflection:
$ sigma_l (P) = P' " where" P P' = -2 (Q P - u^(perp)) dot u^(perp) $
Rotation:
$ rho_(P, theta) (P) = mat(cos(theta), -sin(theta); sin(theta), cos(theta)) P $
Fixed Points:
P is a fixed point if for a transformation, $alpha(P) = P$\
Fixed points for known transformations:
- $eta_Q$ -> Q
- $tau_(v)$ -> $emptyset$
- $sigma_l$ -> $l$
- $rho_(Q, theta)$ -> Q
Transalation as reflection:
For PQ connecting lines l and m, and PQ $perp$ m
$ sigma_l sigma_m = tau_(2 P Q) $
Glide Reflection:
A reflection across l followed by a translation of v (or a translation followed by a reflection)
$ gamma_(l, v) = tau_(v)(sigma_(l)) = sigma_(l)(tau_(v)) $
Isometries can be represented as reflections:
Every isometry can be presented by at most 3 reflections
- $i = sigma_(l)(sigma_(l))$
- $sigma_(l) = sigma_(l)$
- $rho_(P, theta) = sigma_(l) (sigma_(m)), " angle between l and m" = theta/2$
- $tau_(v) = sigma_(l) (sigma_(m)), " l and m parallel and vector connect the two is" v/2$
- $gamma_(l, v) = tau_(v)(sigma_(l)) = sigma_(n) (sigma_(m) (sigma_(l)))$
Even and Odd isometries:
Even/Odd if it can be represented by an even/odd number of reflections\
Symmetries:
$alpha$ is a symmetry for a set S if $alpha(S) = S$
The symmetry group of a shape is the set of all $rho$ and $sigma$ that allow the shape to look the same\
== Affine and Projective Geometry
\
Affine Transformation:
An affine transformation has the form $A x + b$. The derivative of an affine transformation is just $A$.\
Orthogonal:
A matrix is said to be orthogonal is $A^(-1) = A^(T)$. An affine transformation is an isometry if and only if its
derivative is orthogonal\
Projective Plane:
A point on the projective plane is represented as $(a : b : c)$ which is equivalent to $(a lambda, b lambda c lambda)$
Euclidean plane is a subset of the projective plane, $forall (a,b) in R^2, (a:b:1) in cal(P)$
Lines in Projective Plane:
A line in the projective plane is $<a:b:c> <=> a lambda x + b lambda y + c lambda z = 0$
$l inter E_1 <=> a x + b y + c = 0 <=> (x:y:1)$
Line at infinity:
$l_(infinity) = <0:0:1>$ equivalent to z = 0
Line in Projective Plane:
Line passing through $P=(p_1, p_2, p_3), Q=(q_1, q_2, q_3)$ is $det(mat(x, y, z; p_1, p_2, p_3; q_1,q_2,q_3))$\
Collineation:
A collineation is a transformation that maps lines to lines. It is represented by a matrix A. With 4 points, P, Q, R, S
and P', Q', R', S' then we there exists a unique collineation that maps each point.\
Polynomials:
degree = sum of highest power, homogenous if all terms are of the same degree\
== Conics
Conics:
A homogenous polynomial of degree 2, F, is called a conic if F(,x,y,z) = 0. Conics have a matrix form of $x^(T) M x = 0$.
Tangent to a Conic:
The tangent line to a conic with matrix M, at point $x_0$ is the line $x_0^(T) M x = 0$. This can either be a line or
just the point p (if the conic is degenerate).\
Transformations of Conics:
If C is a conic and $phi$ is a collineation, then $phi(C)$ is another conic.
Intersection with Euclidean plane:
$C inter l_infinity = emptyset$, point, 2 points if the result is an ellipse, parabola, hyperbola.\

== Graphs
Types of graphs:
- $C_n$ cyclic graphs
- $P_n$ path graphs
- $K_n$ complete graphs
- $K_(n, m)$ complete bipartite graphs
Degree: The degree of a vertex is the number of connected edges\
Vertex Degree Equation: sum of all degrees of every vertex = 2 times the number of edges\
Euler Characteristic of a Graph:
For a graph $G(V, E)$, then the Euler Characteristic is $chi(G) = |V| - |E|$\
Circuits or Cycles:
A circuit is a path that ends at the same index as it starts. A circuit is irreducible if it does not contain the same
vertex more than once.\
Trees:
A tree contains no cycles. A leaf on a tree has degree 1. $chi(T) = 1$ for any tree T.\
Spanning Tree:
A spanning tree of a graph G, contains all vertices of G but forms a tree.\
Eulerian Circuit:
A Eulerian circuit passes every edge exactly once. A graph is Eulerian if and only if every vertex has even degree. A
graph can have a Eulerian path if it has exactly 2 vertices of odd degree. (start, end vectices).

== Surfaces
Euler Characteristic for Surfaces:
$chi(S) = |V| - |E| + |F|$\
Polygonal Decomposition:
A surface can be turned into a word, a sequence of vectors along the surface. Homeomorphic surfaces have the same
polygonal decomposition.\
Connecting Surfaces:
2 surfaces, $S$ and $T$ can be connected with a cylinder. Then we can describe the connected surface as $S hash T$ with the
property that $chi(S hash T) = chi(S) + chi(T) - 2$ (-2 comes from cutting out 2 disks).\
Classification of Surfaces:
A surface S can be defined by $S tilde.equiv S^2 hash hash^d D^2 hash hash^p P^2 hash hash^t T$, which is the standard
form of a surface. That means surfaces are unique for a unique set of (d, p, t) up to homeomorphism. Using a surface in
standard form, we can say $chi(S) = 2 - d - p - 2t$
Graphically, d = number of punctures, t = number of handles, p = number of caps.\
Algorithm for Standard form of Surface:
1. orientable if edges are paired ($a$, reversed $a$), if orientable, p=0, otherwise t=0
2. find number of loops formed by unpaired edges, d = number of loops
3. use Euler characteristic to find p or t
Dual surface: Swap faces and vertices.\
Planar: A graph is planar if it has no subgraph isomorphic to a subdivision of $K_5$ or $K_(3,3)$. A connected planar
graph has a $chi(S) = 2$
