This is a companion to the main README for new users. Anything here that conflicts with dakk's README? Trust him not me....

1)Download a copy onto your VPS. Do not clone this into your node directory.
	
	cd ~
	git clone https://github.com/PNWDrew/lwf-pool.git
	
That should retrieve all you'll need and put it a new dir called lwf-pool. 
check it:

	ls
	 
You should have a new directory called lwf-pool.

	cd lwf-pool
	
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
If it does not work you have an error in config.json. 
Compare to the file in pnwdrew's github or original source by dakk and look for missing characters or symbols. 

If it works choose N to not save it.

Finally you need to edit the timestamp in poollogs.json to reflect the time you want the script to start it's calculation from
https://www.unixtimestamp.com/ Convert standard time to Unix timestamp and put that in place of what is in the file
	
	nano poollogs.json
	
It can be run by the batch script included by dakk

	bash batch.sh

If that calculates payouts and sends them you will get a confirmation every 3 seconds as it broadcasts. If you get failures check public key, secrets and wallet address.

Your basic payout script is done. There are instructions by trnpally for scheduling payouts in separate README
 
If you wish to use the frontend to display payouts for your voters, you can set up a webserver on your vps. That is optional.
