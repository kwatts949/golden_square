{{PROBLEM}} Method Design Recipe
1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature

# `grammar_checker` checks that a strings first letter is capitalized and ends with either ".", "!" or "?"
good_grammar = grammar_checker(string)

good_grammar = boolean

# The method doesn't print anything or have any other side-effects

3. Create Examples as Tests

# EXAMPLE

grammar_checker("") => FALSE
grammar_checker("Pineapple") => FALSE
grammar_checker("mango.") => FALSE
grammar_checker("Mango.") => TRUE
grammar_checker("The cat sat on the mat?) => TRUE

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.