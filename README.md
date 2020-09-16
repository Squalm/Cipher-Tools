# Cipher-Tools
Codebreaking Something-something

## What is Cipher Tools?
Cipher tools is collection of all the tools I've made for codebreaking. They were generally made with things like the cipherchallenge in mind. My current intention is to update all of my Python tools into Julia for speed. There will be no fancy GUIs or anything but I'll keep everything user-friendly and well explained in the code. I may even make clean and readable breakdowns of the code if I can be bothered.

## List of Tools.
<ul>
  <li>[Frequency Analysis](https://github.com/Squalm/Cipher-Tools#frequency-analysis)</li>
</ul>

## More Details.
### Frequency Analysis
Last Updated: 16/09/20
Associated files: [FAhumans.jl](https://github.com/Squalm/Cipher-Tools/blob/master/FAhumans.jl) & [individual\\FAfunc.jl](https://github.com/Squalm/Cipher-Tools/blob/master/individual/FAfunc.jl).  
#### What does it do?
This frequency analysis program can take a custom alphabet and returns the frequency of each letter as a value. It also shows the Index of Coincidence of the text.  
#### How to use it? (For programmers!)
*FAfunc.jl* contains 2 functions:  
These are `coincidence` and `fa`.  
##### coincidence
`coincidence` takes 2 arguments: `text` and `alphabet_array`.  
`text`: The string with the text you're analysing.  
`alphabet_array`: The array, or in the case of how `fa` uses `coincidence` it is a string with substrings, is a 1d array of strings (not chars) which `coincidence` uses to calculate the index of coincidence.  
##### fa
`fa` takes 2 arguments: `input` and `alphabet`.  
`input`: A string with your text in it.  
`alphabet`: A string with your alphabet in it.  
