"192.168.1.97" => string target;
10000 => int port;


while(1)
{
Std.rand2(100, 500) => int i;
OSC.s.sendOSC(target, port, "/test", i);
Std.rand2(0,100) =>  i;
"/test" => string targetnamespace;
targetnamespace + i => string targetnamespaceint;
OSC.s.sendOSC(target, port, targetnamespaceint, i);
100::ms => now;
<<< "sent" >>>;
}
