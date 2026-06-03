class Module
  def demodulized_name
    return :"" unless name

    name.split("::").last.to_sym
  end
end
