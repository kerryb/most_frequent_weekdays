defmodule MostFrequentWeekdays do
  @doc """
  ## Executable examples

  ```elixir
  iex> MostFrequentWeekdays.in_year(2427)
  ["Friday"]
  iex> MostFrequentWeekdays.in_year(2185)
  ["Saturday"]
  iex> MostFrequentWeekdays.in_year(2860)
  ["Thursday", "Friday"]
  ```
  """
  def in_year(year) do
    {:ok, jan_1} = Date.new(year, 1, 1)

    jan_1
    |> days(Date.leap_year?(jan_1))
    |> Enum.map(&Date.day_of_week/1)
    |> Enum.sort()
    |> Enum.map(&day_name/1)
  end

  defp days(jan_1, false = _leap_year), do: [jan_1]
  defp days(jan_1, true = _leap_year), do: [jan_1, Date.add(jan_1, 1)]

  @days 1..7
        |> Enum.zip(~w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday])
        |> Enum.into(%{})

  defp day_name(day_number), do: @days[day_number]
end
