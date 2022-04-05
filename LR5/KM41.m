function KM4(dx,y)

function Init(xLim=5)
global FP
%	2.1. Разметка и о4истка осей графика
title('') 
axis([xLim -1 1]);
 
%	2.2. Инициализация структуры, описывающей график
FP= struct('axes',cla,'data',[xLim(1) NaN],...
    'xLim',xLim,'yLim',[-1 1]); 
    set(FP.axes,'DrawMode','fast','Color','none',...
    'xLimMode','manual','yLimMode','manual');
FP.line=line(0,NaN,'Erase','none');
end
function ShowNext(dx,y)
global FP

%	3.1. Добавление то4ки к данным графика
x=FP.data(end,1)+dx; FP.data= [FP.data; x y];
title(sprintf('F(%4.2f)= %4.2f',[x y]));

%	3.2. То4ка выходит за оси --> сдвиг графика вправо
if FP.xLim(2) < x
    dx= x-FP.xLim(2);
    FP.xLim= FP.xLim + dx; I=find(FP.data(:,1) < FP.xLim(1));
    FP.data(I,:)=[];
    set(FP.axes,'xLim',FP.xLim); 
end
%	3.3. То4ка оказалась за пределами диапазона по оси Y if y < FP.yLim(1) | FP.yLim(2) < y
end
%	3.4. Вывод очередной то4ки set(FP.line,'xData',FP.data(:,1),'yData',FP.data(:,2)); drawnow
end

%for x=0:0.01:10*pi; KM4(0.1,sin(20*x)+sin(23*x)); pause(0.01); end
