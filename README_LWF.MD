This is a companion to the main README for new users. Anything here that conflicts with dakk's README? Trust him not me....
For this repo I removed the Lisk info from config and poollogs. liskpool.py is unchanged

You should be signed in as your user for this.

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


2)Edit config.json for your pool. Make sure you are not in node directory so you edit the correct file. 
Your prompt will tell you the dir you are in.

	nano config.json

Enter the necessary info. You'll need to add your % shared, public key and secrets. You can choose min payout as desired
Secrets (passphrases to your acct) must be in quotes and all on one line.

"ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN ELEVEN TWELVE"

Be careful to not delete any of the symbols.

Control-o to write (save), control-x to exit the editor.

3)Testing it

	python3 liskpool.py
	
That should run off the total to share and a list of addresses of your voters and their shares. 
If it does not work you may have an error in config.json. 
Compare to the file in pnwdrew's github or original source by dakk and look for missing characters or symbols. 

If it works choose N to not save it. If you choose Y it will save in poollogs.json as if payments were actually sent.

### You will need to edit the timestamp in poollogs.json to reflect the time you want the script to start it's calculation. The existing timestamp is for the day of distribution of LWF coins. Set timestamp for when you entered forging.
https://www.unixtimestamp.com/ Convert UTC time to Unix timestamp and put that in place of what is in the file
	
	nano poollogs.json
	
If you wish to test it again with the python3 command above you can. If you run this it will record the current voters, current shares, and current timestamp in poollogs but not send any payouts unless they are over 100000. They will be saved as pending. You can nano the log again afterwards and check for updated timestamp.

	python3 liskpool.py -y --minpayout 100000
This same line can be used for poolhopping protection if run by cron every few hours.

### Finally to run the whole payout process-

It can be run by the batch script included by dakk

	bash batch.sh

If that calculates payouts and sends them you will get a confirmation every 3 seconds as it broadcasts. If you get failures check public key, secrets and wallet address.

Your basic payout script is done. There are instructions by trnpally for scheduling payouts in separate README
 
If you wish to use the frontend to display payouts for your voters, you can set up a webserver on your vps. That is optional.
