cd ~
# https://github.com/JSBSim-Team/jsbsim/blob/master/UnrealEngine/README.md

# Download UnrealEngine 5.6.0 and the Unreal Linux Bridge for 5.6.0
# Drag & drop Linux Bridge into Unreal and move it to home (~)

# Install Dependencies
sudo apt install cmake make clang libc++-dev libc++abi-dev

# Get JSBSim
git clone https://github.com/JSBSim-Team/jsbsim.git

# Build UE Plugin (https://github.com/JSBSim-Team/jsbsim/blob/master/UnrealEngine/README-Unix.md)
bash ~/jsbsim/JSBSimForUnrealLinux.sh

# FIX: Create a missing sys link Unreal is expecting
cd ~/jsbsim/UnrealEngine/Plugins/JSBSimFlightDynamicsModel/Source/ThirdParty/JSBSim/Lib/Linux/
ln -s libJSBSim.so libJSBSim.so.1
cd ~

# Run Unreal App with plugin
~/Unreal_Engine_5.6.0/Engine/Binaries/Linux/UnrealEditor ~/jsbsim/UnrealEngine/UEReferenceApp.uproject
