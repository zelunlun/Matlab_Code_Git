import requests
from bs4 import BeautifulSoup
import pandas as pd
import random

path = ".\Team_stats\Teamstats_2022.txt"
dfs = []


# playerID = []
#  = []
# cate_list = []
# link_list = []

url = "https://www.basketball-reference.com/playoffs/NBA_2022.html#all_leaders"

user_agents = [
 "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; AcooBrowser; .NET CLR 1.1.4322; .NET CLR 2.0.50727)",
 "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506)",
 "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.20 (KHTML, like Gecko) Chrome/19.0.1036.7 Safari/535.20",
 "Opera/9.80 (Macintosh; Intel Mac OS X 10.6.8; U; fr) Presto/2.9.168 Version/11.52",
    ]

headers = {
    "user-agent":random.choice(user_agents)
}

resp =requests.post(url, headers = headers)

soup = BeautifulSoup(resp.text,"html.parser")

soup.find("tr").decompose()
team_table = soup.find(id="per_game-team")
team_2022 = pd.read_html(str(team_table))[0]

pd.set_option('display.max_columns',None)
pd.set_option('display.width',500)

dfs.append(team_2022)
print(dfs)
# with open(path, "w",encoding="utf-8") as f:
#     f.write(str(dfs))


# for row in soup.select('tbody tr index="0"'):
#     row_text = [x.text for x in row.find_all('td')]
#     print(', '.row_text)





"""
--------------------------- There is MVP stats ------------------------------------
"""

# import requests
# from bs4 import BeautifulSoup
# import pandas as pd
# import random

# season_id = "2021-22"
# per_mode = "Totals"
# path = ".\mvp\mvp_2022.txt"
# dfs = []

# url = "https://www.basketball-reference.com/awards/awards_2022.html"

# user_agents = [
#  "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; AcooBrowser; .NET CLR 1.1.4322; .NET CLR 2.0.50727)",
#  "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506)",
#  "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.20 (KHTML, like Gecko) Chrome/19.0.1036.7 Safari/535.20",
#  "Opera/9.80 (Macintosh; Intel Mac OS X 10.6.8; U; fr) Presto/2.9.168 Version/11.52",
#     ]

# headers = {
#     "user-agent":random.choice(user_agents)
# }

# resp =requests.post(url, headers = headers)

# soup = BeautifulSoup(resp.text,"html.parser")

# soup.find("tr",class_="over_header").decompose()
# mvp_table = soup.find(id="mvp")
# mvp_2022 = pd.read_html(str(mvp_table))[0]

# pd.set_option('display.max_columns',None)
# pd.set_option('display.width',300)

# dfs.append(mvp_2022)