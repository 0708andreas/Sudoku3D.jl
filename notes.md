# Notes

## PkgTemplates

``` julia
julia> t=Template(;user="0708andreas", dir=".", authors="Andreas Bøgh Poulsen", julia=v"1.6", plugins=[
               License(; name="GPL-2.0+"),
               Git(; manifest=false, ssh=true),
               GitHubActions(;extra_versions=["nightly"], x86=false, windows=false, osx=false), ## skip some defaults
               Codecov(),
               Documenter{GitHubActions}(),
               Develop(),
           ],)
		   
julia> t("Sudoku3D")
```



## Deploy keys

``` julia
julia> using DocumenterTools
julia> DocumenterTools.genkeys(user = "0708andreas", repo="Sudoku3D.jl")

```

Follow instructions.

OBS Remeber to set the proper workflow permissions: "horizontal menu: Settings -> vertical menu: Actions -> General -> section: Workflow permissions: choose "Read and write permissions" and check the box: "Allow GiHub Actions to create and approve pull requests". This is not needed to build documentation, but it is needed for compatHelper to create pull requests when dependencies need to be updated.


# Documentation

``` 
Sudoku3D$ julia -O0 --project=docs docs/make.jl 
```

Install needed packages for documentation:

``` julia
(Sudoku3D) pkg> activate docs/
  Activating project at `~/github/0708andreas/sudoku3d/Sudoku3D/docs`

(docs) pkg> add IterTools
```

