# Write your code here.

def dictionary
  library = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&",
    "For" => "4"
  }
end

def word_substituter(phrase)
  phrase_array = phrase.split(" ")
  dictionary_keys = dictionary.keys
  dictionary_subs = dictionary.values

  phrase_array.map! do |word|
    if dictionary_keys.include?(word)
      index_word = dictionary_keys.index(word)
      replacement = dictionary_subs[index_word]
      word = replacement
    else
      word = word
    end
  end
  phrase_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map! do |phrase|
     puts word_substituter(phrase)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  final_tweet = selective_tweet_shortener(tweet)
  if final_tweet.length > 140
    final_final_tweet = final_tweet[1...141]
  else
    final_tweet
  end
end
