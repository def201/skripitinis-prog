%% LD2
clc; clear;

%% 1 uzduotis
a = 5:2:34
b = exp(a)
c = a ./ b
d = c'

%% 2 uzduotis
A = [pi/2 3i; log(2) 2*pi]
B = [exp(A(1,1)) exp(A(1,2))]
C = [A; B]
sumos = sum(C, 2)

%% 3 uzduotis
t = 0:0.005:2;
Amp = 6; f = 2; sigma = 1.5;
U1 = 4; U2 = 2;

s = Amp*cos(2*pi*f*t);
n = sigma*randn(size(t));
sn = s + n;             % signalas su triuksmu

virs = sn(sn > U1);       % a) reiksmes virs U1

sf = sn;
sf(abs(sf) < U2) = 0;   % b) filtravimas

dydis = size(sn)         % c)
kiekis = length(virs)   % d)
didziausia = max(sf)    % e)
maziausia = min(sf)
