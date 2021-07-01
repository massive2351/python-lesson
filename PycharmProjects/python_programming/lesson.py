import re
sorce = 'english-word01.txt'
with open(sorce) as f:
    data = f.read()

english_words = re.findall('[a-z]+', data)
ja = re.findall('\s.*\n', data)

for word in ja:
