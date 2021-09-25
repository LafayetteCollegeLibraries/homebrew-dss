class Csv2vtt < Formula
  desc "Convert the contents of a CSV into a VTT subtitle file."
  homepage "https://github.com/LafayetteCollegeLibraries/homebrew-dss"
  url "https://github.com/LafayetteCollegeLibraries/webvtt-cli/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "b366d6cdc92fa1c12bc263b6a37a49f99c4322fba015d2aaaa0a9f5a69ac5e21"
  license ""

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "../"
      system "cmake", "--build", ".", "--config", "Release"
      system "cmake", "--install", "."
    end
  end

  test do
    system "#{bin}/csv2vtt"
  end
end
