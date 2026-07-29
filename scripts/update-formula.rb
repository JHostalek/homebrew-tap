path, asset_url, sha256 = ARGV
raise "usage: update-formula.rb <formula> <asset-url> <sha256>" unless sha256
raise "invalid asset URL" unless asset_url.match?(%r{\Ahttps://github\.com/[^/]+/[^/]+/releases/download/v\d+\.\d+\.\d+/[^/]+\.tar\.gz\z})
raise "invalid SHA-256" unless sha256.match?(/\A[0-9a-f]{64}\z/)

text = File.read(path)
raise "formula has no unique url" unless text.scan(/^  url ".+"$/).length == 1
raise "formula has no unique sha256" unless text.scan(/^  sha256 "[0-9a-f]+"$/).length == 1

text.sub!(/^  url ".+"$/, %(  url "#{asset_url}"))
text.sub!(/^  sha256 "[0-9a-f]+"$/, %(  sha256 "#{sha256}"))
File.write(path, text)
