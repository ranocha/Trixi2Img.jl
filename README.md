# Trixi2Img.jl

[![Docs-stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://trixi-framework.github.io/Trixi.jl/stable)
[![Build Linux & macOS](https://travis-ci.com/trixi-framework/Trixi2Img.jl.svg?branch=master)](https://travis-ci.com/trixi-framework/Trixi2Img.jl)
[![Build Windows](https://ci.appveyor.com/api/projects/status/0q5gk3pmgnrfp5g9?svg=true)](https://ci.appveyor.com/project/ranocha/trixi2img-jl)
[![Codecov](https://codecov.io/gh/trixi-framework/Trixi2Img.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/trixi-framework/Trixi2Img.jl)
[![Coveralls](https://coveralls.io/repos/github/trixi-framework/Trixi2Img.jl/badge.svg?branch=master)](https://coveralls.io/github/trixi-framework/Trixi2Img.jl?branch=master)
[![License: MIT](https://img.shields.io/badge/License-MIT-success.svg)](https://opensource.org/licenses/MIT)
<!-- [![GitHub commits since tagged version](https://img.shields.io/github/commits-since/trixi-framework/Trixi2Img.jl/v0.1.0.svg?style=social&logo=github)](https://github.com/trixi-framework/Trixi2Img.jl) -->

**Trixi2Img.jl** can create PDF/PNG from 2D output files created by
[Trixi.jl](https://github.com/trixi-framework/Trixi.jl) (solution or restart
files). Trixi2Img is part of the [Trixi framework](https://github.com/trixi-framework).


## Installation
If you have not yet installed Julia, please [follow the instructions for your
operating system](https://julialang.org/downloads/platform/). Trixi2Img works
with Julia v1.5.

Trixi2Img is a registered Julia package. Hence, you can install it by executing
the following commands in the Julia REPL:
```julia
julia> import Pkg; Pkg.add("Trixi2Img")
```


## Usage
In the Julia REPL, first load the package Trixi2Img
```julia
julia> using Trixi2Img
```
To process an HDF5 file generated by Trixi.jl, execute
```julia
julia> Trixi2Img.convert(joinpath("out", "solution_000040.h5"), output_directory="out", grid_lines=true)
```
This will create a file `solution_000040_scalar.png` in the `out/` subdirectory
that can be opened with any image viewer:

<p align="center">
  <img width="300px" src="docs/src/assets/solution_000040_scalar_resized.png">
</p>

For further information on how to use Trixi with Trixi2Img, please refer to the
[documentation of Trixi](https://trixi-framework.github.io/Trixi.jl/stable/).


## Authors
Trixi2Img is maintained by the
[Trixi authors](https://github.com/trixi-framework/Trixi.jl/blob/master/AUTHORS.md).
Its principal developers are
[Michael Schlottke-Lakemper](https://www.mi.uni-koeln.de/NumSim/schlottke-lakemper)
(University of Cologne, Germany) and
[Hendrik Ranocha](https://ranocha.de) (KAUST, Saudi Arabia).


## License and contributing
Trixi2Img is licensed under the MIT license (see [LICENSE.md](LICENSE.md)).
