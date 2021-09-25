class Csv2vtt < Formula
  desc "Convert the contents of a CSV into a VTT subtitle file."
  homepage "https://github.com/LafayetteCollegeLibraries/homebrew-dss"
  url "https://github.com/LafayetteCollegeLibraries/webvtt-cli/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "ed6ea6f56c21f4296d132434e1b39a649662f10cc036c598250ee745dbf9d991"
  license ""

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "../"
      system "cmake", "--build", ".", "--config", "Release"
      system "cmake", "--install", ".", "-DCMAKE_INSTALL_PREFIX=/usr/local", "--config", "Release"
    end
  end

  test do
    system "#{bin}/csv2vtt"
  end
end
