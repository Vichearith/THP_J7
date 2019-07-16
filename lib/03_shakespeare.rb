dictionnary1 = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
dictionnary2 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
book = File.read("shakespeare.txt")
banned = File.read("banned.txt").split("\n")

def word_counter(word,dictionnary)
  hash = {}
  dictionnary.map{|i|
    if word.downcase.include?(i) == true 
    hash[i] = word.downcase.scan(i).count
    end
  }
  return hash
end