%CREATE TEMPLATES
%Letter
A=imresize(imread('dataset_1\a.jpg'), [62 42]);B=imresize(imread('dataset_1\b.jpg'), [62 42]);
C=imresize(imread('dataset_1\c.jpg'), [62 42]);D=imresize(imread('dataset_1\d.jpg'), [62 42]);
E=imresize(imread('dataset_1\e.jpg'), [62 42]);F=imresize(imread('dataset_1\f.jpg'), [62 42]);
G=imresize(imread('dataset_1\g.jpg'), [62 42]);H=imresize(imread('dataset_1\h.jpg'), [62 42]);
I=imresize(imread('dataset_1\i.jpg'), [62 42]);J=imresize(imread('dataset_1\j.jpg'), [62 42]);
K=imresize(imread('dataset_1\k.jpg'), [62 42]);L=imresize(imread('dataset_1\l.jpg'), [62 42]);
M=imresize(imread('dataset_1\m.jpg'), [62 42]);N=imresize(imread('dataset_1\n.jpg'), [62 42]);
O=imresize(imread('dataset_1\o.jpg'), [62 42]);P=imresize(imread('dataset_1\p.jpg'), [62 42]);
Q=imresize(imread('dataset_1\q.jpg'), [62 42]);R=imresize(imread('dataset_1\r.jpg'), [62 42]);
S=imresize(imread('dataset_1\s.jpg'), [62 42]);T=imresize(imread('dataset_1\t.jpg'), [62 42]);
U=imresize(imread('dataset_1\u.jpg'), [62 42]);V=imresize(imread('dataset_1\v.jpg'), [62 42]);
W=imresize(imread('dataset_1\w.jpg'), [62 42]);X=imresize(imread('dataset_1\x.jpg'), [62 42]);
Y=imresize(imread('dataset_1\y.jpg'), [62 42]);Z=imresize(imread('dataset_1\z.jpg'), [62 42]);
%Number
% one=imread('dataset_1\1.jpg');  two=imread('dataset_1\2.jpg');
% three=imread('dataset_1\3.jpg');four=imread('dataset_1\4.jpg');
% five=imread('dataset_1\5.jpg'); six=imread('dataset_1\6.jpg');
% seven=imread('dataset_1\7.jpg');eight=imread('dataset_1\8.jpg');
% nine=imread('dataset_1\9.jpg'); zero=imread('dataset_1\0.jpg');
%*-*-*-*-*-*-*-*-*-*-*-
letter=[A B C D E F G H I J K L M...
    N O P Q R S T U V W X Y Z];
% number=[one two three four five...
%     six seven eight nine zero];
% character=[letter number];
character=letter;
templates=mat2cell(character,42,[24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24]);
save ('templates','templates')
clear all
