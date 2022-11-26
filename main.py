from utils.scraping.scrape_upcoming_race import *

# Run scrape and predict
model_path='C:\\Users\\kaspe\\Projects\\ml_2_sql\\trained_models\\20221031_atg_test_50k_v6\\model\\ebm_classification.sav'
pred_df = ScrapeAndPredictSaturdayV75(model_path)

