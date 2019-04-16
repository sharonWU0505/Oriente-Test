# Oriente-Test

Files:
1. `get_products.sh`: shell script to store 1000 data in json file
2. `products.json`: the 1000 data of products (does not exist at first)
3. `cookie.txt`: the file which stores cookie (does not exist at first)
4. `results.json`: the json file containing 1000 data in case that the command does not work

For Linux and OS X:
1. Install `jq`.
- Linux: `sudo apt-get install jq`
- OS X: `brew install jq`
2. Run `bash get_products.sh` in terminal.
3. The `products.json` is then generated in the directory you are currently in.
