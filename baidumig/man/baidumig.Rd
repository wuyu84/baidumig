\name{migration on baidu}
\alias{mig}
\title{baidumig}
\usage{
cityrank(city,direction,riqi)
  city：为爬取的城市名称，名称完整包含‘市’，比如‘深圳市’
  direcion： 为迁入迁出方向，可选 'in' 或 'out'
  riqi： 为日期，格式为20200203 这种纯数字型
函数返回结果为数据框

migscale(city,direction)
  city：为爬取的城市名称，名称完整包含‘市’，比如‘深圳市’
  direcion： 为迁入迁出方向，可选 'in' 或 'out'
函数返回结果为数据框
}
\description{
百度迁徙数据爬取
1.cityrank 爬取城市间迁徙比例
2.migscale 爬取城市迁徙规模
3.包里内置城市代码数据框citycode
}
\examples{
cityrank('深圳市','in',20200201)
migscale('深圳市','in')
}
