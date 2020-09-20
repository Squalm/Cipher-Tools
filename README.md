# Cipher-Tools
Codebreaking Something-something

## What is Cipher Tools?
Cipher tools is collection of all the tools I've made for codebreaking. They were generally made with things like the cipherchallenge in mind. My current intention is to update all of my Python tools into Julia for speed. There will be no fancy GUIs or anything but I'll keep everything user-friendly and well explained in the code. I may even make clean and readable breakdowns of the code if I can be bothered.

## List of Tools.
<ul>
  <li>[Frequency Analysis](https://github.com/Squalm/Cipher-Tools#frequency-analysis)</li>
  <li>[Caesar Shift](https://github.com/Squalm/Cipher-Tools#caesar-shift)
</ul>

## More Details.
### Frequency Analysis
Last Updated: 18.09.2020  
Associated files: [FAhumans.jl](https://github.com/Squalm/Cipher-Tools/blob/master/FAhumans.jl) & [individual\\FAfunc.jl](https://github.com/Squalm/Cipher-Tools/blob/master/individual/FAfunc.jl).  
#### What does it do?
This frequency analysis program can take a custom alphabet and returns the frequency of each letter as a value. It also shows the Index of Coincidence of the text.  
#### How to use it? (For programmers!)
*FAfunc.jl* contains 2 functions:  
These are `coincidence` and `fa`.  
##### coincidence
`coincidence` takes 2 arguments: `text` and `alphabet_array`.  
`text`: The string with the text you're analysing.  
`alphabet`: A string with your alphabet in it.
`coincidence` returns an int containing the Index of Coincidence.  
##### fa
`fa` takes 2 arguments: `input` and `alphabet`.  
`input`: A string with your text in it.  
`alphabet`: A string with your alphabet in it.  
`fa` returns an unsorted dictionary containing the probability of picking a letter when you pick a letter at random from the text as a value between 0 and 1.  
### Caesar Shift
Last updated: 20.09.2020  
Associated files: [individual\\Caesarfunc.jl](https://github.com/Squalm/Cipher-Tools/blob/master/individual/Caesarfunc.jl) & [Caesarhumans.jl](https://github.com/Squalm/Cipher-Tools/blob/master/Caesarhumans.jl).
#### What does it do?
This Caesar shift program can take a custom alphabet and move the letters along just like in a Caesar cipher. It brute forces the cipher by displaying all possible shifts of the ciphertext. It can be used to encrypt and decrypt Caesar ciphers.
#### How to use it? (For programmers!)
*Caesarfunc.jl* contains 2 functions:  
These are `caesarshift()` and `caesarbrute()`.
##### caesarshift()
`caesarshift()` takes 3 arguments: `text`, `alphabet` and `shift`.  
`text`: A string with your ciphertext.  
`alphabet`: A string with your alphabet in it.  
`shift`: The amount you want to shift the text by (+ve).  
`caesarshift()` returns a string containing the shift of the text.
##### caesarbrute()
`caesarbrute()` takes 2 arguments: `text` and `alphabet`.  
`text`: A string with your ciphertext.  
`alphabet`: A string with your alphabet in it.  
`caesarbrute()` returns an array containing all possible shifts for the text (starting at 1, and ending on the original ciphertext).
