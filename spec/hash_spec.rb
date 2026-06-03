RSpec.describe(Hash) {
  context("reject_value") {
    it("rejects entries whose value meets the condition, without mutating the hash") {
      hash = { a: 1, b: 2, c: 3 }

      expect(hash.reject_value(&:even?)).to eq(a: 1, c: 3)
      expect(hash).to eq(a: 1, b: 2, c: 3)
    }
  }

  context("reject_value!") {
    it("rejects entries whose value meets the condition, mutating the hash") {
      hash = { a: 1, b: 2, c: 3 }

      hash.reject_value!(&:even?)

      expect(hash).to eq(a: 1, c: 3)
    }
  }

  context("replace_unless_has!") {
    it("replaces the value applying the closure when it differs from the given value") {
      hash = { width: 5 }

      hash.replace_unless_has!(:any, at: :width) { |value| value * 2 }

      expect(hash).to eq(width: 10)
    }

    it("keeps the value when it matches the given value") {
      hash = { width: :any }

      hash.replace_unless_has!(:any, at: :width) { |value| value * 2 }

      expect(hash).to eq(width: :any)
    }
  }

  context("rename_key!") {
    it("moves the value from the old key to the new one") {
      hash = { old_id: 3, other: 1 }

      hash.rename_key!(:old_id, :new_id)

      expect(hash).to eq(new_id: 3, other: 1)
    }

    it("leaves the new key as nil when the old one is absent") {
      hash = { other: 1 }

      hash.rename_key!(:old_id, :new_id)

      expect(hash).to eq(other: 1, new_id: nil)
    }
  }
}
