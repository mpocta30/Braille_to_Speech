function [fc re]=letters(im_braille)
% Divide text in lines
% im_braille->input image; fc->first line; re->remain line
% Example:
% im_braille=imread('TEST_3.jpg');
% [fc re]=lines(im_braille);
% subplot(3,1,1);imshow(im_braille);title('INPUT IMAGE')
% subplot(3,1,2);imshow(fc);title('FIRST LINE')
% subplot(3,1,3);imshow(re);title('REMAIN LINES')
space_counter = 0;
im_braille=clip(im_braille);
pixel_character_num=size(im_braille,2);
for s=1:pixel_character_num
    if sum(im_braille(:,s))==0 && space_counter >= 10
        nm=im_braille(:, 1:s-1); % First line matrix
        rm=im_braille(:, s:end);% Remain line matrix
        fc = clip(nm);
        re=clip(rm);
        %*-*-*Uncomment lines below to see the result*-*-*-*-
        subplot(2,1,1);imshow(fc);
        subplot(2,1,2);imshow(re);
        break
    elseif sum(im_braille(:,s))==0
        space_counter = space_counter + 1;
    else
        fc=im_braille;%Only one line.
        re=[ ];
    end
end

function img_out=clip(img_in)
[f c]=find(img_in);
img_out=img_in(:,min(c):max(c));%Crops image