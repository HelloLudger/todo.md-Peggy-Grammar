{{
  function makeLiteral(s) {
    return s.join("");
  }
  
  function makeTriChecked(c) {
    if (c===" ") return false;
    if (c==="x") return true;
    if (c==="-") return -0;
    return undefined;
  }
}}

Sections 
  = ([^#] [^\n\r]* br)* s:Section+  { return s }
  
Section
  = header:Header br+ todos:Todos                  { return Object.assign(header, {description: "",   todos: todos}) }
  / header:Header br+ desc:Description todos:Todos { return Object.assign(header, {description: desc, todos: todos}) }
  / header:Header br+ desc:Description             { return Object.assign(header, {description: desc, todos: []}) }
  / header:Header br?                              { return Object.assign(header, {description: "",   todos: []}) }

Header
  = l:[#]+ _ t:[^#\n\r]+          { return { level: l.length, header: makeLiteral(t).trim() } }

Todos
  = Todo+
  
Todo
  = "- [" c:[ |x|-] "]" _? t:[^\n\r]* br* { return {checked: makeTriChecked(c), text: makeLiteral(t).trim()}}

Description
  = lines:Line+ { return lines.join("\n").trim() }
  
Line
  = (!"- [") (!"#") d:[^\n\r]+ br?  { return makeLiteral(d) }
  / br { return "" }
 
_ "whitespace"
  = [ ]
  
br "new line"
  = [\n\r]