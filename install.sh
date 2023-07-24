#!/bin/bash

# Check if nuclei is installed, and install if not
if ! command -v nuclei &>/dev/null; then
    echo "nuclei is not installed. Installing..."
    go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
else
    echo "nuclei is already installed."
fi

# Check if httpx is installed, and install if not
if ! command -v httpx &>/dev/null; then
    echo "httpx is not installed. Installing..."
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
    go install github.com/hakluke/hakcheckurl@latest
else
    echo "httpx is already installed."
fi

# Check if gau is installed, and install if not
if ! command -v gau &>/dev/null; then
    echo "gau is not installed. Installing..."
    go install github.com/lc/gau/v2/cmd/gau@latest
else
    echo "gau is already installed."
fi

# Check if unfurl is installed, and install if not
if ! command -v unfurl &>/dev/null; then
    echo "unfurl is not installed. Installing..."
    go install github.com/tomnomnom/unfurl@latest
else
    echo "unfurl is already installed."
fi

# Check if subfinder is installed, and install if not
if ! command -v subfinder &>/dev/null; then
    echo "subfinder is not installed. Installing..."
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
else
    echo "subfinder is already installed."
fi

# Check if assetfinder is installed, and install if not
if ! command -v assetfinder &>/dev/null; then
    echo "assetfinder is not installed. Installing..."
    go install -v github.com/tomnomnom/assetfinder@latest
else
    echo "assetfinder is already installed."
fi

# Check if katana is installed, and install if not
if ! command -v katana &>/dev/null; then
    echo "katana is not installed. Installing..."
    go install github.com/projectdiscovery/katana/cmd/katana@latest
else
    echo "katana is already installed."
fi

# Check if subzy is installed, and install if not
if ! command -v subzy &>/dev/null; then
    echo "subzy is not installed. Installing..."
    go install -v github.com/lukasikic/subzy@latest
else
    echo "subzy is already installed."
fi

# Check if anew is installed, and install if not
if ! command -v anew &>/dev/null; then
    echo "anew is not installed. Installing..."
    go install -v github.com/tomnomnom/anew@latest
else
    echo "anew is already installed."
fi

# Check if gf is installed, and install if not
if ! command -v gf &>/dev/null; then
    echo "gf is not installed. Installing..."
    go install -v github.com/tomnomnom/gf@latest
else
    echo "gf is already installed."
fi

# Check if dalfox is installed, and install if not
if ! command -v dalfox &>/dev/null; then
    echo " is not installed. Installing..."
    go install github.com/hahwul/dalfox/v2@latest
else
    echo " is already installed."
fi

# Check if jaeles is installed, and install if not
if ! command -v jaeles &>/dev/null; then
    echo " is not installed. Installing..."
    GO111MODULE=on go get github.com/jaeles-project/jaeles
else
    echo " is already installed."
fi
    
# Check if zaproxy, lolcat, figlet, sublist3r, commix, and sqlmap is installed, and install if not
sudo apt install -y sublist3r zaproxy sqlmap figlet lolcat commix

# Check if uro is installed, and install if not
if ! command -v uro &>/dev/null; then
    echo "uro is not installed. Installing..."
    git clone https://github.com/s0md3v/uro.git
    pip3 install uro/uro
else
    echo "uro is already installed."
fi

# Check if tplmap is installed, and install if not
git clone https://github.com/epinna/tplmap.git
pip3 install -r tplmap/requirements.txt --break-system-packages

# Check if cloud_enum is installed, and install if not
git clone https://github.com/initstring/cloud_enum.git
pip3 install -r cloud_enum/requirements.txt --break-system-packages

# check if commix is insralled and install if not
git clone https://github.com/commixproject/commix.git
python3 commix/setup.py install