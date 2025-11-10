cd kernel/xiaomi/sm8250
git submodule update --init --remote --merge
rm -rf KernelSU-Next/userspace/su
cd ../../..
#!/bin/bash

base64 -d device/xiaomi/munch/configs/camera/secret > device/xiaomi/munch/configs/camera/st_license.lic
