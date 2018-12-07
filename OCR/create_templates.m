%CREATE TEMPLATES
%Letter
A=imcomplement(bwareaopen(imresize(imread('dataset_1\a.jpg'), [42 24]), 30));
B=imcomplement(bwareaopen(imresize(imread('dataset_1\b.jpg'), [42 24]), 30));
C=imcomplement(bwareaopen(imresize(imread('dataset_1\c.jpg'), [42 24]), 30));
D=imcomplement(bwareaopen(imresize(imread('dataset_1\d.jpg'), [42 24]), 30));
E=imcomplement(bwareaopen(imresize(imread('dataset_1\e.jpg'), [42 24]), 30));
F=imcomplement(bwareaopen(imresize(imread('dataset_1\f.jpg'), [42 24]), 30));
G=imcomplement(bwareaopen(imresize(imread('dataset_1\g.jpg'), [42 24]), 30));
H=imcomplement(bwareaopen(imresize(imread('dataset_1\h.jpg'), [42 24]), 30));
I=imcomplement(bwareaopen(imresize(imread('dataset_1\i.jpg'), [42 24]), 30));
J=imcomplement(bwareaopen(imresize(imread('dataset_1\j.jpg'), [42 24]), 30));
K=imcomplement(bwareaopen(imresize(imread('dataset_1\k.jpg'), [42 24]), 30));
L=imcomplement(bwareaopen(imresize(imread('dataset_1\l.jpg'), [42 24]), 30));
M=imcomplement(bwareaopen(imresize(imread('dataset_1\m.jpg'), [42 24]), 30));
N=imcomplement(bwareaopen(imresize(imread('dataset_1\n.jpg'), [42 24]), 30));
O=imcomplement(bwareaopen(imresize(imread('dataset_1\o.jpg'), [42 24]), 30));
P=imcomplement(bwareaopen(imresize(imread('dataset_1\p.jpg'), [42 24]), 30));
Q=imcomplement(bwareaopen(imresize(imread('dataset_1\q.jpg'), [42 24]), 30));
R=imcomplement(bwareaopen(imresize(imread('dataset_1\r.jpg'), [42 24]), 30));
S=imcomplement(bwareaopen(imresize(imread('dataset_1\s.jpg'), [42 24]), 30));
T=imcomplement(bwareaopen(imresize(imread('dataset_1\t.jpg'), [42 24]), 30));
U=imcomplement(bwareaopen(imresize(imread('dataset_1\u.jpg'), [42 24]), 30));
V=imcomplement(bwareaopen(imresize(imread('dataset_1\v.jpg'), [42 24]), 30));
W=imcomplement(bwareaopen(imresize(imread('dataset_1\w.jpg'), [42 24]), 30));
X=imcomplement(bwareaopen(imresize(imread('dataset_1\x.jpg'), [42 24]), 30));
Y=imcomplement(bwareaopen(imresize(imread('dataset_1\y.jpg'), [42 24]), 30));
Z=imcomplement(bwareaopen(imresize(imread('dataset_1\z.jpg'), [42 24]), 30));
%Number
% one=imread('dataset_1\1.jpg');  two=imread('dataset_1\2.jpg');
% three=imread('dataset_1\3.jpg');four=imread('dataset_1\4.jpg');
% five=imread('dataset_1\5.jpg'); six=imread('dataset_1\6.jpg');
% seven=imread('dataset_1\7.jpg');eight=imread('dataset_1\8.jpg');
% nine=imread('dataset_1\9.jpg'); zero=imread('dataset_1\0.jpg');

%*-*-*-*-*-*-*-*-*-*-*-
letter=[A B C D E F G H I J K L M...
    N O P Q R S T U V W X Y Z];

imshow(letter);
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
