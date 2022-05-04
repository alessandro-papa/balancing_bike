function emlPlot(x,y, lineWidth, colorIndex)
    colorCell = emlColorCell();
    plot(x, y, 'LineWidth', lineWidth, 'Color', colorCell{colorIndex}); grid on;
end

