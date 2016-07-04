module PrimeTables
  class TextFormatter
    def render(array)
      output = ''
      cell_width = array.flatten.max.to_s.size + 2

      array.each do |row|
        output += '|'
        row.each do |col|
          output += cell_text(col, cell_width)
        end
        output += "\n" # Double quotes are required
      end

      puts output
    end

    private

      def cell_text(text, width)
        "#{text.to_s.gsub(/^0$/, '').rjust(width)} |"
      end
  end
end
