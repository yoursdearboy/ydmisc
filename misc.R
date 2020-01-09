recode_yes_no <- . %>% recode_factor(., `1` = 'Да', `0` = 'Нет', .default = NA_character_)
