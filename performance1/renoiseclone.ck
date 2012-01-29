while(1)
{
Slime.s.send("/slime/app/renoise/midichannel/2/noteon", 48, 127);
Std.rand2f(400,1200) * 80::ms => now;
}
