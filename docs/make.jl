using Walsh
using Documenter

DocMeta.setdocmeta!(Walsh, :DocTestSetup, :(using Walsh); recursive=true)

makedocs(;
    modules=[Walsh],
    authors="Shuhei Yoshida <yshuhei@ele.kindai.ac.jp> and contributors",
    sitename="Walsh.jl",
    format=Documenter.HTML(;
        canonical="https://syoshida1983.github.io/Walsh.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/syoshida1983/Walsh.jl",
    devbranch="master",
)
