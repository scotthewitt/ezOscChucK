while(1)
{
Std.rand2(100, 500) => int i;
OSC.s.sendOSC("192.168.1.97", 10000, "/test", i);
Std.rand2(0,100) =>  i;
"/test" => string targetnamespace;
targetnamespace + i => string targetnamespaceint;
OSC.s.sendOSC("192.168.1.97", 10000, targetnamespaceint, i);
100::ms => now;
<<< "sent" >>>;
}
