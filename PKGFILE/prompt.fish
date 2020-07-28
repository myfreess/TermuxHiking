function fish_prompt
#Go Bullet -- Go编写的 prompt配置工具
set -x GBT_CARS 'Hostname, Dir, Sign'
#设定Prompt块
#Dir指目录
#Hostname指本机信息
#Sign指Prompt前的箭头和用户信息
#还有一些块我不需要，没写 
set -x GBT_CAR_DIR_FG 'black'
#Dir块字体色为黑色
set -x GBT_CAR_DIR_BG 'blue'
#Dir块背景色为蓝色
#BG为背景色
#FG为字体色
set -x GBT_CAR_HOSTNAME_FG 'light_gray'
set -x GBT_CAR_HOSTNAME_BG 'dark_gray'
#Hostname块配色
set -x GBT_CAR_HOSTNAME_FORMAT ' Ghost@github '
#Hostname块输出文本
gbt
end
