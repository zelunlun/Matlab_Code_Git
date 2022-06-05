"""
    ReferenceURL = https://www.nba.com/stats/teams/catch-shoot/
"""


# from urllib.request import urlopen
# from bs4 import BeautifulSoup
# import pandas as pd
# import time

# start = time.time()
# months = ["october","november","december","january","february","march","april","may","june"]
# col_header = ["Date","Start(ET)","Visitor/Neutral","PTS","Home/Neutral","PTS","","","Attend","Notes"]
# url = "https://www.nba.com/stats/teams/catch-shoot/"
# NBA_1314_Schedule_and_results = []

# for month in months:
# urls = url + month + ".html"
# html = urlopen(urls)
# soup = BeautifulSoup(html,"lxml")
# start_1 = time.time()
# print(month)

# for i in range(len(soup.tbody.findAll("tr"))):
# Schedule = []
# date = soup.tbody.findAll("tr")[i].findAll("th")[0].getText()
# Schedule.append(date)

# for j in range(len(soup.findAll("tr")[i].findAll("td"))):
# data = soup.findAll("tr")[i].findAll("td")[j].getText()
# Schedule.append(data)

 
# NBA_1314_Schedule_and_results.append(Schedule)
# end_1 = time.time()
# print(month,round(end_1 - start_1,2),"s")
# df = pd.DataFrame(NBA_1314_Schedule_and_results,columns = col_header)

 
# end = time.time()
# print("The total time used:",round(end - start,2),"s")
# df.to_csv("NBA_2013_2014_Schedule_and_results.csv")