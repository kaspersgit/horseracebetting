import interpret
import pickle

def modelPrediction(df, model_path, norm_group_col):
    # load in modeling
    loaded_model = pickle.load(open(
        model_path,
        'rb'))

    feature_names = [f for f in loaded_model.feature_names if ' x ' not in f]
    proba = loaded_model.predict_proba(df[feature_names])[:, 1]
    df['prob'] = proba
    df['prob_odds'] = 1/proba

    # TODO normalize probs per norm_group_col
    df['prob_norm'] = [float(i) / sum(proba) for i in proba]
    df['prob_norm_odds'] = 1 / df['prob_norm']

    return df

if __name__ == '__main__':
    # load in model
    loaded_model = pickle.load(open('C:\\Users\\kaspe\\Projects\\ml_2_sql\\trained_models\\20221031_atg_test_50k_v6\\model\\ebm_classification.sav', 'rb'))

    feature_names = [f for f in loaded_model.feature_names if ' x ' not in f]
    proba = loaded_model.predict_proba(df[feature_names])[:,1]
    df['prob'] = proba
    df['prob_odds'] = 1/proba
    df['prob_norm'] = [float(i)/sum(proba) for i in proba]
    df['prob_norm_odds'] = 1/df['prob_norm']