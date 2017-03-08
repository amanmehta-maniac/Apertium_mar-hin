import codecs,os
os.system("touch wow")
flag = 0
st=""


with codecs.open("./apertium-mar.mar.dix",encoding='utf-8') as fo:
	inp = fo.read();
	with codecs.open("./wow",encoding='utf-8') as wr:
		wr.write(inp);
	# for line in inp:
	# 	l = line.split('<');
	# 	print l
	# 	if len(l) > 1:
	# 		for i in range(len(l)):
	# 			x=l[i].split(' ');
	# 			if x[0]=="pardef":
	# 				flag=1;
	# 			if x[0]=="/pardef":
	# 				flag=0;
	# 		if flag==1: 
	# 			st+=str(l);
	# 		if flag==0:
	# 			print st
	# 			st=""




	# for x in range(len(l)):
	# 	if x==0 : print l[x]
