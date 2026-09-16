class Adaptable
  def adapt_to_range(range)
    [:adapted, range]
  end
end

RSpec.describe(Range) {
  context("*") {
    it("hands itself to the operand and returns what the operand builds") {
      expect((3..5) * Adaptable.new).to eq([:adapted, 3..5])
    }
  }
}
