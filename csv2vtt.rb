class Csv2vtt < Formula
  desc "Convert the contents of a CSV into a VTT subtitle file."
  homepage "https://github.com/LafayetteCollegeLibraries/homebrew-dss"
  url "https://github.com/LafayetteCollegeLibraries/webvtt-cli/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "41180912192ee74604672c2ec6aea9dfd8f88c727a2590832728ee78e37e774e"
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
