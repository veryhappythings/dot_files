function vcd() { mvim -c "cd $@" ;}
function getpass() { security -q find-generic-password -g -l $@ "/Users/mac/Library/Keychains/billmonitor.keychain" 2>&1 | awk -F\" '/^password:/ {print $2}' | pbcopy ;}

function nt() { nosetests osirium-$1/tests/unit ;}
