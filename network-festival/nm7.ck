while(1)
{
Slime.s.send("/slime/app/sdfsys/polarmod/0to1/gain", Std.rand2f(0.,1.));
100::ms => now;
Slime.s.send("/slime/app/sdfsys/polarmod/0to1/gain", 0);
300::ms => now;
}
