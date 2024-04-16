return {
  defer = (function(thunk)
    local v = nil
    return function()
      if thunk == nil then return v end
      v = thunk()
      thunk = nil
      return v
    end
  end),
  force = (function(l) return l() end)
}
