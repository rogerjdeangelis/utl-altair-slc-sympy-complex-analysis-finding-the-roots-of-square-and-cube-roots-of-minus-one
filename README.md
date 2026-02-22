# utl-altair-slc-sympy-complex-analysis-finding-the-roots-of-square-and-cube-roots-of-minus-one
Altair slc sympy complex analysis finding the roots of square and cube roots of minus one
    %let pgm=utl-altair-slc-sympy-complex-analysis-finding-the-roots-of-square-and-cube-roots-of-minus-one;

    %stop_submission;

    Altair slc sympy complex analysis finding the roots of square and cube roots of minus one

    This post presents some vary basic poperties of complex analysis.

    Too long to post on a list, see github
    https://github.com/rogerjdeangelis/utl-altair-slc-sympy-complex-analysis-finding-the-roots-of-square-and-cube-roots-of-minus-one

    Comple analysis is very useful in

      quantum mechanics,
      fluid dynamics
      signal processing
      circuit design
      electromagnetism (maxwells equations)
      wave proagation (antenna design)
      schrödinger equation
      not to mention integral and differetial calculus

        CONTENTS

          1 sympy roots of square root of -1
          2 sympy roots of cube root of -1
          3 roots of square root of -1
            a de moives theorem
            b algebraic
            c euler formula

    Interesting thread
    https://chat.deepseek.com/a/chat/s/fadc7325-2630-478e-89f6-cd46984650f4

    /*                                                    _               __                                                  _            _     _
    / |  ___ _   _ _ __ ___  _ __  _   _  _ __ ___   ___ | |_ ___   ___  / _| ___  __ _ _   _  __ _ _ __ ___  _ __ ___   ___ | |_   ___  / _|   / |
    | | / __| | | | `_ ` _ \| `_ \| | | || `__/ _ \ / _ \| __/ __| / _ \| |_ / __|/ _` | | | |/ _` | `__/ _ \| `__/ _ \ / _ \| __| / _ \| |_  __| |
    | | \__ \ |_| | | | | | | |_) | |_| || | | (_) | (_) | |_\__ \| (_) |  _|\__ \ (_| | |_| | (_| | | |  __/| | | (_) | (_) | |_ | (_) |  _||__| |
    |_| |___/\__, |_| |_| |_| .__/ \__, ||_|  \___/ \___/ \__|___/ \___/|_|  |___/\__, |\__,_|\__,_|_|  \___||_|  \___/ \___/ \__| \___/|_|     |_|
             |___/          |_|    |___/                                             |_|
    */

    /*--- A ROOTS OF SQUARE ROOT OF MINUS 1 ---*/

                                               2                          2
    /*--- roots of square root of i -> (a + bi)  = -1 o0> rotts on (a + bi)  + 1 + 0i ---*/
    /* I am usig a - bi because this covers all reals and imaginaries an is required when spliting real and ommaginary parts ---*/

    %slc_pybegin;
    cards4;
    from sympy import *
    a, b = symbols('a b', real=True)
    sol = solve((a-I*b)**2 + 1, (a, b))
    print(sol)
    ;;;;
    %slc_pyend;


    Altair SLC Complex Solution

    (a,b) = [(0, -1), (0, 1)]

    0 + -1i = -i
    0 + +1i = +i

    Solution)roots) to

    (a-I*b)**2 + 1 = 0

    is +/-i

    /*___                                                     _               __             _                           _            _     _
    |___ \   ___ _   _ _ __ ___  _ __  _   _  _ __ ___   ___ | |_ ___   ___  / _|  ___ _   _| |__   ___  _ __ ___   ___ | |_   ___  / _|   / |
      __) | / __| | | | `_ ` _ \| `_ \| | | || `__/ _ \ / _ \| __/ __| / _ \| |_  / __| | | | `_ \ / _ \| `__/ _ \ / _ \| __| / _ \| |_  __| |
     / __/  \__ \ |_| | | | | | | |_) | |_| || | | (_) | (_) | |_\__ \| (_) |  _|| (__| |_| | |_) |  __/| | | (_) | (_) | |_ | (_) |  _||__| |
    |_____| |___/\__, |_| |_| |_| .__/ \__, ||_|  \___/ \___/ \__|___/ \___/|_|   \___|\__,_|_.__/ \___||_|  \___/ \___/ \__| \___/|_|     |_|
                 |___/          |_|    |___/
    */

    /*--- B ROOTS OF CUBE ROOT OF MINUS 1 ---*/

    %slc_pybegin;
    cards4;
    from sympy import *
    a, b = symbols('a b', real=True)
    sol = solve((a-I*b)**3 + 1, (a, b))
    print(sol)
    ;;;;
    %slc_pyend;

    Altair SLC

    [(-1, 0), (1/2, -sqrt(3)/2), (1/2, sqrt(3)/2)]

    Three roots

    (a-I*b)**3 + 1 = 0

    0-1i             =  -i
    1/2, -sqrt(3)/2  =  1/2 -i*sqrt(3)/2
    1/2, +sqrt(3)/2  =  1/2 +i*sqrt(3)/2

    /*____                   _               __                                                  _           __     _
    |___ /   _ __ ___   ___ | |_ ___   ___  / _| ___  __ _ _   _  __ _ _ __ ___  _ __ ___   ___ | |_   ___  / _|   / |
      |_ \  | `__/ _ \ / _ \| __/ __| / _ \| |_ / __|/ _` | | | |/ _` | `__/ _ \| `__/ _ \ / _ \| __| / _ \| |_  __| |
     ___) | | | | (_) | (_) | |_\__ \| (_) |  _|\__ \ (_| | |_| | (_| | | |  __/| | | (_) | (_) | |_ | (_) |  _||__| |
    |____/  |_|  \___/ \___/ \__|___/ \___/|_|  |___/\__, |\__,_|\__,_|_|  \___||_|  \___/ \___/ \__| \___/|_|     |_|
                 _                        _             |_| _   _
      __ _    __| | ___   _ __ ___   ___ (_)_   _____  ___ | |_| |__   ___  ___  _ __ ___ _ __ ___
     / _` |  / _` |/ _ \ | `_ ` _ \ / _ \| \ \ / / _ \/ __|| __| `_ \ / _ \/ _ \| `__/ _ \ `_ ` _ \
    | (_| | | (_| |  __/ | | | | | | (_) | |\ V /  __/\__ \| |_| | | |  __/ (_) | | |  __/ | | | | |
     \__,_|  \__,_|\___| |_| |_| |_|\___/|_| \_/ \___||___/ \__|_| |_|\___|\___/|_|  \___|_| |_| |_|
    */


    Using De Moivre's

    nth Root Formula (uses exp(i*pi) under the covers)

      cos( (a+2*pi*k)/2 ) + i*sin((a + 2*pi*k)/2) for k=0.1

    Substitute  a = pi

      cos((pi + 2*pi*k)/2) + i*sin((pi + 2*pi*k)/2)

    Roots for k=0

      cos(pi/2) + i*sin)pi/2) = 0 + i*1 = i

    Roots for k=1

      cos((pi + 2*pi)/2) + i*sin((pi + 2*pi)/2) = cos((3*pi)/2) + i*sin((3*pi)/2) = 0  i*(-1) = -i

    so

    The values that solve

    (a-bI)**2 = -1 + 0i

    are +i and -i

    /*             _            _               _
    | |__     __ _| | __ _  ___| |__  _ __ __ _(_) ___
    | `_ \   / _` | |/ _` |/ _ \ `_ \| `__/ _` | |/ __|
    | |_) | | (_| | | (_| |  __/ |_) | | | (_| | | (__
    |_.__/   \__,_|_|\__, |\___|_.__/|_|  \__,_|_|\___|
                     |___/
    */


    Note

    (a - bi)**2 = -1 - 0i

    If we take the square root of both sides

    a + bi = (+/-)sqrt(-1 - 0i)

    so

    a + bi = +/-i

    THE +/- IS OFTEN MISUNDERSTOOD
    Note this if x*x=4 then x=+/-sqrt(4).
    -2 and _+2 work

    Finally matching the real and imaginary parts we get

    a - bi = =0  1i    = +i
    a - bi = =0 + 1i   = -i

    Thus

      The values that solve

      (a-bi)**2 = -1

      are +i and -i

    /*                                     _           _
                                          (_)    _ __ (_)
                       _                  | | _ | `_ \| |         _
      ___    ___ _   _| | ___ _ __   ___  | |(_)| |_) | | __     / |
     / __|  / _ \ | | | |/ _ \ `__| / _ \ |_|   | .__/|_||__|  __| |
    | (__  |  __/ |_| | |  __/ |   |  __/       |_|      |__| |__| |
     \___|  \___|\__,_|_|\___|_|    \___|                        |_|

    */

    Same solution as 3a, because of trigometic identities euler formula can be expressed in signs and cosigns,

                 i*pi
    (a-bi)**2 = e

    Anoyher form of De Moivres Theorem

              1/n  i(theta + 2*pi*k)/n
        z  = r    e
         k

       here n=2 and k=1,2

       With these conditions this breaks down to


       Roots for k=0

         cos(pi/2) + i*sin)pi/2) = 0 + i*1 = i

       Roots for k=1

         cos((pi + 2*pi)/2) + i*sin((pi + 2*pi)/2) = cos((3*pi)/2) + i*sin((3*pi)/2) = 0  i*(-1) = -i


       so

       The values that solve

       (a-bI)**2 = -1 + 0i

       are +i and -i

    /*              _
      ___ _ __   __| |
     / _ \ `_ \ / _` |
    |  __/ | | | (_| |
     \___|_| |_|\__,_|

    */
