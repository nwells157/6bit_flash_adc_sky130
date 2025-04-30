# A 6 bit flash ADC using open source tools and SkyWater130 PDK

[Top Block Diagram](/images/adc_top.pdf)
This project displays a framework for a 6-bit ADC that can be used for a future Tiny Tapeout run. The
team was able to download and use open-source tools for the entire flow and work on the project through a
git repository. The benefit of this is that anyone can clone the designs and simulate the design with relative
ease. Lowering the barrier for chip design can help research, lower cost and enable rapid prototyping for
designs.

Future developments require creating a set of specifications for a flash ADC comparing it to other designs
in similar technologies. Then the team choose and architecture of ADC and design the block individually.
The models for the encoder and DAC enable faster top-level simulation to verify the comparator design.
Once the design meets all specifications created the layout can be created using Magic. The encoder if made
in Verilog can use OpenROAD to synthesize the design.

The team set out to create a mixed signal design in open-source tools to create and evaluate macro
models. The goal was achieved as and shown with a top-level ADC design that functions as expected. For a
future Tiny Tapeout this repository can be used as a starting point to then create more advanced designs.