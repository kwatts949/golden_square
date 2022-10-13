def make_snippet(string)
  if string.split(" ").length > 5
    return string.split(" ")[0..4].join(" ") + " ..."
  else
    return string.split(" ")[0..4].join(" ")
  end
end