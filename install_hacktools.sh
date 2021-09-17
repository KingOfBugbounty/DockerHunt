#!/usr/bin/env bash

# Creating variables

ToolsPath="$HOME/Tools"

echo "Creating all necessary folders"

mkdir -p ~/.gf
mkdir -p ~/Tools/
mkdir -p ~/.config/notify/
mkdir -p ~/.config/amass/
mkdir -p ~/.config/subfinder/
mkdir -p ~/Lists/

echo "Download some important files"
eval wget -nc -O ~/Lists/XSS-OFJAAAH.txt https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-OFJAAAH.txt
eval wget -nc -O ~/Lists/params.txt https://raw.githubusercontent.com/s0md3v/Arjun/master/arjun/db/params.txt
eval wget -nc -O ~/.gf/potential.json https://raw.githubusercontent.com/devanshbatham/ParamSpider/master/gf_profiles/potential.json

echo "Install FFF"
go install github.com/tomnomnom/fff@latest
sleep 1

echo "Install Hakrawler"
go install github.com/hakluke/hakrawler@latest
sleep 1

echo "Install Httprobe"
go install github.com/tomnomnom/httprobe@latest
sleep 1

echo "Install Meg"
go install github.com/tomnomnom/meg@latest
sleep 1

echo "Install Haklistgen"
go install github.com/hakluke/haklistgen@latest
sleep 1

echo "Install Haktldextract"
go install github.com/hakluke/haktldextract@latest
sleep 1

echo "Install Hakcheckurl"
go install github.com/hakluke/hakcheckurl@latest
sleep 1

echo "Install tojson"
go install github.com/tomnomnom/hacks/tojson@latest
sleep 1

echo "Install gowitness"
go install github.com/sensepost/gowitness@latest
sleep 1

echo "Install rush"
go install github.com/shenwei356/rush@latest
sleep 1

echo "install naabu"
go install github.com/projectdiscovery/naabu/cmd/naabu@latest
sleep 1

echo "Install hakcheckurl"
go install github.com/hakluke/hakcheckurl@latest
sleep 1

echo "Install shuffledns"
go install github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
sleep 1

echo "Install rescope"
go install github.com/root4loot/rescope@latest
sleep 1

echo "Install gron"
go install github.com/tomnomnom/gron@latest
sleep 1

echo "Install html-tool"
go install github.com/tomnomnom/hacks/html-tool@latest
sleep 1

echo "install Chaos"
go install github.com/projectdiscovery/chaos-client/cmd/chaos@latest
sleep 1

echo "Install gf"
go install github.com/tomnomnom/gf@latest
sleep 1

echo "Install qsreplace"
go install github.com/tomnomnom/qsreplace@latest
sleep 1

echo "Install Amass"
go install github.com/OWASP/Amass/v3/...@latest
sleep 1

echo "Install ffuf"
go install github.com/ffuf/ffuf@latest
sleep 1

echo "Install assetfinder"
go install github.com/tomnomnom/assetfinder@latest
sleep 1

echo "Install github-subdomains"
go install github.com/gwen001/github-subdomains@latest
sleep 1

echo "Install cf-check"
go install github.com/dwisiswant0/cf-check@latest
sleep 1

echo "Install waybackurls"
go install github.com/tomnomnom/hacks/waybackurls@latest
sleep 1

echo "Install nuclei"
go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
sleep 1

echo "Install anew"
go install github.com/tomnomnom/anew@latest
sleep1

echo "Install notify"
go install github.com/projectdiscovery/notify/cmd/notify@latest
sleep 1

echo "Install mildew"
go install github.com/daehee/mildew/cmd/mildew@latest
sleep 1

echo "Install dirdar"
go install github.com/m4dm0e/dirdar@latest
sleep 1

echo "Install unfurl"
go install github.com/tomnomnom/unfurl@latest
sleep 1

echo "Install httpx"
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
sleep 1

echo "Install github-endpoints"
go install github.com/gwen001/github-endpoints@latest
sleep 1

echo "Install dnsx"
go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest
sleep 1

echo "Install subfinder"
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
sleep 1

echo "Install gauplus"
go install github.com/bp0lr/gauplus@latest
sleep 1

echo "Install subjs"
go install github.com/lc/subjs@latest
sleep 1

echo "Install Gxss"
go install github.com/KathanP19/Gxss@latest
sleep 1

echo "Instal gospider"
go install github.com/jaeles-project/gospider@latest
sleep 1

echo "Install crobat"
go install github.com/cgboal/sonarsearch/crobat@latest
sleep 1

echo "Install dalfox"
go install github.com/hahwul/dalfox/v2@latest
sleep 1

echo "Install puredns"
go install github.com/d3mondev/puredns/v2@latest
sleep 1

echo "Install interactsh-client"
go install github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest
Sleep 1

echo "Install kxss"
go install github.com/tomnomnom/hacks/kxss@latest
sleep 1

echo "Install GetJs"
go install github.com/003random/getJS@latest
sleep 1

echo "Cloning all repos and install"

eval cd $ToolsPath

git clone https://github.com/tomnomnom/gf
eval cd gf
eval cp -r examples/*.json ~/.gf

eval cd $ToolsPath
git clone https://github.com/1ndianl33t/Gf-Patterns
eval cd Gf-Patterns
eval mv *.json ~/.gf

eval cd $ToolsPath
git clone https://github.com/m4ll0k/SecretFinder
eval cd SecretFinder
eval pip3 install -r requirements.txt

eval cd $ToolsPath
git clone https://github.com/m4ll0k/BBTz

eval cd $ToolsPath
git clone https://github.com/devanshbatham/ParamSpider
eval cd ParamSpider
eval pip3 install -r requirements.txt