require "yaml"

<<<<<<< HEAD
APOLOGY = "Sorry, that emoticon was not found"

=======
>>>>>>> 3ce314c703cbf351de419f0d3b4bc7e23c88f6a9
#
def load_library(path)
  file_hash = YAML.load_file(path)

  emoticons = {
    "get_emoticon" => convert_to_english_as_keys_to_japanese(file_hash),
    "get_meaning" => convert_to_japanese_as_keys_to_meaning(file_hash)
  }
  
  #pp emoticons
  
  return emoticons
end

#
def get_japanese_emoticon(path, english_emo)
  emoticons = load_library(path)
<<<<<<< HEAD
  match = emoticons["get_emoticon"][english_emo]
  return match ? match : APOLOGY
=======
  emoticons[english_emo]
>>>>>>> 3ce314c703cbf351de419f0d3b4bc7e23c88f6a9
end

#
def convert_to_english_as_keys_to_japanese(emoticons)
  emoticons.map do |meaning, values|
    [values[0], values[1]]
  end.to_h
end

#
def get_english_meaning(path, japanese_emo)
  emoticons = load_library(path)
<<<<<<< HEAD
  
  match = emoticons["get_meaning"][japanese_emo]
  return match ? match : APOLOGY
=======
  emoticons[japanese_emo]
>>>>>>> 3ce314c703cbf351de419f0d3b4bc7e23c88f6a9
end

#
def convert_to_japanese_as_keys_to_meaning(emoticons)
  emoticons.map do |meaning, values|
    [values[1], meaning]
  end.to_h
end
