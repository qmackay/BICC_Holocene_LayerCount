from pathlib import Path
import pandas as pd

# folder containing all tiepoint files
match_name = "EDML-WDC"
core1 = match_name.split("-")[0]
core2 = match_name.split("-")[1]

core1_list = []
core2_list = []

open_big_table = pd.read_csv("all_tiepoints_big_table.csv")
print(open_big_table.columns)

core1_list = open_big_table[f'{match_name}_{core1}']
core1_list = core1_list.dropna()
core2_list = open_big_table[f'{match_name}_{core2}']
core2_list = core2_list.dropna()

core1_list.to_csv(f'ready_for_matchmaker/{match_name}/{core1}.txt', index=False)
core2_list.to_csv(f'ready_for_matchmaker/{match_name}/{core2}.txt', index=False)