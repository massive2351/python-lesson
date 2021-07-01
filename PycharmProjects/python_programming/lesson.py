import re
import random

sorce = 'english-word01.txt'
with open(sorce) as f:
    data = f.read()

english_words = re.findall('[a-z]+', data)
ja = re.findall('[^a-z]+', data)

meanings = []
for word in ja:
  m = re.sub('\t|\n', '', word)
  meanings.append(m)

words_dict = dict(zip(english_words, meanings))

n_tests = 10
n_question = 10

for test_num in range(n_tests):
     with open('英単語テスト_{:02d}.txt'.format(test_num + 1), 'w') as f:
        f.write('出席番号:\n'
                '名前：\n\n'
                '第{}回 英単語テス\n\n'.format(test_num + 1)
                )

        for question_num in range(n_question):
            question_word = random.choice(english_words)
            corrct_answer = words_dict[question_word]

            meanings_copy = meanings.copy()
            meanings_copy.remove(corrct_answer)
            wrong_answers = random.sample(meanings_copy, 3)

            answers_options = [corrct_answer] + wrong_answers

            random.shuffle(answers_options)

            f.write('問{}. {}\n\n'.format(question_num + 1, question_word))

            for i in range(4):
                f.write('{}. {}\n'.format(i + 1 , answers_options[i]))

            f.write('\n\n')





