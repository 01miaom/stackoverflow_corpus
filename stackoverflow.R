library(rvest)
library(xml2)
library(stringr)
library(progress)

data = c("time","queation head","question body","answer")

pb <- progress_bar$new(
  format = 'Downloading [:bar] :percent eta: :eta',
  total = 100, clear = FALSE, width = 60
)

try(
for(i in 1:100){
  
Sys.sleep(0.2)
  
# process bar
pb$tick()
   
# search the page url
listurl = str_c("http://172.0.0.1/content/stackoverflow.com_en_all_2022-11/questions_page=",i)
listPage = read_html(listurl)
urls = listPage %>% html_nodes(".summary > h3 > a") %>% html_attr('href')
urls = substr(urls,2,nchar(urls))
urls = str_c("http://172.0.0.1/content/stackoverflow.com_en_all_2022-11",urls)
# get the page


for(url in urls){
page = read_html(url)

time = page %>% html_nodes(".s-user-card--time") %>% html_text()
time = time[1]
questionHead = page %>% html_nodes("#question-header") %>% html_text()
body = page %>% html_nodes(".s-prose") %>% html_text()
body = gsub(pattern='\\n',replacement = "", body)

l = length(body)
questionBody = body[1]
answer = body[2]

data_i = c(as.character(time), as.character(questionHead), as.character(questionBody), as.character(answer))
data = rbind(data, data_i)
}

}
)

View(data)
