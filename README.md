# todo.md Peggy Grammar

A simple grammar to parse todo.md/todo-md files.  

It uses https://github.com/peggyjs/peggy, the successor of https://github.com/pegjs/pegjs.
The grammar can be tested (and downloaded as parser) by using the great peggy-online editor: https://peggyjs.org/online.

With the grammar we have a clear definition of the todo[-|.]md-specification.


## Ideas
(TBD, just some bullet points...)
- Everything is in a section
- Sections are not nested by the grammar (for now, at least)
- So sections are in an array
- Trim descriptions and titles
- Strict todo decleration (no "-"-only todos)


# (Planned) Features

- [x] Sections based on #headings
- [x] Section descriptions
- [x] Todos (" ": open, "x": done, "-": declined)
- [x] Front matter allowed
- [ ] Subtasks
- [ ] Todo description
- [ ] Todo tags (#tag)
- [ ] Todo estimate (~2d)
- [ ] Todo assigned users (@helloludger)
- [ ] Todo due-dates (2022-04-11)
- [-] 3d-representation of todo.md-files


# Connected Repositories

- https://github.com/todomd/todo.md
- https://github.com/todo-md/todo-md
- https://github.com/chmac/action.tools


## Tests

The grammar was tested with the following files:
- https://raw.githubusercontent.com/todo-md/todo.md/master/TODO.md  
  Doesn't work due to missing sub-tasks.
- https://raw.githubusercontent.com/todo-md/todo-md/master/project-a/TODO.md  
  Doesn't work due to missing task descriptions.
- https://raw.githubusercontent.com/chmac/action.tools/master/do.md  
  Doesn't work due to missing task descriptions.

# Example Result

This page (except for # Example Result) translates to the folloging JSON:

```
[
   {
      "level": 1,
      "header": "todo.md Peggy Grammar",
      "description": "A simple grammar to parse todo.md/todo-md files.  

It uses https://github.com/peggyjs/peggy, the successor of https://github.com/pegjs/pegjs.
The grammar can be tested (and downloaded as parser) by using the great peggy-online editor: https://peggyjs.org/online.

With the grammar we have a clear definition of the todo[-|.]md-specification.",
      "todos": []
   },
   {
      "level": 2,
      "header": "Ideas",
      "description": "(TBD, just some bullet points...)
- Everything is in a section
- Sections are not nested by the grammar (for now, at least)
- So sections are in an array
- Trim descriptions and titles
- Strict todo decleration (no \"-\"-only todos)",
      "todos": []
   },
   {
      "level": 1,
      "header": "(Planned) Features",
      "description": "",
      "todos": [
         {
            "checked": true,
            "text": "Sections based on #headings"
         },
         {
            "checked": true,
            "text": "Section descriptions"
         },
         {
            "checked": true,
            "text": "Todos (\" \": open, \"x\": done, \"-\": declined)"
         },
         {
            "checked": true,
            "text": "Front matter allowed"
         },
         {
            "checked": false,
            "text": "Subtasks"
         },
         {
            "checked": false,
            "text": "Todo description"
         },
         {
            "checked": false,
            "text": "Todo tags (#tag)"
         },
         {
            "checked": false,
            "text": "Todo estimate (~2d)"
         },
         {
            "checked": false,
            "text": "Todo assigned users (@helloludger)"
         },
         {
            "checked": false,
            "text": "Todo due-dates (2022-04-11)"
         },
         {
            "checked": 0,
            "text": "3d-representation of todo.md-files"
         }
      ]
   },
   {
      "level": 1,
      "header": "Connected Repositories",
      "description": "- https://github.com/todomd/todo.md
- https://github.com/todo-md/todo-md
- https://github.com/chmac/action.tools",
      "todos": []
   },
   {
      "level": 2,
      "header": "Tests",
      "description": "The grammar was tested with the following files:
- https://raw.githubusercontent.com/todo-md/todo.md/master/TODO.md  
  Doesn't work due to missing sub-tasks.
- https://raw.githubusercontent.com/todo-md/todo-md/master/project-a/TODO.md  
  Doesn't work due to missing task descriptions.
- https://raw.githubusercontent.com/chmac/action.tools/master/do.md  
  Doesn't work due to missing task descriptions.",
      "todos": []
   }
]
```
