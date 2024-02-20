% pset1.m
% Coywrite (C) 2024 Noam Schuck <noam.schuck@gmail.com>

clc;
clear;
close all;

syms k;

fig = figure;
N = 0:10;
guesses = zeros(1,11);

for i = 0:10
    guesses(i+1) = symsum(26^k,k,1,10-i)/2;
end

semilogy(N, guesses);
title('Likely Amount of Password Guesses for Number Letters Known');
grid on;

saveas(fig, 'pset1.png');
