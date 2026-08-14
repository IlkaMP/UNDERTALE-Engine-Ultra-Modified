startl = length - sinprod
if tri
	sinprod = (abs((((siner*sinint)-sinoff)%4)-2)-1)*sinmult;
else
	sinprod = sin((siner*sinint)-sinoff)*sinmult;
length = startl + sinprod