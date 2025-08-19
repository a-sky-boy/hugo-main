---
title: 我的笔记示例的
date: 2025-08-21
categories:
  - 笔记
---

function H=H_BHZ(kx,ky)
a=1;
A=-14.48; B=-18; C=-0.018; D=-0.594;
delta=1.2;  M=-2.766;
epsilon=[C-2*D*(2-cos(kx)-cos(ky)) 0;0 C-2*D*(2-cos(kx)-cos(ky)) ];
sigma1=[0 1;1 0]; sigma2=[0 -1i; 1i 0]; sigma3=[1 0;0 -1];
d1=A*sin(kx); d2=A*sin(ky);  d3=-2*B*(2-M/(2*B)-cos(kx)-cos(ky));
H_k=epsilon+d1*sigma1+d2*sigma2+d3*sigma3;
H_add=zeros(4); H_add(1,4)=delta; H_add(2,3)=-delta;
H_add(3,2)=-delta; H_add(4,1)=delta;
H_k1=epsilon-d1*sigma1-d2*sigma2+d3*sigma3;
H_eff=[H_k zeros(2);zeros(2) conj(H_k1)];
H=H_eff+H_add;
end
