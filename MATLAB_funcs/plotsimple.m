x=-32:0.1:32;
y=zeros(length(x));
for i=1:length(x)
    y(i) = -((0.25)^4)*x(i)*x(i) + 4;
end

plot(x,y);

ylim([0 10]);

set(gca,'XTick',-32:32:32);
set(gca,'XTickLabel',{'-X','0','X'})

set(gca,'YTick',0);
set(gca,'YTickLabel',{'0'});