
# Keywords used in declarations 

关于声明关键字，open、public、private、fileprivate，项目里常常会有疑问，声明时候用对应的声明关键字呢？于是整理了一下。


关键字|open|public|private|fileprivate
---|:---:|:---:|:---:|---:
class|全局可访问，可被继承|不同project可被访问，只能在同一个project下被继承|只能在同一个文件下被访问|只能在同一个文件下被访问
property|全局可访问，可被继承类重写|不同project可被访问，只能在同一个project下被继承类重写|只能在定义的类、同源文件内的extension访问|只能在同一个文件下被访问
function|全局可访问，可被继承类重写|不同project可被访问，只能在同一个project下被继承类重写|只能在定义的类、同源文件内的extension访问|只能在同一个文件下被访问

[Demo传送门](https://github.com/Zac-Cheung/KeywordsDemo)
