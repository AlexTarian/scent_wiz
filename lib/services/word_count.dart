Map<String, int> countWords(String text) {
  // Create a map to store word frequencies
  Map<String, int> wordFrequency = {};

  // Split the text into words by spaces or any other delimiters as needed
  List<String> words = text.split(RegExp(r'\W+'));

  // Iterate through the words and update the word frequency in the map
  for (String word in words) {
    // Convert the word to lowercase to avoid case sensitivity
    String lowercaseWord = word.toLowerCase();

    // Update the word frequency in the map
    if (wordFrequency.containsKey(lowercaseWord)) {
      wordFrequency[lowercaseWord] = wordFrequency[lowercaseWord]! + 1;
    } else {
      wordFrequency[lowercaseWord] = 1;
    }
  }

  return wordFrequency;
}
