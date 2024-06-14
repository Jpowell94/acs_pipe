from duckdb import connect
from prefect import flow, task
from prefect_dbt.cli import DbtCoreOperation

@task
def load():
    conn = connect("/home/jesserussellpowell/codeprojects/dataprojects/duckstuff/acs_pipe/acs_pipe/talentpool.db"
                   )
    conn.execute("""
                 INSTALL httpfs;
                 LOAD httpfs;
                 """
                 )
    conn.execute("""
                  CREATE VIEW IF NOT EXISTS acs_2020 As FROM read_parquet("/home/jesserussellpowell/codeprojects/dataprojects/duckstuff/acs_pipe/data/ACS_2020.parquet")""")
    conn.close()

@task
def transform():
    DbtCoreOperation(
    commands=["pwd", "dbt debug", "dbt run"],
    project_dir="/home/jesserussellpowell/codeprojects/dataprojects/duckstuff/acs_pipe/acs_pipe/",
    profiles_dir="/home/jesserussellpowell/codeprojects/dataprojects/duckstuff/acs_pipe/acs_pipe/",
    ).run()




@flow()
def main():
    load()
    transform()

if __name__ == "__main__":
    main()


