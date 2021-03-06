module Test2D

using Test
using Trixi2Img

include("test_trixi2img.jl")

# Start with a clean environment: remove Trixi output directory if it exists
outdir = "out"
isdir(outdir) && rm(outdir, recursive=true)


@testset "2D" begin
  run_trixi(joinpath("2d", "parameters.toml"), n_steps_max=1)

  @testset "uniform mesh as PNG" begin
    test_trixi2img("solution_000000.h5", outdir)
        # To be able to compare hashes, we would need to make sure that exactly the same versions
        # of all required libraries are installed everywhere, which does not seem to be a good option
        # right now.
        # hashes=[("solution_000000_scalar.png", "f7da610fc8ab16aa691b1b0ecd956d67d6f68e06")])
  end

  # PDF tests do not work on Windows
  if !Sys.iswindows()
    @testset "uniform mesh as PDF with grid lines" begin
      test_trixi2img("solution_000000.h5", outdir,
          format=:pdf, grid_lines=true)
          # To be able to compare hashes, we would need to make sure that exactly the same versions
          # of all required libraries are installed everywhere, which does not seem to be a good option
          # right now.
          # hashes=[("solution_000000_scalar.pdf", "e62024c18ae010748f8c7b840bf7475ae398799a")])
    end
  end
end

# Clean up afterwards: delete Trixi output directory
@test_nowarn rm(outdir, recursive=true)

end
