function r=newhor(fu,xo)
w(1)=xo;
control=true;
while(control)
    for i=1:30
     w(i+1)=w(i)-((subs(fu,w(i))/(subs(horn(fu, w(i)),w(i)))));
     disp(w(i))
     disp(horn(fu, w(i)))
     plot(w(i),subs(fu,w(i)),'o')
if w(i)==w(i+1)
    r=w(i+1);
    control=false;
    break
elseif 1==30
    r=0;
    control=false;
    break
end

    end
end
hold off
end