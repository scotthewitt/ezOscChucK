// SLIME OSC 

// host name and port
string hostname[4];
"192.168.1.121" => hostname[0];
"192.168.1.122" => hostname[1];
"192.168.1.123" => hostname[2];
"192.168.1.130" => hostname[3];

10000 => int port;

// send object
OscSend xmit;
 
    // start the message...
    // the type string ',f' expects a single float argument
    xmit.startMsg( "/sndbuf/buf/rate", "f" );

for(0 => int iii; iii < 4; iii++)
{
// aim the transmitter
xmit.setHost( hostname[iii], port );

    // a message is kicked as soon as it is complete 
    // - type string is satisfied and bundles are closed
    Std.rand2f( .5, 2.0 ) => float temp => xmit.addFloat;
    <<< "sent ", hostname[iii], "(via OSC):", temp >>>;

    0.1::second => now;
}