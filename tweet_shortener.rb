# Write your code here.

def dictionary
  
  dictionary = {
    
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  
end

def word_substituter(tweet)
  arr = tweet.split(" ")
  short = arr.collect do |words|
    if dictionary.keys.include?(words.downcase)
      dictionary[words.downcase]
    else
      words
    end
end
 short.join(" ")
 end
 
 def bulk_tweet_shortener(tweets)
   tweets.map do |tweet|
     puts word_substituter(tweet)
   end
 end
 
 def selective_tweet_shortener(tweet)
   if tweet.size > 140
     word_substituter(tweet)
else
  tweet
 end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet).truncate(143)
  else
    tweet
  end
end
    
     
  