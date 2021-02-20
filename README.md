# baidumig
此包用于爬取百度迁徙数据，内含2个函数和1个数据框
1.cityrank 爬取城市间迁徙比例
cityrank(city,direction,riqi)
  city：为爬取的城市名称，名称完整包含‘市’，比如‘深圳市’
  direcion： 为迁入迁出方向，可选 'in' 或 'out'
  riqi： 为日期，格式为20200203 这种纯数字型
函数返回结果为数据框
例：
cityrank('深圳市','in',20200201)

2.migscale 爬取城市迁徙规模
migscale(city,direction)
  city：为爬取的城市名称，名称完整包含‘市’，比如‘深圳市’
  direcion： 为迁入迁出方向，可选 'in' 或 'out'
函数返回结果为数据框
例：
migscale('深圳市','in')

3.包里内置城市代码数据框citycode

注意：仅供学习研究使用。同时请务必谨慎使用，所造成的一切法律后果由个人承担。



