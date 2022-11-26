import pandas as pd
import numpy as np
import plotly.express as px
import plotly.graph_objects as go
from sklearn.calibration import calibration_curve
from sklearn.metrics import brier_score_loss

def plotCalibrationCurve(save_path, y_true, y_prob, data_type, logging):
    """
    Plot the calibration curve for a set of true and predicted values

    :param save_path: str path to which to save the plot
    :param y_true: true target value
    :param y_prob: predicted probability of target
    :param data_type: str test or train
    :return: calibration plot
    """

    # Create plot
    fig = go.Figure()

    # set axis range to 0 - 1
    fig.update_layout(xaxis_range=[0, 1], yaxis_range=[0, 1],
                      xaxis_title='Predicted probability', yaxis_title='Share being positive',
                      title=f'Calibration plot (reliability curve) - {data_type} data',
                      width=1000,
                      height=800)

    # Add diagonal reference line
    fig.add_shape(type="line",
                  xref="paper", yref="paper",
                  x0=0, x1=1, y0=0, y1=1,
                  line=dict(
                      color="black",
                      width=2,
                      dash="dot",
                  )
    )

    # Save the brier score loss
    bsl_list = list()

    if isinstance(y_prob, list):
        for fold_id in range(len(y_prob)):
            # summaries actuals and predicted probs to (bins) number of points
            fraction_of_positives, mean_predicted_value = \
                calibration_curve(y_true[fold_id], y_prob[fold_id], n_bins=10)

            # Calculate area under curve (AUC)
            bsl_list.append(brier_score_loss(y_true[fold_id], y_prob[fold_id]))
            fig.add_trace(go.Scatter(x=mean_predicted_value, y=fraction_of_positives, mode='markers+lines', name=f'Fold {fold_id}'))
    else:
        # summaries actuals and predicted probs to (bins) number of points
        fraction_of_positives, mean_predicted_value = \
            calibration_curve(y_true, y_prob, n_bins=10, strategy='quantile')

        # Calculate area under curve (AUC)
        bsl_list.append(brier_score_loss(y_true, y_prob))
        fig.add_trace(go.Scatter(x=mean_predicted_value, y=fraction_of_positives, mode='markers+lines', name=f'Fitted model'))

    # add (average) auc in image
    fig.add_annotation(x=0.5, y=0,
                       text=f"Mean Brier Score Loss: {np.mean(bsl_list)}",
                       showarrow=False,
                       yshift=10)


    fig.show(renderer='browser')
    # for future use
    # fig.write_image(save_path)
    #
    # print(f'Created and saved calibration plot')
    # logging.info(f'Created and saved calibration plot')

if __name__ == '__main__':
    save_path = 'output/analysis/calibration_plot.png'
    y_true = df_race['winner']
    y_prob = 1/df_race['vOdds_col_clean']
    y_prob = np.clip(y_prob, 0, 1)

    # to normalize within race
    df_starters = df_race[df_race['place_col']!='0']
    df_starters['vodds_probs'] = 1/df_starters['vOdds_col_clean']
    df_starters['race_sum_odds'] = df_starters.groupby('race_id')['vodds_probs'].transform('sum')
    df_starters['prob_norm'] =df_starters['vodds_probs'] / df_starters['race_sum_odds']

    y_true = df_starters['winner']
    y_prob = df_starters['vodds_probs'] # results in a quite nice calibration plot
    y_prob = np.clip(y_prob, 0, 1)

    # predicted
    y_true = df['winner']
    y_prob = df['prob']
    y_prob = np.clip(y_prob, 0, 1)

    data_type = 'historic'
    plotCalibrationCurve(save_path, y_true, y_prob, data_type, logging=None)