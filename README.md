# Cipher-Tools
Codebreaking Something-something

## What is Cipher Tools?
Cipher tools is collection of all the tools I've made for codebreaking. They were generally made with things like the cipherchallenge in mind. My current intention is to update all of my Python tools into Julia. There will be no fancy GUIs or anything but I'll keep everything user-friendly and well explained in the code (mostly, hopefully). I will go into detail later in this document if there's anything weird that needs explaining.

## List of Tools.

 - [Frequency Analysis](https://github.com/Squalm/Cipher-Tools#frequency-analysis)
 - [Caesar Shift](https://github.com/Squalm/Cipher-Tools#caesar-shift)

## More Details.
### Frequency Analysis
Last Updated: 18.09.2020  
Associated files: [FAhumans.jl](https://github.com/Squalm/Cipher-Tools/blob/master/FAhumans.jl) & [individual\\FAfunc.jl](https://github.com/Squalm/Cipher-Tools/blob/master/individual/FAfunc.jl).  
#### What does it do?
This frequency analysis program can take a custom alphabet and returns the frequency of each letter as a value. It also shows the Index of Coincidence of the text.  
### Caesar Shift
Last updated: 20.09.2020  
Associated files: [individual\\Caesarfunc.jl](https://github.com/Squalm/Cipher-Tools/blob/master/individual/Caesarfunc.jl) & [Caesarhumans.jl](https://github.com/Squalm/Cipher-Tools/blob/master/Caesarhumans.jl).
#### What does it do?
This Caesar shift program can take a custom alphabet and move the letters along just like in a Caesar cipher. It brute forces the cipher by displaying all possible shifts of the ciphertext. It can be used to encrypt and decrypt Caesar ciphers.
