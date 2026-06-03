RSpec.describe(Module) {
  context("demodulized_name") {
    it("returns the last name segment as a symbol") {
      expect(Gem::Version.demodulized_name).to be(:Version)
    }

    it("returns the full name when it is not nested") {
      expect(String.demodulized_name).to be(:String)
    }

    it("returns an empty symbol for an anonymous module") {
      expect(Module.new.demodulized_name).to be(:"")
    }
  }
}
