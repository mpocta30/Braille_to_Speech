% OCR (Optical Character Recognition).
% Author: Ing. Diego Barrag�n Guerrero 
% e-mail: diego@matpic.com
% For more information, visit: www.matpic.com
%________________________________________
% PRINCIPAL PROGRAM
warning off %#ok<WNOFF>
% Clear all
clear; clc; close all; 

% OPTIONS: 
% setting show_images to 1 will display the found braille letters as images
show_images = 1; 
% setting test_mode to 1 will not make the text-to-speech API call, it will
% only write the result to the text.txt file 
test_mode = 0; 

% Read image
imagen=imread('b2.png');
%imagen=imrotate(imagen, -90);
% Show image
%imshow(imagen);
title('INPUT IMAGE WITH NOISE')
% Convert to gray scale
if size(imagen,3)==3 %RGB image
    imagen=rgb2gray(imagen);
    % Convert to BW
    threshold = graythresh(imagen);
    imagen = imbinarize(imagen,threshold);
    if show_images == 1
        imshow(imagen);
    end 
end
% Remove all object containing fewer than 30 pixels
%imshow(imagen);pause(0.5);
title('BINARIZED INPUT IMAGE')
imagen = imcomplement(imagen);
imagen = bwareaopen(imagen,20);
if show_images == 1
    imshow(imagen);pause(1);
end
%Storage matrix word from image
word=[ ];
re_line=imagen;
%Opens text.txt as file for write
fid = fopen('text.txt', 'wt');
% Load templates
load templates
global templates
% Compute the number of letters in template file
num_letras=size(templates,2);
while 1
    %Fcn 'lines' separate lines in text
    [fl re_line]=lines(re_line);
    imgn=fl;
    re_letter=imgn;
    %Uncomment line below to see lines one by one
    if show_images == 1
        imshow(fl);pause(0.5)  
    end 
    %-----------------------------------------------------------------     
    % Label and count connected components
    while 1
%         [r,c] = find(L==n);
%         % Extract letter
%         n1=imgn(min(r):max(r),min(c):max(c));
        [fc re_letter]=letters(re_letter);
        %imshow(fc);pause(2);
        % Resize letter (same size of template)
        img_r=imresize(fc,[42 24]);
        %Uncomment line below to see letters one by one
        if show_images == 1
            imshow(img_r);pause(0.5)
        end
        %-------------------------------------------------------------------
        % Call fcn to convert image to text
        letter=read_letter(img_r,num_letras);
        % Letter concatenation
        word=[word letter];
        if isempty(re_letter)  %See variable 're_letter' in Fcn 'letters'
            break
        end
    end
    %fprintf(fid,'%s\n',lower(word));%Write 'word' in text file (lower)
    fprintf(fid,'%s\n',word);%Write 'word' in text file (upper)
    % Clear 'word' variable
    word=[ ];
    %*When the sentences finish, breaks the loop
    if isempty(re_line)  %See variable 're' in Fcn 'lines'
        break
    end    
end
fclose(fid);
%Open 'text.txt' file
winopen('text.txt')
if ispc
    sysCommand = 'python bridge.py';
elseif isunix
    sysCommand = 'python3 brdige.py';
else 
    fprintf('Operating system may not be supported, play answer.wav manually'); 
end 
if test_mode ~= 1 
    [status, res] = system(sysCommand); 
end 
fprintf('For more information, visit: <a href= "http://www.matpic.com">www.matpic.com </a> \n')
