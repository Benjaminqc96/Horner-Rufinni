function q=horn(fu, xo)
a=sym2poly(fu);
b(1)=a(1);
for j=2:length(a)-1
 b(j)=a(j)+(b(j-1)*xo);   
end
c=poly2sym(b);
q=c;
end