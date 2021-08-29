defmodule IgniteListFilter do
  def call list do
    list
    |> Enum.filter(
      &(Regex.match?  ~r/^\d*$/, &1)
    )
    |> Enum.map(&String.to_integer/1)
    |> Enum.filter(
      &( (rem &1, 2 ) == 1 )
    )
    |> Enum.count()
  end
end
