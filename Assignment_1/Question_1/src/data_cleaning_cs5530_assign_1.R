# %% [code] {"execution":{"iopub.status.busy":"2023-09-18T14:28:32.704154Z","iopub.execute_input":"2023-09-18T14:28:32.709327Z","iopub.status.idle":"2023-09-18T14:28:32.735186Z"}}
raw_file = '/kaggle/input/cs5530-assign-1/raw_female_frailty.csv'
clean_raw_female_frailty = function(file_name) {
    female_frailty_in_process = read.csv(file_name)
    female_frailty_in_process$Frailty = female_frailty_in_process$Frailty = ifelse(female_frailty_in_process$Frailty == "Y", 1, 0)
    colnames(female_frailty_in_process) = c('Height_in', 'Weight_pd', 'Age_yr', 'Grip_strength_kg', 'Is_Frail_bool')
    clean_female_frailty = female_frailty_in_process
    return(clean_female_frailty)
}

# %% [code] {"execution":{"iopub.status.busy":"2023-09-18T14:28:36.644794Z","iopub.execute_input":"2023-09-18T14:28:36.646927Z","iopub.status.idle":"2023-09-18T14:28:36.682666Z"}}
#clean_female_frailty = clean_raw_female_frailty(raw_file)
#write.csv(clean_female_frailty, "clean_female_frailty.csv")

# %% [code]
