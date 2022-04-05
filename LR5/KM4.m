function KM4(x_lim,step, x_delta)

stepped= 0;
while (x_delta(end-1)-stepped) > x_lim
    N=[];
    for x = x_delta
        N =[N sin(20*(x+stepped))+sin(23*(x+stepped))];
    end
    x_tmp=[];
    for i=x_delta
        if i < x_lim
            x_tmp = [x_tmp i];
        else
            break;
        end
    end
    plot(x_tmp,N(1:length(x_tmp)))
    drawnow
    stepped = stepped + step;

end
end
%%
%KM4(1,0.01, 0:0.01:5)