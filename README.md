# README by Shane for how I build and obtain the updated luaossl artefacts:

On my Mac, where I have rancher installed, I run:

```bash
./build.sh
```
After the build, I run a copy of the image to a bash shell:

```bash
./rundocker.sh
```

Once this is running, I can download the build _openssl.so file (which is the only technical change at this point) from my Mac:

```bash
[16:59 luaossl] $ docker ps
CONTAINER ID   IMAGE                                COMMAND   CREATED          STATUS          PORTS     NAMES
8edd738afee9   us.icr.io/sweeden/linuxbuild:amd64   "bash"    18 minutes ago   Up 18 minutes             gracious_elbakyan
[17:01 luaossl] $ docker cp 8edd738afee9:/usr/local/lib/lua/5.4/_openssl.so ~/Downloads/_openssl.so
Successfully copied 691kB to /Users/sweeden/Downloads/_openssl.so
```

The `_openssl.so` file replaces that (in the same directory as shown above) from the luarocks install of luaossl on the target system.

You can also build a new PDF of the documentation when running the container:

```bash
cd /root/luaossl
make doc
[root@8edd738afee9 luaossl]# pwd
/root/luaossl
[root@8edd738afee9 luaossl]# make doc
enabling Lua 5.4
cd /root/luaossl/doc && pdflatex luaossl.tex
This is pdfTeX, Version 3.14159265-2.6-1.40.21 (TeX Live 2020) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode

...TRUNCATED...

Output written on luaossl.pdf (44 pages, 329965 bytes).
Transcript written on luaossl.log.
```

The new documentation file will be in `/root/luaossl/doc/luaossl.pdf` and can be copied from the image in the same manner as shown above for `_openssl.so`

