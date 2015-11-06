// DOM Manipulation Challenge


// I worked on this challenge [with: Deanna Warren].


// Add your JavaScript calls to this page:

// Release 0:

document.getElementById("release-0").setAttribute("class","done");


// Release 1:

document.getElementById("release-1").style.display = "none";


// Release 2:

document.getElementsByTagName("h1").item(0).innerHTML = "I completed release 2.";


// Release 3:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:

var elements = document.getElementsByClassName("release-4");
for (var i = 0; i < elements.length; i++) {
  elements.item(i).style.fontSize = "2em";
};

// Release 5:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

// REFLECTION
/*
- What did you learn about the DOM?
    I learned to think of the DOM to be like a tree of parent and children nodes. As well as how to traverse those nodes and find the specific nodes that I am looking to update.

- What are some useful methods to use to manipulate the DOM?
    Some useful methods we used included:
      - getElementById: get an HTML element with a specific ID
      - getElementsByClassName: get HTML elements with a specific CLASS
      - getElementsByTagName: get specific HTML elements with a specific tag
*/