> [!IMPORTANT]
> The functions provided by this package have been merged into [Hadamard.jl](https://github.com/JuliaMath/Hadamard.jl).

# Walsh

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://syoshida1983.github.io/Walsh.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://syoshida1983.github.io/Walsh.jl/dev/)
[![Build Status](https://github.com/syoshida1983/Walsh.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/syoshida1983/Walsh.jl/actions/workflows/CI.yml?query=branch%3Amaster)

This package provides the function for the generation of the [Walsh matrix](https://en.wikipedia.org/wiki/Walsh_matrix).

# Installation

To install this package, open the Julia REPL and run

```julia
julia> ]add Walsh
```

or

```julia
julia> using Pkg
julia> Pkg.add("Walsh")
```

# Usage

Import the package first.

```julia
julia> using Walsh
```

To generate the $n\times n$ Walsh matrix, call the `walsh` function with argument `n`.

```julia
julia> walsh(8)
8×8 Matrix{Int8}:
 1   1   1   1   1   1   1   1
 1   1   1   1  -1  -1  -1  -1
 1   1  -1  -1  -1  -1   1   1
 1   1  -1  -1   1   1  -1  -1
 1  -1  -1   1   1  -1  -1   1
 1  -1  -1   1  -1   1   1  -1
 1  -1   1  -1  -1   1  -1   1
 1  -1   1  -1   1  -1   1  -1
```

If `n` is not a power of 2, an error occurs.
