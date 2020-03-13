# Final Project

A Haskell calculator that serves to dycrypt messages, if you know the way.

## Team Members

* Drake Ryan Evans - Evansdr
* Inez Hernandez Fuerte - hernanin
* Lea Kathryn Messenger - messengl
* Zijing (Allen) Huang - huangzij


## Introduction

For this project, we are focusing on creating a simple Haskell calculator that serves as the back bone for our cipher. When a user inputs an operation they will get back an ascii lowercase letter. Once thye have gathered enough charactes they will use our langauge to decode the message using a Caesar cipher. It will include all the standard operations addition, subtraction, multiplication, and division and this calculator will be named Scoop++. After some considerations, the programming paradigm that Scoop++ will be designed in is the functional paradigm. The stack-based paradigm would have also been a good option, but the functional paradigm also provided similar benefits and a bit more flexibility.

## Features

Operations include:
* Addition
* Subtraction
* Multiplication
* Division
* Powers of n
* Produce an ascii value between 97 - 122
* Return a character
* Allow user to enter that string to decode using our cipher.

## Instructions
<<<<<<< Updated upstream
Your mission is to decode the following 100 + 2 * 2 + 1, 111 - 3^2, 100/2 * 2 + 9, 100/2 * 2 + 9, 10 * 10 + 12.
How you will accomplish this:

First, type in each equation 100 + 2 * 2 + 1 press enter. Continue doing so for each equation above.

Once you finish, you will have a resulting string.

Type in caesarCipher along with the string value you have. Press enter.

You have now decoded the mission critical code! Nice work!

(type in caesarCipher 1 "ifmmp') -> that would be the resulting value if our code was 100%

=======
```Bash
  $ ghci Calculator.hs
  *Main> shiftForwards 'a,b,c....'
  *Main> shiftBackwards 'a,b,c....'
  *Main> expr 'a,b,c....'
```
>>>>>>> Stashed changes
