#1 数据可视化
library(tidyverse)
library(palmerpenguins)
library(ggthemes)

## 数据预览
penguins
glimpse(penguins)
View(penguins)

## 创建ggplot
ggplot(data = penguins)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point()


ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)
) +
  geom_point()

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)
) +
  geom_point() +
  geom_smooth(method = "lm")


ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species)) +
  geom_smooth(method = "lm")

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm")


ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()


#### 练习
?penguins

ggplot(
  data = penguins, 
  aes(x = bill_depth_mm, y = bill_length_mm)
) + 
  geom_point()

ggplot(
  data = penguins, 
  aes(x = species, y = bill_depth_mm)
) + 
  geom_point()

ggplot(
  data = penguins, 
  aes(x = bill_depth_mm, y = bill_length_mm)
) + 
  geom_point(na.rm = TRUE)


ggplot(
  data = penguins,
  aes(x = bill_depth_mm, y = bill_length_mm)
) +
  geom_point(na.rm = TRUE) +
  labs(caption = "Data come from the palmerpenguins package.")


ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = bill_depth_mm)) +
  geom_smooth()


## 可视化分布
### 分类型变量
ggplot(penguins, aes(x = fct_infreq(species))) +
  geom_bar()
### 数值型变量
#### 直方图
ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 200)
#### 密度曲线
ggplot(penguins, aes(x = body_mass_g)) +
  geom_density()
