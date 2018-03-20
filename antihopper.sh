# This runs the payout script but does not send payments. 
# Do not use if you are using donations% in config. fixed donations are ok.
# -y              makes it save the results, updating poollogs.json. recording voters, pending, and timestamp. 
# --min-payout    overrides the value in config.json to stop payouts from being sent
#
# set a cron to run this every 1-2 hours.
# you can add a line below to copy poollogs to your webserver to update the page
# 
python3 liskpool.py -y --min-payout 100000
