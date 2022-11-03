import pandas as pd
from dash import Dash, dash_table, dcc, html
from dash.dependencies import Input, Output
from dash_bootstrap_components.themes import BOOTSTRAP

amz = pd.read_csv("./amazon_prime_titles.csv")
column_dropdown = "column_dropdown"
table = "table"

def render_table(app:Dash) -> html.Div:
    @app.callback(
        Output(table,"columns"),
        Input(column_dropdown,"value")
    )
    def update_table(column_list):
        filtered_data = amz.query("columns in @column_list")
        return html.Div(id=table,children=[
            dash_table.DataTable(filtered_data.to_dict("records"),[{"name": i, "id": i} for i in filtered_data.columns])
        ])
    return html.Div(id=table)

def render_dropdown(app:Dash) -> html.Div:
    column_list = amz.columns
    return html.Div(children=[
        html.H6("Columns"),
        dcc.Dropdown(
            options=[{"label":column,"value":column} for column in column_list],
            value=column_list,
            multi=True,
            id=column_dropdown
            )
    ])

def create_layout(app:Dash) -> html.Div:
    return html.Div(children=[
        html.H1("Amazon Prime Titles"),
        html.Hr(),
        html.Div(className="dropdown-container",children=[
            render_dropdown(app)
        ]),
        html.Div(className="table-container",children=[
            render_table(app)
        ])
    ])

def main() -> None:
    app = Dash(external_stylesheets=[BOOTSTRAP])
    app.title = "Test Dashboard"
    app.layout = create_layout(app)
    app.run()

if __name__ == "__main__":
    main()
