part of default_project;

// data/default/project/json/model.dart

// http://jsonformatter.curiousconcept.com/

/**
 *  || Project
 *  id name : String
 *  at description : String
 */

var defaultProjectModelJson = r'''
{
   "width":990,
   "height":580,
   "relations":[

   ],
   "concepts":[
      {
         "entry":true,
         "name":"Project",
         "x":179,
         "y":226,
         "width":120,
         "height":120,
         "attributes":[
            {
               "sequence":10,
               "category":"identifier",
               "name":"name",
               "type":"String",
               "essential":true,
               "sensitive":false,
               "init":""
            },
            {
               "sequence":20,
               "category":"attribute",
               "name":"description",
               "type":"String",
               "essential":false,
               "sensitive":false,
               "init":""
            }
         ]
      }
   ]
}
''';

var defaultProjectModelYaml = r'''
width: 990
height: 580
relations: []
concepts:
  - entry: true
    name: Project
    attributes:
      - sequence: 10
        category: identifier
        name: name
        type: String
        essential: true
        sensitive: false
        init: ""
      - sequence: 20
        category: attribute
        name: description
        type: String
        essential: false
        sensitive: false
        init: ""
''';
