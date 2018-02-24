

1)Download a copy onto your VPS. Sign in as normal. Do not clone this into your node directory.
	
	`cd ~
	`git clone https://github.com/PNWDrew/LWF_pool.git
	
that should retrieve all you'll need and put it in your user dir called lwf-pool. 
check it:

	`ls
	 
you should have a new directory called lwf-pool
you can rename if you want like this:
	
	`mv lwf-pool NEW NAME
	
Install requests

`pip3 install requests
  
2) Editing config for your pool. Make sure you are not in node directory. Your prompt will tell you the dir you are in.

	`cd lisk-pool (or whatever you renamed it).
	`nano config.json

Enter the necessary info. You'll need to add your % shared, public key and secrets. You can choose min payout as desired
Secrets (passphrases to your acct) must be in quotes. "ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN ELEVEN TWELVE"
Be careful to not delete any of the [,{ 

Control-o to write (save), control-x to exit the editor.
  
