# onion-omega-cc-docker
Cross Compile docker-isolated environment for Onion Omega
Based on https://wiki.onion.io/tutorials/cross-compile and http://community.onion.io/topic/1134/guide-to-cross-compilation-for-omega2

## Usage

* run isulated environment with `./run.sh`
* inside the container execute `./init.sh` to initialize the environment
* You will be asted to configure LEDE. For Omega boards select:
** `Target System (MediaTek Ralink MIPS)`
** `Subtarget (MT7688 based boards)`
** `Target Profile (Onion Omega2)` or `Target Profile (Onion Omega2+)`
** Select additional libraries you want to compile
* once steps above are complete you can build packages for omega inside the container. 
See https://wiki.onion.io/tutorials/cross-compile  (from step 4) for more details on this process
