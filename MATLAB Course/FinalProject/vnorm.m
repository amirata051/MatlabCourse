function vnorm = vnorm(p1,p2)
syms x
vnorm=simplify(vpa(sqrt((diff(poly2sym(p1),x)).^2+(diff(poly2sym(p2),x)).^2),2))

end