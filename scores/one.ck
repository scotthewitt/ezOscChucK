// Slime Piece 1

function void ectopulse(float tempo, float delta, string s)
{	 
	while(1)
	{
		tempo / 60. => float notelength;
		for(0 => int i; i < 20; i++)
		{
			notelength + (i * delta) => float notelength;
			notelength * 1000 => notelength;
			notelength * 1 ::ms => now;
			Slime.s.send("/slime/score/title/ectopulse/"+s,notelength);		
		}
		for(20 => int i; i > 0; i--)
		{
			notelength + (i * delta) => float notelength;
			notelength * 1000 => notelength;
			notelength * 1 ::ms => now;
			Slime.s.send("/slime/score/title/ectopulse/"+s,notelength);		
		}
	}
}

function void ectopulsetime(float tempo, float delta, int d, string s){
	 spork ~  ectopulse(tempo, delta, s);
	 d * 1::ms => now;
}

function void freq(float min, float max, string s){
	 Std.rand2f(min, max) => float pitch;
	 Slime.s.send("/slime/score/title/freq/"+s,pitch);
}


//Slime.s.send("/ns",valuex);

while(1){

freq(120.,600, "A");

Slime.s.send("/slime/score/title/ectopulse/A", Std.rand2f(3000.,8000.));

Slime.s.send("/slime/score/title/dyna/A", Std.rand2f(0.,1.0));


//spork ~ ectopulsetime(60.0, 0.1, 5000, "A");

//spork ~ ectopulsetime(120.0, 0.3, 10000, "B");

500::ms => now;
}
10000::ms => now;