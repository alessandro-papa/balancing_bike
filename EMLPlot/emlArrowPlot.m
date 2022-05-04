function emlArrowPlot(x,y, LineSpec)
    if(nargin == 3)
        quiver(x(1:end-1), y(1:end-1), x(2:end)-x(1:end-1), y(2:end)-y(1:end-1),LineSpec);
    else
        quiver(x(1:end-1), y(1:end-1), x(2:end)-x(1:end-1), y(2:end)-y(1:end-1),'k')
    end
end

