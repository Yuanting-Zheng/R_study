# 对向量的学习
# 明确向量是R语言的基础单元
# R中向量索引从1 开始
# R中向量是连续存储的，所以不能插入或者删除
# 我们通过重新赋值实现元素的删除和添加

a <- c(1,2,3)
a1 <- c(a[1:2],123,a[3])
a1

# 获取向量的长度
a2<-length(a1)
a2


#申明以个向量
b <- vector(length = 2)
b
b[1]= 1
b[2]= 2
b
# 两个向量之间运算，会循环补齐
c(1,2)+c(1,2,3,4,5,6)

# 向量索引
d<- c(1,2,3,4,5,6,7,8,9)
d[c(1,3,4,1)]

# 负数的下标代表我们要把相应的元素剔除
d[-c(1,3,4,1)]
d[-1]
d[-length(d)] # 去除最后一个元素

# seq 函数
seq(12,30,3)  # 3是by 
seq(1.1,2,length = 10)

# rep 函数
# 就是重复
rep(1,4)
rep(b,5)
rep(b,each=3)  # each 代表交替出现

# any 和 all
e <- seq(1:10)
any(e>5) # 至少
all(e>2)  # 所有

# sum 求和
sum(e)
# cumsum 累加和
cumsum(e)
# mean 平均数
mean(e)
# round 四舍五入
round(e)
# sqrt 开根号
sqrt(e)

# matrix 转成矩阵
matrix(e,ncol = 2)

# NA 与 NUll 值



