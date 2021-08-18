def bob_responds(sentence)
# 1. If the `sentence` ends with a period, Bob should respond with: "Sounds good." 
  if sentence.include? "."
    puts "Sounds good."

# 2. If the `sentence` ends with an exclamation point, Bob should respond with: "Whoa, chill out!"
  elsif sentence.include? "!"
    puts "Whoa, chill out!"

# 3. If the `sentence` ends with a question mark, Bob should respond with: "Sure."
  elsif sentence.include? "?" 
    puts "Sure."

# 4. If the `sentence` only contains whitespace (that is, spaces or tabs and the like), Bob should respond with: "Fine, be that way."
  elsif sentence.empty? 
    puts "Fine, be that way."
  elsif sentence.end_with? " " 
    puts "Fine, be that way."
 
# 5. If the `sentence` doesn't match any of the other rules on this list, Bob should respond with: "Whatever."
  elsif sentence.include? ("a".."z").to_s
    puts "Whatever."

# 6. If the `sentence` is written in ALL CAPS, Bob should respond with: "Why are you yelling at me?" NOTE: This should be true even if there are some non-letter characters in the `sentence` as well. However, if the `sentence` contains no alphabet letters, the `sentence` should *not* be considered all caps.
  elsif sentence.end_with? (sentence.upcase)
    puts "Why are you yelling at me?"
  
# 7. However, there's one exception to the previous rule. If the `sentence` is written in all caps *and* ends with a question mark, Bob should respond with: "Calm down, I know what I'm doing!"
  elsif sentence.end_with? (sentence.upcase?)
    puts "Calm down, I know what I'm doing!"
  end

# 8. All the above rules that pertain to sentences ending with certain punctuation should hold true even if there is some whitespace after the ending punctuation. For example, if the `sentence` is `"How are you doing?         "` - this should still be treated as if the sentence ends with a question mark even though there's space following the question mark.

# 9. If there are no alphabet characters, and the sentence does not end with a question mark, Bob should respond with: "Whatever."
end

bob_responds("I'm a fox.")
bob_responds("What a great day this is!")
bob_responds("Should I eat this cake?")
bob_responds("   ")
bob_responds("PLEASE FAX IT TO ME BY FRIDAY")
bob_responds("PLEASE FAX IT TO ME BY FRIDAY?")
bob_responds("this isn't covered by another rule")
