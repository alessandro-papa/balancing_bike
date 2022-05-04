function emlPlotVerticalLine( x_position )
    hold on;
    yl = ylim;
    h  = plot([x_position, x_position], yl, '--', 'LineWidth', 1.5, 'Color', [0.2, 0.2, 0.2]);
    % uistack(h, 'bottom');
    hold off;
end

