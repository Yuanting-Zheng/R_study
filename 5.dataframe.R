#数据框
#数据框类似矩阵，但是数据框的每一列可以是不同的模式
kids<- c("jack","jill")
kids
ages<-c(11,23)
ages
d<-data.frame(kids,ages,stringsAsFactors = F)
d
#数据框的索引
d[[1]]
d$kids
d[,1]

str(d) # 看数据框的内部结构

# 数据框可以看做矩阵，很多矩阵的操作也可以使用

d[,1,drop=F]

# 对于缺失值，我们可以设置 na.rm 来设置

x<-c(2,NA,4)
mean(x)
mean(x,na.rm=TRUE)

# subset 可以直接给出省略NA的计算结果
names<-c("will","bean",NA,"dof","ewq")
ages<-c(1,4,5,NA,5)
ok<-data.frame(names,ages,stringsAsFactors = F)
ok
subset(ok,ages>4)

# complete.cases也可以这么做 直接给出不是NA的行号

ok2<-ok[complete.cases(ok),]
ok2

# 使用rbind 和cbind 等函数
ok2
rbind(ok2,list("lisa",3))
ok2$new<-(ok2$ages-1)
ok2
# 还可以增加循环补齐

# 可以使用apply 函数
apply(ok2,1,max)


# 合并数据框merge()
# 可以根据同一个列的名字合并中间相同的行
# 通过by.x by.y 来选择不同的列名

ages<-c(1,2,3)
names<-c("a","b","c")
d<-data.frame(ages,names,stringsAsFactors = F)
d
people<-c("a","b","g")
height<-c(3,6,8)
d2<-data.frame(people,height,stringsAsFactors = F)
d2
d3<-merge(d,d2,by.x="names",by.y="people")
d3







































