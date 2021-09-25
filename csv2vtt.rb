class Csv2vtt < Formula
  desc "Convert the contents of a CSV into a VTT subtitle file."
  homepage "https://github.com/LafayetteCollegeLibraries/homebrew-dss"
  url "https://github.com/LafayetteCollegeLibraries/webvtt-cli/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "d4e0c027c929a8706c2e33aefbdcb768115887e4cc456f08aa56eba6438f0971"
  license ""

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "../"
      system "cmake", "--build", ".", "--config", "Release"
      system "cmake", "--install", ".", "--config", "Release"
    end
  end

  test do
    system "#{bin}/csv2vtt"
  end
end
