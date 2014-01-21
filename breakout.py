
sentence = str()

word = raw_input("enter a word: ")
sentence = sentence + word
count = 0

while count == 0:
    word = raw_input("enter a word: ")

    if word not in ["?", "!", "."]:
        sentence = sentence + " " + word
    else:
        sentence = sentence + word
        break

print sentence