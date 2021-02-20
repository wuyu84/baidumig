
#爬取城市迁入迁出比例
cityrank=function(city,direction,riqi){
  require(jsonlite)
  require(magrittr)
  u1='http://huiyan.baidu.com/migration/cityrank.json?dt=city&id='
  u2='&type=move_'
  u3='&date='
  code=citycode$city_code[citycode$city==city] %>% .[1] %>% as.numeric
  url=paste(u1,code,u2,direction,u3,riqi,sep = '')
  p1=fromJSON(url) %>% .[3] %>% as.data.frame()
  names(p1)=c('city_name','province_name','ratio')
  return(p1)
}

#爬取城市迁入迁出规模
migscale=function(city,direction){
  require(jsonlite)
  require(magrittr)
  require(dplyr)
  u1='http://huiyan.baidu.com/migration/historycurve.jsonp?dt=city&id='
  u2='&type=move_'
  code=citycode$city_code[citycode$city==city] %>% .[1] %>% as.numeric #提取城市代码
  url=paste(u1,code,u2,direction,sep = '')
  tt=readLines(url)[2]
  tt2=substr(tt,4,nchar(tt)-1)#以上三行处理fromjson不能读取的问题
  p1=fromJSON(tt2) %>% .[3] %>% unlist %>% as.data.frame
  p2=mutate(p1,date=row.names(p1) %>%
             gsub('data.list.','',.) %>%
             as.Date(.,'%Y%m%d')) %>%
    select(2,1)
  names(p2)[2]='scale'
  return(p2)
}

