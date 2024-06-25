import polars as pl

def process_parquet(parquet_file):
    """
    Reads a Parquet file, combines REPWTP columns into an array using Polars,
    and returns the DataFrame.

    Args:
        parquet_file (str): Path to the Parquet file.

    Returns:
        pl.DataFrame: Polars DataFrame with all columns and a new 'matched_values' array column.
    """
    # Read the parquet file into a Polars DataFrame
    df = pl.read_parquet("data/ACS_2020.parquet")
    
    # Select columns that start with "REPWTP"
    repwt_cols = [col for col in df.columns if col.startswith("REPWTP")]
    
    # Combine REPWTP columns into an array for each row
    df = df.with_columns(
        pl.concat_list([pl.col(col) for col in repwt_cols]).alias("matched_values")
    )
    
    return df.write_parquet("data/ACS_2020_repwtp_array.parquet")

# Example usage:
df = process_parquet(parquet_file)
print(df)
