#  矩阵 
# 矩阵是特殊的向量 含有两个特殊的属性 行数和列数 也有数值型和字符型的模式概念
# matrix 
y <- matrix(c(1,2,3,4),nrow=2,ncol = 2)
y
y <- matrix(c(1,2,3,4),nrow=2) # 给出一个就OK
y

y[,2]

# 咱们来个空的试试看
x <- matrix(nrow=2,ncol = 2)
x

# 矩阵是按照列存储的，可以用byrow=T 来改变显示，但是存储不行

m<-matrix(c(1:6),nrow = 2,byrow = T)
m

# 矩阵赋值就是按照向量的规则进行

# col() row() 矩阵的行号和列号

row(m)
col(m)
m

#apply 函数
#apply 函数允许用户在矩阵的各行或者各列上调用指定的函数
#apply (m,dimcode,f,fargs)
# m  代表矩阵 dimcode 维度编号 1 代表行 2 代表 列 
# f 应用在 行或列上的函数
# fargs f 的可选参数集

z<- matrix(c(1:6),nrow = 3)
z
apply(z,2,mean)

# 也可以使用 colmeans()解决
colMeans(z)

# 转置函数 t()
t(z)

# 增加或删除矩阵的行或列
line<- seq(1:4)
line
q<-matrix(c(1:12),4,3)
q

# cbind
cbind(line,q)

# 矩阵的属性
z<-matrix(1:8,nrow=4)
z
length(z)
class(z)
attributes(z)
dim(z)

# drop函数可以禁止降维
r<-z[2,]
r
dim(r)
r<-z[2,,drop=F]
r

# 可以使用 as.matrix ()将向量转化为矩阵

u <- c(1:3)
u
v<-as.matrix(u)
v
c<-as.matrix(u,byrow=F)
c
t(c)

# 矩阵的行列命名规则
z<-matrix(c(1:4),2)
z
colnames(z)
colnames(z)<-c("a","b")
z
