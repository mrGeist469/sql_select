sec = int(input('Enter seconds: '))
h = (sec // 3600) % 24
m = (sec // 60) % 60
s = sec % 60

print('%d:%02d:%02d' % (h, m, s))