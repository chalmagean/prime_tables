require 'spec_helper'

describe PrimeTables do
  it 'has a version number' do
    expect(PrimeTables::VERSION).not_to be nil
  end

  it 'prints a multiplication table' do
    expected = <<-END
|     |   2 |   3 |   5 |
|   2 |   4 |   6 |  10 |
|   3 |   6 |   9 |  15 |
|   5 |  10 |  15 |  25 |
END

    table = PrimeTables::Multiplication.new(3)
    formatter = PrimeTables::TextFormatter.new

    expect { table.render(formatter) }.to output(expected).to_stdout
  end
end
