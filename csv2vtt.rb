class Csv2vtt < Formula
  desc "Convert the contents of a CSV into a VTT subtitle file."
  homepage "https://github.com/LafayetteCollegeLibraries/homebrew-dss"
  url "https://github.com/LafayetteCollegeLibraries/webvtt-cli/archive/refs/tags/v1.0.tar.gz"
  sha256 "23bdd7ad3d0b112795af95876c3ae293be7d0269149b5ff1939768f1974191cc"
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
