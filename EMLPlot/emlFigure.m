%-------------------------------------------------------------------------%
% 03.04.2017, Michael Meindl                                              %
% Function to create a customized figure.                                 %
%-------------------------------------------------------------------------%
function [ h ] = emlFigure()
    set(0,'defaulttextinterpreter', 'latex');
    figure('WindowState', 'maximized'); h = get(gca);
    h.XLabel.FontSize = 14;
    h.XLabel.FontWeight = 'bold';
    h.YLabel.FontSize = 14;
    h.YLabel.FontWeight = 'bold';
    h.Title.FontSize  = 21;
    h.Title.FontWeight = 'bold';
    h.WindowState = 'maximized';
end

