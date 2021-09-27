class Csv2vtt < Formula
  desc "Convert the contents of a CSV into a VTT subtitle file."
  homepage "https://github.com/LafayetteCollegeLibraries/homebrew-dss"
  url "https://github.com/LafayetteCollegeLibraries/webvtt-cli/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "88901df931125d18cacfb98f4ea6c2662b3a0252345682ae9d54cb5d139a0525"
  license ""

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "../"
      system "cmake", "--build", ".", "--config", "Release", "--target", "csv2vtt"
      system "cmake", "--install", "."
    end
  end

  test do
    system "#{bin}/csv2vtt"
  end
end
