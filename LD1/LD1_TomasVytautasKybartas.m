clear all
clc

% Tomas Vytautas Kybartas, EIF-25, 2026-09-14

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]  |  F_2 [-x-]')

%% Dokumentacijos paieska (8 punkt.)
help sin
doc plot
docsearch title

%% Dokumentacijos paieska (9 punkt.)
doc linspace
help size
docsearch max

%% Papildoma uzduotis

N = 1

v = N+1 : 0.5 : N+4

A = reshape(N:N+8, 3, 3)

a_sel = A(3, 2)
b_sel = A(2:3, 1:2)
c_sel = A([1 3], [1 3])

A_su_v = [A; v(1:3)]