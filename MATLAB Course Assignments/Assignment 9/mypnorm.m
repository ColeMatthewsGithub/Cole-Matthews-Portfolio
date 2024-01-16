%mypnorm.m - A function to determine the P-norm of any vector using any p-value.
%
%Cole Matthews
%AE 227 - Engineering Digital Computation
%4/1/2023

function pnorm = mypnorm(A,p)

if p == inf
	pnorm = max(abs(A));
else
	pnorm = (sum(abs(A).^p)^1/p);
end
end