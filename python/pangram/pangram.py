def is_pangram(sentence):
    appear_letters = []
    letters = sentence.lower()
    for letter in letters:
        if letter.isalpha():
            if appear_letters.count(letter) == 0:
                appear_letters.append(letter)

    return len(appear_letters) == 26
