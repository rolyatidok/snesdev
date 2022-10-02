# Tools to install

## Install wla-dx

### Linux
--- 
[wla-dx](https://github.com/vhelin/wla-dx) cross-compiler

`git clone https://github.com/vhelin/wla-dx.git`

#### Install cmake prerequisite
`sudo [apt|dnf|yum] install cmake`

#### Create makefile
`cd wla-dx && mkdir build && cd build && cmake ..`

#### Make and install binaries
`make -j4 && sudo make install`

---

Windows

Binary is included in tools/windows

Add to path
- `$env:Path += ";C:\<project-dir>\snesdev\tools\windows\wla_dx_v10.2_Win32;"`