def is_isogram(string):
    letters = string.lower()
    for letter in letters:
        if letter.isalpha():
            if letters.count(letter) > 1:
                return False
    return True
