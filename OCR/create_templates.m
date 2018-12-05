%CREATE TEMPLATES
%Letter
A=imresize(imread('dataset_1\a.jpg'), [42 24]);B=imresize(imread('dataset_1\b.jpg'), [42 24]);
C=imresize(imread('dataset_1\c.jpg'), [42 24]);D=imresize(imread('dataset_1\d.jpg'), [42 24]);
E=imresize(imread('dataset_1\e.jpg'), [42 24]);F=imresize(imread('dataset_1\f.jpg'), [42 24]);
G=imresize(imread('dataset_1\g.jpg'), [42 24]);H=imresize(imread('dataset_1\h.jpg'), [42 24]);
I=imresize(imread('dataset_1\i.jpg'), [42 24]);J=imresize(imread('dataset_1\j.jpg'), [42 24]);
K=imresize(imread('dataset_1\k.jpg'), [42 24]);L=imresize(imread('dataset_1\l.jpg'), [42 24]);
M=imresize(imread('dataset_1\m.jpg'), [42 24]);N=imresize(imread('dataset_1\n.jpg'), [42 24]);
O=imresize(imread('dataset_1\o.jpg'), [42 24]);P=imresize(imread('dataset_1\p.jpg'), [42 24]);
Q=imresize(imread('dataset_1\q.jpg'), [42 24]);R=imresize(imread('dataset_1\r.jpg'), [42 24]);
S=imresize(imread('dataset_1\s.jpg'), [42 24]);T=imresize(imread('dataset_1\t.jpg'), [42 24]);
U=imresize(imread('dataset_1\u.jpg'), [42 24]);V=imresize(imread('dataset_1\v.jpg'), [42 24]);
W=imresize(imread('dataset_1\w.jpg'), [42 24]);X=imresize(imread('dataset_1\x.jpg'), [42 24]);
Y=imresize(imread('dataset_1\y.jpg'), [42 24]);Z=imresize(imread('dataset_1\z.jpg'), [42 24]);
%Number
% one=imread('dataset_1\1.jpg');  two=imread('dataset_1\2.jpg');
% three=imread('dataset_1\3.jpg');four=imread('dataset_1\4.jpg');
% five=imread('dataset_1\5.jpg'); six=imread('dataset_1\6.jpg');
% seven=imread('dataset_1\7.jpg');eight=imread('dataset_1\8.jpg');
% nine=imread('dataset_1\9.jpg'); zero=imread('dataset_1\0.jpg');
%*-*-*-*-*-*-*-*-*-*-*-
letter=[A B C D E F G H I J K L M...
    N O P Q R S T U V W X Y Z];

letter = rgb2gray(letter);
threshold = graythresh(letter);
letter =~imbinarize(letter,threshold);
% Remove all object containing fewer than 30 pixels
letter = bwareaopen(letter,30);

% number=[one two three four five...
%     six seven eight nine zero];
% character=[letter number];
character=letter;
templates=mat2cell(character,42,[24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24]);
save ('templates','templates')
clear all
