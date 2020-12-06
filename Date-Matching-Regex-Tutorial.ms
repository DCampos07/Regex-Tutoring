# Date Regex Tutorial

This document is meant to explain the details of how a regular expression works. We will explore the inner workings of a regular 
expression using regex to generate a detailed explanation of how a date validator and its components works.  We will break down
the code and all of its assects piece by piece in order to create a complete understading of how this particular regular expression
can validate a date entry.

We will be using the following HTML tag to break down each one of its parts and components to define how they work and what part they
play in the context of the expression.

## Summary

The following evaluation of this regular expression and how each individual componet works together in order to make the regular
expression match a valid date for your code will clarify what each character, group, quantifier or alterations does on an individual 
basis to make it work as a group.

`^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$`

## Table of Contents

- [Anchors](#anchors)
- [Quantifiers](#quantifiers)
- [OR Operator](#or-operator)
- [Character Classes](#character-classes)
- [Flags](#flags)
- [Grouping and Capturing](#grouping-and-capturing)
- [Bracket Expressions](#bracket-expressions)
- [Greedy and Lazy Match](#greedy-and-lazy-match)
- [Boundaries](#boundaries)
- [Back-references](#back-references)
- [Look-ahead and Look-behind](#look-ahead-and-look-behind)

## Regex Components

### Anchors (`^,$`)

According to the [Regular-Expressions.info](https://www.regular-expressions.info/anchors.html) page anchors don't belong to any 
character or group, but are a product all on their own. While using JavaScript they are meant to >*match a position before, after, 
or betweem characters*>.  

In the example I provided above you can see the caret `^` being used at the bigining of the 
expression to anchor the first *capturing group* `(`. While `$` is used at the end to anchor the end of string.

### Quantifiers

In the case of the string we are using as an example we only used one quantifier which is the pipe symbol `|`, but they can be useful to increase the numeber of comparisons the engine has to perform.  Quantifiers in regular expressions according to [Microsoft](https://docs.microsoft.com/en-us/dotnet/standard/base-types/quantifiers-inregularexpressions#:~:text=Quantifiers%20specify%20how%20many%20instances,NET.&text=Match%20zero%20or%20more%20times.) >specify how many instances of a character, group, or character class must be present in the input for a match to be found>. Here are 
some examples of the most common types of quantifiers `*,+ ?, {n}, {n,}, {n,m}`.

### OR Operator

In the case of Operator/Alternation we used the `|` on four seperate occations.  This is because the pipe symbol or vertical bar matches the expression before or after it in the order in which it was written.  In the cropped version on my code seen below we can see that
the vertical bar is being used to match first range to the second.

`(0[1-9]|1[012])`

### Character Classes

According to the [Regular-Expressions.info page](https://www.regular-expressions.info/charclass.html) characters classes or character 
sets >tell the regex engine to match only one out of several characters.> This is done by inserting the characters being searched 
for inside the square brackets `[]`.  

In the below code snippet we are telling the engine to search for a single character between 1 through 9, but you are also telling it to look for one or more characters in the lower and upper case range between a through z.
`[1-9azAZ]`.

In this much simpler code `\d` we are matching any digit character 0-9, like for example 3.  But in order to match 33 we would need to write this `\d\d`, then we would get a double digit response if available.

### Flags

Even though we didn't use any flags in our string, we will go briefly over them.  According to [Javascript.info}(https://javascript.info/regexp-introduction)
flags >Regular expressions may have flags that affect the search>, but there are only 6 of them in JavaScript and they are `i, g, m, s,
u, and y`.  Each one of them has a different function which can be found in the previously mentioned link.

### Grouping and Capturing

Groups and Capturing is done using only a parentheses `()`.  We do this in order to separate an expresion so we can either quantifity it or to restrict the alternation.  In the below code we can see how we captured and matched 2 parts of the same code string.

`(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])`

### Bracket Expressions

Bracket expressions `[]` are a part of charactar classes.  They are used to match any character in the set, they set aside ranges in a search.

Let's take for instance this piece of code `(0[1-9]|1[012])` we are giving the following ranges `[1-9]` and `[012]` to look for, while the 0 and the 1 are a given and would stay in place.

### Greedy and Lazy Match

In the case of our expression we are only using the pipe symbol `|`, but we can go over the context of what this means.  A normal quantifier is usually described as greedy as it tries to make as many matches as possible.  On the other hand a lazy quantifier means that the regex expression tries to make the least amount of matches possible.  Some of greedy quantifiers are `+,0,`, the most popular of the lazy quatifiers is `?`.  IF you are interest in continuing to learn more about greedy and lazy matches you can visit [Jascript.info]{https://javascript.info/regexp-greedy-and-lazy}.

### Boundaries

Boundaries are slightly different than anchors in that an anchor tells you where a string starts and ends, but a boundry does not. A boundry are used to ensure what can be matched to the left and to the right of the current position. We didn't use any boundries in our string, but according to [Regex.com](https://www.rexegg.com/regex-boundaries.html#anchors) >Anchors assert that the current position in the string matches a certain position: the beginning, the end, or in the case of \G the position immediately following the last match. In contrast, boundaries make assertions about what can be matched to the left and right of the current position.>

### Back-references



### Look-ahead and Look-behind

## Author

A short section about the author with a link to the author's GitHub profile (replace with your information and a link to your profile)