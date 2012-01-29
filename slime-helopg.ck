public class SlimeBase extends OSCBase {
	// host name and port
	string hostname[6];
	"192.168.1.2" => hostname[0];
	"192.168.1.3" => hostname[1];
	"192.168.1.4" => hostname[2];
	"192.168.1.5" => hostname[3];
	"192.168.1.6" => hostname[4];
	"192.168.1.7" => hostname[5];
	10000 => portNumber;

hostname.size() =>  int slimeSize;

<<< "slime-size", slimeSize >>>;

function void slimeCore(string ns)
{
        for(0 => int i; i < slimeSize; i++)
        {
                //hostname[i] => string nss;
                sendOSC(hostname[i],portNumber,ns);
               // <<< "slime: ", ns >>>;
        }

}

function void slimeCore(string ns, float f)
{
        for(0 => int i; i < slimeSize; i++)
        {
                //hostname[i] => string nss;
                sendOSC(hostname[i],portNumber,ns,f);
                <<< hostname[i] >>>;
        }

}

function void slimeCore(string ns, int i1)
{
        for(0 => int i; i < slimeSize; i++)
        {
                //hostname[i] => string nss;
                sendOSC(hostname[i],portNumber,ns,i1);
                <<< hostname[i] >>>;
        }

}

function void slimeCore(string ns, int i1, int i2)
{
        for(0 => int i; i < slimeSize; i++)
        {
                //hostname[i] => string nss;
                sendOSC(hostname[i],portNumber,ns,i1,i2);
                <<< hostname[i] >>>;
        }

}

function void send()
{
	slimeCore("/slime/user/sh/test");
}

function void send(string ns) 
{
	slimeCore(ns);
}

function void send(string ns, float f)
{
	slimeCore(ns,f);
}

function void send(string ns, int i1, int i2)
{
        slimeCore(ns,i1,i2);
}

}

//SlimeBase s;

//s.send();

//<<< "test 1" >>>;

//s.send("/test");

//<<< "test 2">>>;

//s.send("/test", 100.0);
