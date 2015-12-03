defmodule Day1 do

  def floors(string) do
    do_floors(string, 0)
  end

  defp do_floors("(" <> rest, floor) do
      do_floors(rest, floor + 1)
  end
  defp do_floors(")" <> rest, floor) do
      do_floors(rest,floor - 1)
  end
  defp do_floors("", floor) do
      floor
  end

  def find_basement(string) do
    do_fine_basement(string,0,0)
  end
  defp do_fine_basement(_, -1, pos) do
    pos
  end
  defp do_fine_basement("(" <> rest, floor, pos) do
      do_fine_basement(rest, floor + 1, pos + 1)
  end
  defp do_fine_basement(")" <> rest, floor, pos) do
      do_fine_basement(rest, floor - 1, pos + 1)
  end
  defp do_fine_basement("", _, _) do
    -1
  end

end
