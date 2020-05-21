# Most Frequent Weekdays

What is your favourite day of the week? Check if it's the most frequent day of
the week in the year.

You are given a year as integer (eg 2001). You should return the most frequent
day(s) of the week in that year. The result has to be a list of days sorted by
the order of days in week (eg ['Monday', 'Tuesday'], ['Saturday', 'Sunday'],
['Monday', 'Sunday']). Week starts with Monday.

## Input

Year as an int.

## Output

The list of most frequent days sorted by the order of days in week (from Monday
to Sunday).

## Preconditions

  * Week starts on Monday.
  * Year is between 1583 and 4000.
  * Calendar is Gregorian.

# Examples

```elixir
most_frequent_days(2427) == ["Friday"]
most_frequent_days(2185) == ["Saturday"]
most_frequent_days(2860) == ["Thursday", "Friday"]
```
