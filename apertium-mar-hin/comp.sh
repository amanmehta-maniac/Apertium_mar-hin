lt-comp lr ../apertium-mar/apertium-mar.mar.dix mar-hin.automorf.bin
lt-comp rl ../apertium-hin/apertium-hin.hin.dix mar-hin.autogen.bin
lt-comp lr ../apertium-hin/apertium-hin.hin.dix hin-mar.automorf.bin
lt-comp rl ../apertium-mar/apertium-mar.mar.dix hin-mar.autogen.bin
lt-comp lr apertium-mar-hin.mar-hin.dix mar-hin.autobil.bin
lt-comp rl apertium-mar-hin.mar-hin.dix hin-mar.autobil.bin
lt-comp lr ../apertium-mar/apertium-mar.mar.dix mar.analyser.bin
lt-comp lr ../apertium-hin/apertium-hin.hin.dix hin.analyser.bin

mv hin.analyser.bin ../apertium-hin/
mv mar.analyser.bin ../apertium-mar/
./autogen.sh --with-lang1=../apertium-mar --with-lang2=../apertium-hin
make
