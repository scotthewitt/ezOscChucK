// Hewitt OSC Base 

public class OSCBase
{

"/hewittOscBase/notset" => string NameSpace;

10000 => int  portNumber;

// send object
OscSend xmit;

//aim osc sender
function void aim(string ipTarget, int portNumber)
        {
                xmit.setHost(ipTarget, portNumber);
        }


//set target namespace
function void SetNameSpace(string NameSpaceIn)
{
	NameSpaceIn => NameSpace;
}

function void MakeAndSendOSC(float ff)
{
	xmit.startMsg( NameSpace, "f" );
	ff => xmit.addFloat;
}

//class_name.sendOSC("127.0.0.1", 10000, "/hello/letsgo", 0.5);
function void sendOSC(string s, int port, string ns, float fff)
{
aim(s, port);
SetNameSpace(ns);
MakeAndSendOSC(fff);
}

function void sendOSC(string s, int port, string ns, float fff)
{
aim(s, port);
SetNameSpace(ns);
MakeAndSendOSC(fff);
}

function void sendOSCTest(string s, int port, string ns)
{
aim(s, port);
SetNameSpace(ns);
MakeAndSendOSC(Std.rand2f(0.,1.));
}

}

OSCBase hob;

hob.sendOSC("127.0.0.1", 10000, "/hello/letsgo", 0.5);

hob.sendOSCTest("127.0.0.1", 10000, "/hello/letsgo");

//10::ms => now;

