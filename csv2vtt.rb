class Csv2vtt < Formula
  desc "Convert the contents of a CSV into a VTT subtitle file."
  homepage "https://github.com/LafayetteCollegeLibraries/homebrew-dss"
  url "https://github.com/LafayetteCollegeLibraries/webvtt-cli/releases/download/v1.0.5/csv2vtt"
  sha256 "7b8e95499df9726793bf964821826a6c2357d1b1fe3123dce6cfc693ec00c154"
  license ""

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "mv", "$USER/Library/Caches/Homebrew/downloads/csv2vtt", "/usr/local/bin"
    end
  end

  test do
    system "#{bin}/csv2vtt"
  end
end
