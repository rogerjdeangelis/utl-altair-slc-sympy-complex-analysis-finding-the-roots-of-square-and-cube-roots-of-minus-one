/* Square root of -1 by matching real and imaginary parts -- the algebraic
   derivation in section 3b of the post.

   Expanding the form the post uses, (a - b*i)**2, gives

       (a - b*i)**2 = (a**2 - b**2) - (2*a*b)*i

   Setting this equal to -1 + 0i splits into two real equations:

       real:  a**2 - b**2 = -1
       imag:  2*a*b       =  0   ->  a = 0  or  b = 0

   Taking a = 0 leaves -b**2 = -1, so b = +/-1, and the post's root form
   (a - b*i) then gives -/+ i.  The step below evaluates both parts to show
   they land on -1 + 0i, and reports the resulting root. */
data solve_alg;
  a = 0;                       /* forced by the imaginary equation 2*a*b = 0 */
  do b = -1, 1;                /* from a**2 - b**2 = -1 with a = 0 */
    real_part = a**2 - b**2;   /* expect -1 */
    imag_part = -2*a*b;        /* expect  0 */
    /* the post writes the root as (a - b*i) */
    root_re = a;
    root_im = -b;
    output;
  end;
  keep a b real_part imag_part root_re root_im;
run;

proc print data=solve_alg noobs label;
  label a='a' b='b'
        real_part='Re[(a-bi)**2]' imag_part='Im[(a-bi)**2]'
        root_re='Re[root]' root_im='Im[root]';
  title 'Square root of -1 by matching real and imaginary parts (algebraic, section 3b)';
run;
