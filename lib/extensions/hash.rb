class Hash

  def convert_keys_to_symbols
    return self.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
  end
  
end