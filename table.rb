class Table
  attr_accessor :rows, :headers

  def initialize
    @rows = []
  end

  def to_s
    cell_size = largest_cell_size
    formatted_rows = @rows.map{|row| format_row(row, cell_size)}
    separator = "-" * formatted_rows[1].size
    separator[cell_size + 1] = "+"
    formatted_rows.insert(1, separator)
    formatted_rows.join("\n")
  end

  def format_row(items, cell_size)
    formatted_items = items.map{|item| "%#{cell_size}s" % item.to_s }
    formatted_items.insert(1, "|")
    formatted_items.join(" ")

  end

  def largest_cell_size
    largest = 0
    @rows.each do |row|
      row.each do |cell|
        if (current = cell.to_s.size) > largest
          largest = current
        end
      end
    end

    largest
  end
end
