cd ~
# https://github.com/JSBSim-Team/jsbsim/blob/master/UnrealEngine/README.md

# 1. Download UnrealEngine 5.6.0 and the Unreal Linux Bridge for 5.6.0
# 2. Drag & drop Linux Bridge into Unreal and move it to home (~)

# 3. Install Dependencies
sudo apt install cmake make clang libc++-dev libc++abi-dev

# 4. Get JSBSim
git clone https://github.com/JSBSim-Team/jsbsim.git

# 5. Run Install (https://github.com/JSBSim-Team/jsbsim/blob/master/UnrealEngine/README-Unix.md)
bash ~/jsbsim/JSBSimForUnrealLinux.sh

# 6. FIX: Create a missing sys link Unreal is expecting
cd ~/jsbsim/UnrealEngine/Plugins/JSBSimFlightDynamicsModel/Source/ThirdParty/JSBSim/Lib/Linux/
ln -s libJSBSim.so libJSBSim.so.1
cd ~

# 6. Build Unreal App
~/Unreal_Engine_5.6.0/Engine/Binaries/Linux/UnrealEditor ~/jsbsim/UnrealEngine/UEReferenceApp.uproject
