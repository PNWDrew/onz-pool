This is a companion to the main README for new users. Anything here that conflicts with dakk's README? Trust him not me....
For this repo I removed the Lisk info from config and poollogs and added ONZ. 

#### liskpool.py is altered to fix the donationspercentage calculation. You can get the original version from dakk if you want an unchanged script. https://github.com/dakk/lisk-pool
#### This is working for me but please monitor your payouts
#### Thanks to deadpool for help. 


You should be signed in as your user for this.

1)Download a copy onto your VPS. Do not clone this into your node directory.
	
	cd ~
	git clone -b onz-pool https://github.com/PNWDrew/lwf-pool.git
	
That should retrieve all you'll need and put it a new dir called lwf-pool. 
check it:

	ls
	 
You should have a new directory called lwf-pool. You can rename it with 

	mv lwf-pool YOURNEWNAME
	cd lwf-pool (or YOURNEWNAME)
	
Install requests. This may not be necessary in all cases. You can install pip as your OS will instruct you and check if wanted

	pip3 install requests

2)Edit config.json for your pool. Make sure you are not in node directory so you edit the correct file. 
Your prompt will tell you the dir you are in.

	nano config.json

Enter the necessary info. You'll need to add your % shared, public key and secrets. You can choose min payout as desired
Secrets (passphrases to your acct) must be in quotes and all on one line. 

"ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN ELEVEN TWELVE"

If you are using donations % to send to yourself make sure the sum of sharing and donations is not over 100%, there is no check for this in the script. donations% entries are "ACCOUNTADDRESS":% and need a comma separating them if multiple are entered

Be careful to not delete any of the symbols.

Control-o to write (save), control-x to exit the editor.

3)Testing it

	python3 liskpool.py
	
That should run off the total to share and a list of addresses of your voters and their shares. 
If it does not work you may have an error in config.json. 
Compare to the file in pnwdrew's github or original source by dakk and look for missing characters or symbols. 

If it works choose N to not save it. If you choose Y it will save as if payments were actually sent.

Finally you need to edit the timestamp in poollogs.json to reflect the time you want the script to start it's calculation. The existing timestamp is for the day ONZ mainnet opens. The script calculates shares based on this timestamp as a starting point.
https://www.unixtimestamp.com/ Convert your desired start time to Unix timestamp and put that in place of what is in the file
	
	nano poollogs.json
	
That should be all that is needed. You can do another test if wanted. This line will save the current state of your delegate; updating voters, pendings, etc... Payouts will be saved as pending unless over 100000. 
	
	python3 liskpool.py -y --min-payout 100000
	
This line is also poolhopping protection if run regularly by cron.

#### That's it	
#### The full payout can be run by the batch script included by dakk

	bash batch.sh

If that calculates payouts and sends them you will get a confirmation every 3 seconds as it broadcasts. If you get failures check public key, secrets and wallet address.

Your basic payout script is done. There are instructions by trnpally for scheduling payouts in separate README
 
If you wish to use the frontend to display payouts for your voters, you can set up a webserver on your vps. That is optional.
