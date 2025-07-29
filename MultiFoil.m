
%  ____    ____             __     _      _    ________             _    __   
% |_   \  /   _|           [  |   / |_   (_)  |_   __  |           (_)  [  |  
%   |   \/   |    __   _    | |  `| |-'  __     | |_ \_|   .--.    __    | |  
%   | |\  /| |   [  | | |   | |   | |   [  |    |  _|    / .'`\ \ [  |   | |  
%  _| |_\/_| |_   | \_/ |,  | |   | |,   | |   _| |_     | \__. |  | |   | |  
% |_____||_____|  '.__.'_/ [___]  \__/  [___] |_____|     '.__.'  [___] [___]

%% MultiFoil - Multi-Element Airfoil Toolkit
% Copyright © 2025 Michael West. All rights reserved. Usage is permitted
% by CC BY-NC-SA 4.0 (https://creativecommons.org/licenses/by-nc-sa/4.0/)

% Users are advised to indepedently verify all outputs before relying on them 
% in any technical capacity.

% For usage questions or to report bugs contact: mcwest@uci.edu

clear; clc; close


mode = 3; % (2) or (3) element mode

%% TWO ELEMENT PLOTTER
if mode == 2
    % Airfoil Selection
    mainElementName = 'n63012a';
    secondElementName = 'a18sm';

    % Chord Lengths (Dimensionless)
    mainChord = 100;
    secondChord = 100;

    % Angles of Attack (Degrees)
    mainAlpha = 5;
    secondAlpha = 0;

    % Geometry
    slotGap = 10;
    overlap = 10; % Percent of main chord

    % Settings
    export = true;
    plotting = true;

    airfoilPlotter2(mainElementName,secondElementName,mainAlpha, ...
        secondChord,slotGap,secondAlpha,mainChord,overlap,export,plotting);
end

%% THREE ELEMENT PLOTTER
if mode == 3
    % Airfoil Selection
    mainElementName = 'e423';
    secondElementName = 'a18sm';
    thirdElementName = 'goe804';

    % Chord Lengths (Dimensionless)
    mainChord = 400;
    secondChord = 300;
    thirdChord = 200;

    % Angles of Attack (Degrees)
    mainAlpha = 7;
    secondAlpha = 19;
    thirdAlpha = 30;

    % Geometry
    slotGap1 = 10;
    slotGap2 = 10;
    overlap1 = 25; % Percent of main chord
    overlap2 = 5; % Percent of main chord

    % Settings
    export = true;
    plotting = true;

    airfoilPlotter3(mainElementName,secondElementName,thirdElementName, ...
        mainAlpha, secondChord, slotGap1, secondAlpha, ...
        thirdChord, slotGap2, thirdAlpha, ...
        mainChord, overlap1, overlap2, export, plotting);

end

if mode ~= 2 && mode ~=3
    error('Invalid Mode Selection')
end