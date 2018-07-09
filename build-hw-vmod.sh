cp tree.make hw
cd hw
./tools/bin/tmake -build vmod
cd ..
cp -r hw/outdir/nv_small/vmod vsrc
