# Lisk pool distribution software 
This software is created by lisk delegate "dakk", please consider a small donation if you
use this software: "2324852447570841050L" for lisk or "7725849364280821971S" for shift or
"AZAXtswaWS4v8eYMzJRjpd5pN3wMBj8Rmk" for ark.

# testing branch is not to used on mainnet until proven. Modified from original to calculate donations % correctly. 
This should allow the user to use the donations % to send the remaining % to their own account. IE: you share 75% and send 25% to your own account. Both calculations are based on total forged now.

To get this test branch:

  git clone -b testing-donations https://github.com/PNWDrew/lwf-pool.git

See other README_LWF for LWF specifics

########ALL CREDIT FOR THIS SCRIPT GOES TO DAKK, pnwdrew DID NOT AND COULD NOT WRITE THIS :)#########

  See README_LWF for specific LWF instructions

## Configuration
Fork this repo; edit config.json and modify the first lines with your settings:

- pubkey: your delegate pubkey
- percentage: percentage to distribute
- secret: your secret
- secondsecret: your second secret or null if disabled
- node: the lisk node where you get forging info
- nodepay: the lisk node used for payments
- minpayout: the minimum amount for a payout
- coin: the name of the coin (LISK, ARK, SHIFT, RISE, or whatever you want)
- skip: a list of address to skip
- donations: a list of object (address: amount) for send static amount every payout
- donationspercentage: a list of object (address: percentage) for send static percentage every payout
- logfile: file where you want to write pending and sent amounts
- feededuct: true if you want to subtract fees from user payouts

Now edit docs/index.html and customize the webpage.

----> NOT NEEDED IN THIS VERSION: Finally edit poollogs_example.json and put in lastpayout the unixtimestamp of your last payout or the
---->NOT NEEDED-- date of pool starting; then move poollogs_example.json to poollogs.json.

Just update unix timestamp in poollogs.json to when you want your script to begin calculating from. 
google unix timestamp for a converter

### Ark & Kapu
If you are using this software on ark, you should edit pollogs_example_ark.json and put:

- lastpayout: the unixtimestamp of your last payout or the date of pool starting 
- lastforged: the forged amount recorded in your last payout or the forged amount of pool starting

then move poollogs_example_ark.json to poollogs.json.

Also, replace docs/index.html with docs/index.ark.html

## Running it

First install requests:

`pip3 install requests`

Then start it:

`python3 liskpool.py`

or if you want to use another config file:

`python3 liskpool.py -c config2.json`

It produces a file "payments.sh" with all payments shell commands. Run this file with:

`bash payments.sh`

The payments will be broadcasted (every 10 seconds). At the end you can move your generated
poollogs.json to docs/poollogs.json and send the update to your git repo.

To display the pool frontend, enable docs-site on github repository settings.




## Batch mode

The script is also runnable by cron using the -y argument:

`python3 liskpool.py -y`

There is also a 'batch.sh' file which runs liskpool, then payments.sh and copy the poollogs.json
in the docs folder.


### Avoid vote hoppers

In some DPOS, some voters switch their voting weight from one delegate to another for
receiving payout from multiple pools. A solution for that is the following flow:

1. Run liskpool.py every hour with --min-payout=1000000 (a very high minpayout, so no payouts will be done but the pending will be updated)
2. Run liskpool.py normally to broadcast the payments


## Command line usage

```
usage: liskpool.py [-h] [-c config.json] [-y] [--min-payout MINPAYOUT]

DPOS delegate pool script

optional arguments:
  -h, --help            show this help message and exit
  -c config.json        set a config file (default: config.json)
  -y                    automatic yes for log saving (default: no)
  --min-payout MINPAYOUT
                        override the minpayout value from config file
```

## License
Copyright 2017 Davide Gessa

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

