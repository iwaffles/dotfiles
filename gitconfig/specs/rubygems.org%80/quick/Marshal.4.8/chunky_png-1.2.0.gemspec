u:Gem::Specification�["
1.3.7i"chunky_pngU:Gem::Version["
1.2.0u:	Time��    "FPure ruby library for read/write, chunk-level access to PNG filesU:Gem::Requirement[[[">=U; ["0U;[[[">=U; ["0"	ruby[o:Gem::Dependency
:@requirementU;[[[">=U; ["0:@prereleaseF:@version_requirements@ :
@name"	rake:
@type:developmento;
;	U;[[["~>U; ["2.2;
F;@*;"
rspec;;0["willem@railsdoctors.com["Willem van Bergen"�    This pure Ruby library can read and write PNG images without depending on an external 
    image library, like RMagick. It tries to be memory efficient and reasonably fast.
    
    It supports reading and writing all PNG variants that are defined in the specification, 
    with one limitation: only 8-bit color depth is supported. It supports all transparency, 
    interlacing and filtering options the PNG specifications allows. It can also read and 
    write textual metadata from PNG files. Low-level read/write access to PNG chunks is
    also possible.
    
    This library supports simple drawing on the image canvas and simple operations like
    alpha composition and cropping. Finally, it can import from and export to RMagick for 
    interoperability.
    
    Also, have a look at OilyPNG at http://github.com/wvanbergen/oily_png. OilyPNG is a 
    drop in mixin module that implements some of the ChunkyPNG algorithms in C, which 
    provides a massive speed boost to encoding and decoding.
"1http://wiki.github.com/wvanbergen/chunky_pngT@[ 