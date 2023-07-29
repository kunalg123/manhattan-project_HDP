 # **# VSD-HDP-Manhattan-Project**
> -  Inspired by J.R.Oppenheimer


## Table of Contents

+ [ Tools installation][1]

1. [Yosys](#####%20<u>Yosys</u>)
2. [iverilog](#markdigsyntaxinlineshtmlinlineiverilogmarkdigsyntaxinlineshtmlinline)
3. [gtkwave](#markdigsyntaxinlineshtmlinlinegtkwavemarkdigsyntaxinlineshtmlinline)

&nbsp;
&nbsp;



 ## Tools installation 
   [1]: #tools-installation

##### <u>Yosys</u>



~~~
$ git clone https://github.com/YosysHQ/yosys.git
$ cd yosys
$ sudo apt install make (If make is not installed please install it) 
$ sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev
$ make 
$ sudo make install
~~~
&nbsp;
![](images/Screenshot%20from%202023-07-23%2014-05-07.png)


&nbsp;
&nbsp;
  
#### <u>iverilog</u>

```
sudo apt-get install iverilog
```

![](images/Screenshot%20from%202023-07-23%2014-14-12.png)

&nbsp;
&nbsp;


#### <u>gtkwave</u>

```
sudo apt update
sudo apt install gtkwave
```

![](images/Screenshot%20from%202023-07-23%2014-15-44.png)

&nbsp;
&nbsp;
&nbsp;


<details>
<summary>Day 1</summary>
<br>
<details>
<summary>Short Summary</summary>

The Purpose of this is to know the basic idea about the different tools in flow and use the good_mux.v to verify the functionality in iverilog by giving the stimulus and code we get the .vcd file to view in the gtkwave and next id to generate the netlist using the yosys tool . The Design and the Liberty file are given to the tool to generate the netlist using the skywater 130 Standard cell Library.
</details>
&nbsp;
&nbsp;
&nbsp;

<details>
<summary>Source Files:</summary>

The verilog Codes and Liberty files are available using this repo 
https://github.com/kunalg123/sky130RTLDesignAndSynthesisWorkshop.git


I have used good_mux.v which is simple mux to verify its functionality in iverilog and gtkwave.


<br>
</details>

&nbsp;
<details>
<summary>Simulation :</summary>

These are following commands used to simulate view waveforms 

```
iverilog <name verilog: good_mux.v> <name testbench: tb_good_mux.v>
./a.out
gtkwave tb_good_mux.vcd
```
![](images/gtkwave.png)
<br>
</details>


<details>
<summary>Synthesis aka Yosys :</summary>
Follow the commands to synthesize the design to get the design view.

```
yosys> read_liberty -lib <path to lib file>
yosys> read_verilog <path to verilog file>
yosys> synth -top <top_module_name>
yosys> abc -liberty <path to lib file>
yosys> show
```
![](images/synthesis.png)

following Commands are used to generate the netlist
```
yosys> write_verilog <file_name_netlist.v>
yosys> write_verilog -noattr <file_name_netlist.v>
```
![](images/netlist.png)
<br>
</details>

