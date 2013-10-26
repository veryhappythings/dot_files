function vcd() { mvim -c "cd $@" ;}

function nt() { nosetests osirium-$1/tests/unit ;}
