RegExp.quote = (str) ->
  str.replace /([\"\\])/g, "\\$1"

$ ->
  $('textarea.input').keyup (e) ->
    console.log e
    out_area = $('textarea.output')
    $('textarea.output').val('') # clear output
    input = $('textarea.input').val()
    input_lines = input.split("\n")
    #output = gsub(input, /"|'|\\/, "\\\"")
    #output = RegExp.quote(input)
    output = ''
    for line in input_lines
      line = RegExp.quote(line)
      output += "#{out_area.val()}\n#{line} \\"
    out_area.val("@\" \\#{output}\n\";")
