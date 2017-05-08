# Write your code here.

def dictionary
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at"  => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  shortened_tweet_array = []
  tweet_array.each do |word|
    dictionary
    if dictionary.keys.any? {|key| key == word.downcase}
      shortened_tweet_array << dictionary[word.downcase]
    else
      shortened_tweet_array << word
    end
  end
  shortened_tweet = shortened_tweet_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      return word_substituter(tweet)
    else
      return tweet
    end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    truncated_tweet = "#{word_substituter(tweet)[1..137]}..."
    return truncated_tweet
  else
    return word_substituter(tweet)
  end
end
