class Csv2vtt < Formula
  desc "Tool for converting the contents of a CSV into a VTT subtitle file."
  homepage "https://github.com/LafayetteCollegeLibraries/homebrew-dss"
  url "https://github.com/LafayetteCollegeLibraries/webvtt-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4d6527dc8c7099766d2773424156f474bac8a3414d29d85e02ed9230ed7cc665"
  license ""

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "../"
      system "cmake", "--build", "."
    end
  end

  test do
    system "#{bin}/csv2vtt"
  end
end
