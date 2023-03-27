#!/bin/bash
# Install Homebrew
echo ">> Install Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install Required python packages
echo ">> Install Required python packages"
brew install cmake protobuf rust python@3.10 git wget
#Changing Directory
echo ">> Change directory"
cd ~/documents
mkdir Stable-diffusion
cd Stable-diffusion
# Clone Automatic1111 repository
echo ">> Clone Automatic1111 repository"
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
#Changing Directory
echo ">> Change directory"
cd stable-diffusion-webui/models/Stable-diffusion
# Download the Model Checkpoint
echo ">> Download the Model Checkpoint"
curl -LJO https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt
# Chage Directory
echo ">> Change directory"
cd ~/documents/Stable-diffusion/stable-diffusion-webui
# Install the required python packages
echo ">> Install and start Stable diffusion Web UI"
chmod +x ./webui.sh
# Run the webui
sh ./webui.sh