# Write your code here.

def dictionary
  
  dictionary = {
    
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
  
end

def word_substituter(tweet)
  arr = tweet.split(" ")
  short = arr.collect do |words|
    if dictionary.keys.include?(words)
      dictionary[words]
    else
      words
    end
end
 short.join(" ")
 end
 
 def bulk_tweet_shortener(tweets)
   tweets.each do |tweet|
     puts word_substituter(tweet)
   end
 end
     