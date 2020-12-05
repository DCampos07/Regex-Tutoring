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

In the case of the string we are using as an example we didn't use any quantifiers, but they can be useful to increase the numeber 
of comparisons the engine has to perform.  Quantifiers in regular expressions according to [Microsoft](https://docs.microsoft.com/en-us/dotnet/standard/base-types/quantifiers-in-regular-expressions#:~:text=Quantifiers%20specify%20how%20many%20instances,NET.&text=Match%20zero%20or%20more%20times.)
>specify how many instances of a character, group, or character class must be present in the input for a match to be found>. Here are 
some examples of the most common types of quantifiers `*,+ ?, {n}, {n,}, {n,m}`.

### OR Operator

In the case of Operator/Alternation we used the `|` on four seperate occations.  This is because the pipe symbol or vertical bar matches
the expression before or after it in the order in which it was written.  In the cropped version on my code seen below we can see that
the vertical bar is being used to match first range to the second.

`(0[1-9]|1[012])`

### Character Classes

According to the [Regular-Expressions.info page](https://www.regular-expressions.info/charclass.html) characters classes or character 
sets >tell the regex engine to match only one out of several characters.> This is done by inserting the characters being searched 
for inside the square brackets `[]`.  

In the below code snippet we are telling the engine to only search for characters between 1 through 9.
`[1-9]`.

### Flags

Even though we didn't use any flags in our string, we will go briefly over them.  According to [Javascript.info}(https://javascript.info/regexp-introduction)
flags >Regular expressions may have flags that affect the search>, but there are only 6 of them in JavaScript and they are `i, g, m, s,
u, and y`.  Each one of them has a different function which can be found in the previously mentioned link.

### Grouping and Capturing

Groups and Capturing is done using a parentheses `()`.

### Bracket Expressions

### Greedy and Lazy Match

### Boundaries

### Back-references

### Look-ahead and Look-behind

## Author

A short section about the author with a link to the author's GitHub profile (replace with your information and a link to your profile)