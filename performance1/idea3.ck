while(1)
{
Slime.s.send("/slime/app/sdfsys/lissajous/hz/freqY", 2000);
2000::ms => now;
Slime.s.send("/slime/user/sh/1or0/val3", 0);
300::ms => now;
}
