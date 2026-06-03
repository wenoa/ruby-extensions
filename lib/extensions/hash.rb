class Hash
  def reject_value(&closure)
    reject { |_, value| closure.call value }
  end

  def reject_value!(&closure)
    reject! { |_, value| closure.call value }
  end

  def replace_unless_has!(value, at:, &closure)
    self[at] = self[at] == value ? value : closure.call(self[at])
  end

  def rename_key!(old_name, new_name)
    self[new_name] = delete(old_name, &method(:[]))
  end
end
