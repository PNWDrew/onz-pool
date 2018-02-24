This is a companion to the main README for new users. Anything here that conflicts with dakk's README? Trust him not me....

1)Download a copy onto your VPS. Do not clone this into your node directory.
	
	cd ~
	git clone https://github.com/PNWDrew/lwf-pool.git
	
That should retrieve all you'll need and put it a new dir called lwf-pool. 
check it:

	ls
	 
You should have a new directory called lwf-pool.
	
Install requests

	pip3 install requests


2)Edit config.json for your pool. Make sure you are not in node directory. Your prompt will tell you the dir you are in.

	nano config.json

Enter the necessary info. You'll need to add your % shared, public key and secrets. You can choose min payout as desired
Secrets (passphrases to your acct) must be in quotes. "ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN ELEVEN TWELVE"
Be careful to not delete any of the symbols.

Control-o to write (save), control-x to exit the editor.

3)Testing it

	python3 liskpool.py
	
That should run off the total to share and a list of addresses of your voters and their shares. 
If it does not work chances are you have an error in config.json. 
Compare to the file in pnwdrew's github or original source by dakk and look for missing characters or symbols. 

If it does work choose N to not save it. 
Your basic payout script is done.
  
