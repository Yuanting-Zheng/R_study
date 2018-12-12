data()
n = 15
hist(Nile,breaks = n)
# def 
oddcount <- function(x){
  k <- 0
  for(n in x){
    if (n %% 2==1) k<- k+1
  }
  return(k)
}

oddcount(c(1,2,3))
# 字符串
u = paste("a",'b','c')
u
v = strsplit(u," ")
v

# 矩阵
#rbind row bind 的缩写
m <- rbind(c(1,4),c(4,7))
m
m1 <- cbind(c(2,5),c(7,8))
m1
m[2,2]

# 列表
x<- list(u = 2,v = "k")
x
x$u
hist(Nile)
com <- hist(Nile)
com
com$breaks
str(com)

# 数据框与矩阵
#数据框是包含了不同类型的数据的 
# help 与 example 
example("persp")


