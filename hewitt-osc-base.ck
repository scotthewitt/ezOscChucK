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
	<<< NameSpace, ff >>>;
}

function void MakeAndSendOSC(string ss)
{
        xmit.startMsg( NameSpace, "s" );
        ss => xmit.addString;
        <<< NameSpace, ss >>>;
}  

function void MakeAndSendOSC(string s1, string s2, string s3)
{
        xmit.startMsg( NameSpace, "s, s, s" );
        s1 => xmit.addString;
s2 => xmit.addString;
s3 => xmit.addString;
        <<< NameSpace, ss >>>;
}

function void MakeAndSendOSC(string s1, string s2, string s3, string s4, string s5)
{
        xmit.startMsg( NameSpace, "s, s, s, s, s" );
        s1 => xmit.addString;
s2 => xmit.addString;
s3 => xmit.addString;
s4 => xmit.addString;
s5 => xmit.addString;
        <<< NameSpace, ss >>>;
}


//class_name.sendOSC("127.0.0.1", 10000, "/hello/letsgo", 0.5);
function void sendOSC(string s, int port, string ns, float fff)
{
aim(s, port);
SetNameSpace(ns);
MakeAndSendOSC(fff);
}

function void sendOSC(string s, int port, string ns, string fff)
{
aim(s, port);
SetNameSpace(ns);
MakeAndSendOSC(fff);                
}

function void sendOSC(string s, int port, string ns, string fff, string ffff, string fffff)
{
aim(s, port);
SetNameSpace(ns);
MakeAndSendOSC(fff,ffff,fffff);
}

function void sendOSC(string s, int port, string ns, string fff, string ffff, string fffff, string f4, string f5)
{
aim(s, port);
SetNameSpace(ns);
MakeAndSendOSC(fff,ffff,fffff, f4, f5);
}



function void sendOSC(string s, int port, string ns)
{
aim(s, port);
SetNameSpace(ns);
MakeAndSendOSC(Std.rand2f(0.,1.));
}

}

//OSCBase hob;

//hob.sendOSC("127.0.0.1", 10000, "/hello/letsgo", 0.5);

//hob.sendOSC("127.0.0.1", 10000, "/hello/letsgo");

//10::ms => now;

