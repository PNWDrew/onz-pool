This is a companion to the main README

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

	cd ~/lwf-pool
	nano config.json

Enter the necessary info. You'll need to add your % shared, public key and secrets. You can choose min payout as desired
Secrets (passphrases to your acct) must be in quotes. "ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN ELEVEN TWELVE"
Be careful to not delete any of the [,{ 

Control-o to write (save), control-x to exit the editor.
  
