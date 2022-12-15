# stackoverflow_corpus
stack overflow 语料，可以用来训练代码类语言模型

文件包括：
stackoverflow.R 数据抓取代码
stack overflow top popular 1500个问题以及最优解答
stack overflow #python tag下的全部回答

数据样品：

<table>
<tr>
<td>time</td>
<td>question head</td>
<td>question body </td>
<td>answer</td>
</tr>
<tr>
<td>edited Oct 20 '21 at 20:07 </td>
<td>Why is processing a sorted array faster than processing an unsorted array?</td>
<td>Here is a piece of C++ code that shows some very peculiar behavior. etc...</td>
<td>You are a victim of branch prediction fail.What is Branch Prediction?Consider a railroad junction:Image by Mecanismo, etc...</td>
</tr>
</table>


声明：
1. 数据抓取自搭建的stack overflow镜像网站，请不要对stackoverflow.com使用高强度的爬虫
2. 数据收集过程已经尽量屏蔽了个人隐私信息，如果有残留的隐私信息我会第一时间删除
3. 请不要将生成的对话用于stack overflow社区，这会污染社区的优质回答


