#2 - 工作流程：基础知识

##练习
###2 整以下每个 R 命令，使其正确运行
# install.packages("tidyverse")
library(tidyverse)

ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  geom_smooth(method = "lm")
