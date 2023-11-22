library(tidyverse)

lol_champ_stats_12_1 = read_csv("data/League of Legends Champion Stats 12.1.csv")
lol_champ_stats_12_2 = read_csv("data/League of Legends Champion Stats 12.2.csv")
lol_champ_stats_12_3 = read_csv("data/League of Legends Champion Stats 12.3.csv")
lol_champ_stats_12_4 = read_csv("data/League of Legends Champion Stats 12.4.csv")
lol_champ_stats_12_5 = read_csv("data/League of Legends Champion Stats 12.5.csv")
lol_champ_stats_12_6 = read_csv("data/League of Legends Champion Stats 12.6.csv")
lol_champ_stats_12_7 = read_csv("data/League of Legends Champion Stats 12.7.csv")
lol_champ_stats_12_8 = read_csv("data/League of Legends Champion Stats 12.8.csv")
lol_champ_stats_12_9 = read_csv("data/League of Legends Champion Stats 12.9.csv")
lol_champ_stats_12_10 = read_csv("data/League of Legends Champion Stats 12.10.csv")
lol_champ_stats_12_11 = read_csv("data/League of Legends Champion Stats 12.11.csv")
lol_champ_stats_12_12 = read_csv("data/League of Legends Champion Stats 12.12.csv")
lol_champ_stats_12_13 = read_csv("data/League of Legends Champion Stats 12.13.csv")
lol_champ_stats_12_14 = read_csv("data/League of Legends Champion Stats 12.14.csv")
lol_champ_stats_12_15 = read_csv("data/League of Legends Champion Stats 12.15.csv")
lol_champ_stats_12_16 = read_csv("data/League of Legends Champion Stats 12.16.csv")
lol_champ_stats_12_17 = read_csv("data/League of Legends Champion Stats 12.17.csv")
lol_champ_stats_12_18 = read_csv("data/League of Legends Champion Stats 12.18.csv")
lol_champ_stats_12_19 = read_csv("data/League of Legends Champion Stats 12.19.csv")
lol_champ_stats_12_20 = read_csv("data/League of Legends Champion Stats 12.20.csv")
lol_champ_stats_12_21 = read_csv("data/League of Legends Champion Stats 12.21.csv")
lol_champ_stats_12_22 = read_csv("data/League of Legends Champion Stats 12.22.csv")
lol_champ_stats_12_23 = read_csv("data/League of Legends Champion Stats 12.23.csv")


lol_champ_stats_12_1 = lol_champ_stats_12_1 %>%
  mutate(Patch = "12-1") %>%
  mutate(Trend = as.numeric(Trend))
  

lol_champ_stats_12_2 = lol_champ_stats_12_2 %>%
  mutate(Patch = "12-2")
  

lol_champ_stats_12_3 = lol_champ_stats_12_3 %>%
  mutate(Patch = "12-3")
  

lol_champ_stats_12_4 = lol_champ_stats_12_4 %>%
  mutate(Patch = "12-4")
  

lol_champ_stats_12_5 = lol_champ_stats_12_5 %>%
  mutate(Patch = "12-5")
  

lol_champ_stats_12_6 = lol_champ_stats_12_6 %>%
  mutate(Patch = "12-6")
  

lol_champ_stats_12_7 = lol_champ_stats_12_7 %>%
  mutate(Patch = "12-7")
  

lol_champ_stats_12_8 = lol_champ_stats_12_8 %>%
  mutate(Patch = "12-8")
  

lol_champ_stats_12_9 = lol_champ_stats_12_9 %>%
  mutate(Patch = "12-9")
  

lol_champ_stats_12_10 = lol_champ_stats_12_10 %>%
  mutate(Patch = "12-10")
  

lol_champ_stats_12_11 = lol_champ_stats_12_11 %>%
  mutate(Patch = "12-11")
  

lol_champ_stats_12_12 = lol_champ_stats_12_12 %>%
  mutate(Patch = "12-12")
  

lol_champ_stats_12_13 = lol_champ_stats_12_13 %>%
  mutate(Patch = "12-13")
  

lol_champ_stats_12_14 = lol_champ_stats_12_14 %>%
  mutate(Patch = "12-14")
  

lol_champ_stats_12_15 = lol_champ_stats_12_15 %>%
  mutate(Patch = "12-15")
  

lol_champ_stats_12_16 = lol_champ_stats_12_16 %>%
  mutate(Patch = "12-16")
  

lol_champ_stats_12_17 = lol_champ_stats_12_17 %>%
  mutate(Patch = "12-17")
  

lol_champ_stats_12_18 = lol_champ_stats_12_18 %>%
  mutate(Patch = "12-18")
  

lol_champ_stats_12_19 = lol_champ_stats_12_19 %>%
  mutate(Patch = "12-19")


lol_champ_stats_12_20 = lol_champ_stats_12_20 %>%
  mutate(Patch = "12-20")
  

lol_champ_stats_12_21 = lol_champ_stats_12_21 %>%
  mutate(Patch = "12-21")
  

lol_champ_stats_12_22 = lol_champ_stats_12_22 %>%
  mutate(Patch = "12-22")
  

lol_champ_stats_12_23 = lol_champ_stats_12_23 %>%
  mutate(Patch = "12-23")
  

patch_order = c(
  "12-1",
  "12-2",
  "12-3",
  "12-4",
  "12-5",
  "12-6",
  "12-7",
  "12-8",
  "12-9",
  "12-10",
  "12-11",
  "12-12",
  "12-13",
  "12-14",
  "12-15",
  "12-16",
  "12-17",
  "12-18",
  "12-19",
  "12-20",
  "12-21",
  "12-22",
  "12-23"
)

lol_champ_stats_season_12 = lol_champ_stats_12_1 %>%
  full_join(lol_champ_stats_12_2) %>%
  full_join(lol_champ_stats_12_3) %>%
  full_join(lol_champ_stats_12_4) %>%
  full_join(lol_champ_stats_12_5) %>%
  full_join(lol_champ_stats_12_6) %>%
  full_join(lol_champ_stats_12_7) %>%
  full_join(lol_champ_stats_12_8) %>%
  full_join(lol_champ_stats_12_9) %>%
  full_join(lol_champ_stats_12_10) %>%
  full_join(lol_champ_stats_12_11) %>%
  full_join(lol_champ_stats_12_12) %>%
  full_join(lol_champ_stats_12_13) %>%
  full_join(lol_champ_stats_12_14) %>%
  full_join(lol_champ_stats_12_15) %>%
  full_join(lol_champ_stats_12_16) %>%
  full_join(lol_champ_stats_12_17) %>%
  full_join(lol_champ_stats_12_18) %>%
  full_join(lol_champ_stats_12_19) %>%
  full_join(lol_champ_stats_12_20) %>%
  full_join(lol_champ_stats_12_21) %>%
  full_join(lol_champ_stats_12_22) %>%
  full_join(lol_champ_stats_12_23) %>%
  pivot_longer(cols = "Win %":"Ban %", names_to = "Type", values_to = "Rate") %>%
  select(Patch, everything())

write_csv(x = lol_champ_stats_season_12, file = "data/League of Legends Champion Stats Season 12.csv")


lol_champ_stats_season_12 %>%
  filter(Name == "Akali") %>%
  filter(Role == "MID") %>%
  filter(Type == c("Pick %", "Ban %")) %>%
  mutate(Patch = factor(Patch, levels = patch_order)) %>%
  ggplot() +
  aes(x = Patch, y = `Rate`, group = Type, color = Type) %>%
  geom_line()

