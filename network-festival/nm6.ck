while(1)
{
Slime.s.send("/slime/app/sdfsys/cyclephase/0to1/trace", Std.rand2f(0.5,0.9));
100::ms => now;
Slime.s.send("/slime/app/sdfsys/cyclephase/0to1/trace", 0);
300::ms => now;
}
