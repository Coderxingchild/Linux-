# 注释部分
# $(wildcard ./*.c) 获取所有 .c 结尾文件

#将 src 变量内容中.c替换成.o，然后存放到obj变量中
#  obj=$(patsubst %c,%.o,$(src))
#test:$(obj)
#	gcc $^ -o $@
#	

#src=$(wildcard ./*.c)
#test:test.c
#	gcc test.c -o test
#	gcc $^ -o $@


#test:test.o,test1.o,test2.o
#	gcc -c $^ -o $@

#%.o:%.c
#	gcc -c $< -o $@


# 伪对象，声明一个对象与外部文件无关，每次都要重新生成
# 若有对象不管外部是否存在，都要执行语句则可以声明为伪对象
# 执行清理工作

#.PHONY:clean
#clean:
#	rm  -rf $(obj) test
#
#

test:test.o test1.o test2.o
	gcc  $< -o $@

%.o:%.c
	gcc -c $^ -o $@

