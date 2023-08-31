def find_language_information(languages, language_name)
languages[language_name] 
end
hash = {
  ruby: { initial_release: 'December 25, 1996', is_beautiful?: true },
  javascript: { initial_release: 'December 4, 1995', is_beautiful?: false }
}
p find_language_information(hash, :ruby)


def add_information_about_language(languages, language_name, info_key, info_value)
  languages[language_name][info_key] = info_value
  languages
end
hash_2 = {
  ruby: { initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false }
}
language_name = :ruby
info_key = :is_beautiful?
info_value = "true"
p add_information_about_language(hash_2, language_name, info_key, info_value )


def add_language(languages, language_name, language_info_value)
  languages[language_name] = language_info_value
   languages
end
hash_3 =   {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}
key_to_add = :java
value_to_add = { is_beautiful?: false, initial_release: 'May 23, 1995'}

add_language(hash_3, key_to_add, value_to_add)


def delete_information_about_language(languages, language_name, info_key)
  languages [language_name].delete(info_key)
  languages
end
hash_4 =  {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}
language_name = :ruby
info_key = :is_beautiful?
delete_information_about_language(hash_4, language_name, info_key)


def delete_language(languages, language_name)
  languages.delete(language_name)
  languages
end
hash_5 =  {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}
delete_language(hash_5, :ruby)

def find_beautiful_languages(languages)
  languages.select{|key, value| value[:is_beautiful?] == true}
end
hash_6 =  {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' },
  python: { is_beautiful?: false, initial_release: 'Feb 20, 1991' }
}
find_beautiful_languages(hash_6)

def find_language_facts(languages, language_name, fact_index = 0)
languages.dig(language_name, :facts, fact_index)
end

hash_7 =     {
  ruby: { facts: ['was made for programmer happiness', 'its code is beautiful'],
   initial_release: 'December 25, 1996',
   is_beautiful?: true },

  javascript: { facts: ['you have to use semicolons everywhere', "its real name isn't even javascript"],
   initial_release: 'December 4, 1995',
   is_beautiful?: false }
}
find_language_facts(hash_7, :ruby, 1)