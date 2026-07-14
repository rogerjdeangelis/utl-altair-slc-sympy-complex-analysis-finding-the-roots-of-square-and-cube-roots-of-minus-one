/* Roots of the square root and cube root of -1, computed with the
   De Moivre nth-root formula documented in section 3a/3c of the post:

       z_k = cos((pi + 2*pi*k)/n) + i*sin((pi + 2*pi*k)/n),  k = 0..n-1

   Each root is then raised back to the nth power (by repeated complex
   multiplication) and checked against the equation the post solves
   symbolically with SymPy:  (a - I*b)**n + 1 = 0. */
data roots;
  length problem $18;
  pi = constant('pi');
  do n = 2 to 3;
    if n = 2 then problem = 'square root of -1';
    else          problem = 'cube root of -1';
    do k = 0 to n - 1;
      theta = (pi + 2*pi*k)/n;
      re = cos(theta);
      im = sin(theta);
      /* clean tiny floating-point noise for display */
      if abs(re) < 1e-12 then re = 0;
      if abs(im) < 1e-12 then im = 0;
      /* raise (re + im*i) to the nth power via repeated complex multiply */
      pr = 1; pim = 0;                 /* running product starts at 1 + 0i */
      do j = 1 to n;
        tr  = pr*re - pim*im;
        ti  = pr*im + pim*re;
        pr  = tr;
        pim = ti;
      end;
      /* z**n + 1 should be 0 + 0i for a genuine root */
      chk_re = pr + 1;
      chk_im = pim;
      solves = (abs(chk_re) < 1e-9 and abs(chk_im) < 1e-9);
      output;
    end;
  end;
  keep problem n k re im solves;
run;

proc print data=roots noobs label;
  label problem='Problem' n='n' k='k' re='Real' im='Imag'
        solves='z**n + 1 = 0 ?';
  format re im 12.9;
  title 'Roots of the square and cube roots of -1, verified against z**n + 1 = 0';
run;
