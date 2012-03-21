while(1)
{
Slime.s.send("/slime/user/sh/1or0/val1", 1);
100::ms => now;
Slime.s.send("/slime/user/sh/1or0/val1", 0);
300::ms => now;
}
