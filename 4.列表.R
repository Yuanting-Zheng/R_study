# 列表
# 向量的元素都要求是同类型的，列表不需要
# 列表可以组合多个不同类型的对象

j<-list(n="will",m=1000,u=T)
j

# 列表各个组件的名词叫标签(tags)

j$n

#列表是一个向量，所以可以用vector 来创建
z<-vector(mode="list")
z
z[["abc"]]<-3
z
z$abc

z[1]
z[["abc"]]
str(z)

# 在列表中增加和删除组件
z[[4]]<-8
z

# 删除元素，直接把它的值设置为NULL 后面元素的索引减一
z[[5]]<-"9"
z

z[[4]]<-NULL
z
z[[3]]<-NULL
z

# 获取列表的长度
length(z)

# 访问列表的元素 和 值

names(j)
w <- unlist(j)
w
unname(w)

# 在列表上使用 apply  lapply sapply

lapply(list(1:3,25:29),median) # 返回列表
sapply(list(1:3,25:29),median) # 返回矩阵或者向量

# order  返回排序后向量在原向量中的索引
x<- c(1,5,2,3)
order(x)

# 递归型列表
b<-list(u=5,v=12)
c<-list(w=13)
a<-list(b,c)
b
c
a
q<-c(list(a=1,b,c),recursive=T)  # 递归可以拿出来
q
