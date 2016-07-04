require 'spec_helper'

module PrimeTables
  describe TextFormatter do
    it 'renders an array into a text table' do
      input = [[0, 2], [112, 24]]
      expected = <<-END
|      |    2 |
|  112 |   24 |
END
      formatter = TextFormatter.new
      expect { formatter.render(input) }.to output(expected).to_stdout
    end
  end
end
