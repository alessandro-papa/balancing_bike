function emlMagBode(sys, lineWidth, color, w)
    [m,p] = bode(sys, w);
    semilogx(w/2/pi, squeeze(db(m)), 'LineWidth', lineWidth, 'Color', color);
    emlXLabel('frequency [hz]');
    emlYLabel('magnitude [db]');
    grid on;
end

