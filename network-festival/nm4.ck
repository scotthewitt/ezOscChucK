while(1)
{
Slime.s.send("/slime/user/sh/midi/val2", Std.rand2(0,127));
700::ms => now;
Slime.s.send("/slime/user/sh/midi/val2", 0);
800::ms => now;
}
