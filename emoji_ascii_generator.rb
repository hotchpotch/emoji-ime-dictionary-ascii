#!/usr/bin/env ruby

require 'open-uri'
require 'json'

json = URI.open('https://raw.githubusercontent.com/muan/emojilib/master/emojis.json').read
# json = open('./emojis.json').read
emojis = JSON.parse(json)

emoji_list = emojis.map do |main_key, data|
  [main_key, data['keywords']].flatten.map {|key| [":#{key.upcase}", data['char'], '記号'].join("\t") }
end.flatten(1).sort.uniq.find_all {|d| d.match(/[a-zA-Z\d]/) }

open('emoji_ascii_dict.txt', 'w') {|file| file.puts emoji_list.join("\n")}

open('emoji_ascii_dict_u16le.txt', 'wb:UTF-16LE') {|file|
  file.write "\uFEFF" # BOM
  file.puts emoji_list.join("\r\n").encode('UTF-16LE')
}
