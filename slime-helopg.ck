public class SlimeBase extends OSCBase {
	// host name and port
	string hostname[4];
	"192.168.1.121" => hostname[0];
	"192.168.1.122" => hostname[1];
	"192.168.1.123" => hostname[2];
	"192.168.1.130" => hostname[3];
	10000 => portNumber;

function void slimeCore(string ns)
{
        for(0 => int i; i < 4; i++)
        {
                //hostname[i] => string nss;
                sendOSC(hostname[i],portNumber,ns);
               // <<< "slime: ", ns >>>;
        }

}

function void slimeCore(string ns, float f)
{
        for(0 => int i; i < 4; i++)
        {
                //hostname[i] => string nss;
                sendOSC(hostname[i],portNumber,ns,f);
                <<< hostname[i] >>>;
        }

}

function void send()
{
	slimeCore("/slime/test");
}

function void send(string ns) 
{
	slimeCore(ns);
}

function void send(string ns, float f)
{
	slimeCore(ns,f);
}

}

//SlimeBase s;

//s.send();

//<<< "test 1" >>>;

//s.send("/test");

//<<< "test 2">>>;

//s.send("/test", 100.0);
