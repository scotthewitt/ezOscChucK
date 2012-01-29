while(1)
{
Slime.s.send("/slime/user/sh/1or0/val3", 1);
300::ms => now;
Slime.s.send("/slime/user/sh/1or0/val3", 0);
300::ms => now;
}
