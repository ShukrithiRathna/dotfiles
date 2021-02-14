#!/bin/bash

# Visual Studio Code
# https://code.visualstudio.com/docs/setup/linux
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
rm microsoft.gpg
ln -s ~/dotfiles/VSCode/settings.json $HOME/.config/Code/User/settings.json
function install {
  name="${1}"
  code --install-extension ${name} --force
}
install ajshort.latex-preview-0.5.1             
install ms-azuretools.vscode-docker-1.9.1           
install redhat.vscode-yaml-0.15.0
install austin.code-gnu-global-0.2.2            
install mshr-h.veriloghdl-1.4.2                     
install ritwickdey.liveserver-5.6.1
install davidanson.vscode-markdownlint-0.38.0   
install ms-python.anaconda-extension-pack-1.0.1     
install shd101wyy.markdown-preview-enhanced-0.5.0
install grapecity.gc-excelviewer-3.0.41         
install ms-python.python-2019.11.50794              
install shd101wyy.markdown-preview-enhanced-0.5.16
install james-yu.latex-workshop-8.15.0          
install ms-python.python-2021.1.502429796           
install truecrab.verilog-testbench-instance-0.0.5
install jeffersonqin.latex-snippets-jeff-1.2.3  
install ms-toolsai.jupyter-2020.12.414227025        
install yzhang.markdown-all-in-one-3.4.0
install mads-hartmann.bash-ide-vscode-1.11.0    
install ms-vscode.cpptools-1.2.0
install moshfeu.diff-merge-0.4.3                
install ms-vscode-remote.remote-containers-0.155.1

