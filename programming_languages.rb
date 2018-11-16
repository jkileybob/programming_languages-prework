require pry
def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles_of_lang, value_hash|
    value_hash.each do |language, lang_attribute_hash|
      if !new_hash.has_key?(language)
        new_hash[language] = {
          [:type]=>[lang_attribute_hash][:type],
          binding.pry
          :style=>[]
        }
      end
      new_hash[language][:style] << styles_of_lang
    end
  end
  new_hash
end
