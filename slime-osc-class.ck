// SLIME OSC 

public class SlimeCore
{

// host name and port
string hostname[4];
"192.168.1.121" => hostname[0];
"192.168.1.122" => hostname[1];
"192.168.1.123" => hostname[2];
"192.168.1.130" => hostname[3];

10000 => int port;

"/slime/scott/notset" => string NameSpace;

// send object
OscSend xmit;

//set namespace
function void SetNameSpace(string NameSpaceIn)
{
	NameSpaceIn => NameSpace;
}

    // start the message...
    // the type string ',f' expects a single float argument
    //xmit.startMsg( NameSpace, "f" );

function void aim(string ipTarget, int portNumber)
	{
 		xmit.setHost(ipTarget, portNumber);
	}

function void slimesendf()
	{
	xmit.startMsg(NameSpace, "f" );	
	//TODO remove hard coding of for loop relate to hostname[]
	for(0 => int iii; iii < 4; iii++)
		{
			// aim the transmitter
			//xmit.setHost( hostname[iii], port );
			aim(hostname[iii], port);

    // a message is kicked as soon as it is complete 
    // - type string is satisfied and bundles are closed
    Std.rand2f( 0., 1.0 ) => float temp => xmit.addFloat;
    <<< "sent ", hostname[iii], NameSpace , "(via OSC):", temp >>>;

    0.1::second => now;
		}
	}
}

SlimeCore sc;

sc.slimesendf();

2000::ms => now;
