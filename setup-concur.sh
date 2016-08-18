# BOOTSTRAPPER
mkdir -p ~/source/concur
cd ~/source/concur
curl -LO https://s3-us-west-2.amazonaws.com/concur-public-resources/bootstrapper/install.sh
chmod 755 install.sh
./install.sh
cd $HOME/.bootstrapper
./bin/bootstrapper install-mac 2>&1 | tee bootstrapper.log

# RECEIPT SERVICE
cd ~/source/concur
git clone git@github.com:concur/receipt-service.git receipt-service
cd receipt-service
