# Cipher-Tools
A Codebreaking/Cipherbreaking Toolkit. Currently early in development.  

## What is Cipher Tools?
Cipher tools is collection of all the tools I've made for codebreaking. They were generally made with things like the cipherchallenge in mind. My current intention is to update all of my Python tools into Julia. There will be no fancy GUIs or anything but I'll keep everything user-friendly and well explained in the code (mostly, hopefully). I will go into detail later in this document if there's anything weird that needs explaining.

### Repl.it Page!
Yes this project exists on repl.it! If you can't run julia locally or just find it easier to use the web then use [this link](https://repl.it/@Squalm/Cipher-Tools#README.md). I'll try to keep this page up to date but that requires me remembering to come over here and pull the latest commits to this page... If it looks old then do leave an issue or give me a message or something.

## List of Tools.

 - [Frequency Analysis](https://github.com/Squalm/Cipher-Tools#frequency-analysis)
 - [Caesar Shift](https://github.com/Squalm/Cipher-Tools#caesar-shift)
 - [Entropy](https://github.com/Squalm/Cipher-Tools#entropy)
 - [Affine](https://github.com/Squalm/Cipher-Tools#affine)
 - [Utilities](https://github.com/Squalm/Cipher-Tools#utilities)

## More Details.
### Frequency Analysis
Associated files: [FAhumans.jl](https://github.com/Squalm/Cipher-Tools/blob/master/FAhumans.jl) & [individual\\FAfunc.jl](https://github.com/Squalm/Cipher-Tools/blob/master/individual/FAfunc.jl).  
#### What does it do?
This frequency analysis program can take a custom alphabet and returns the frequency of each letter as a value. It also shows the Index of Coincidence of the text.  
### Caesar Shift
Associated files: [individual\\Caesarfunc.jl](https://github.com/Squalm/Cipher-Tools/blob/master/individual/Caesarfunc.jl) & [Caesarhumans.jl](https://github.com/Squalm/Cipher-Tools/blob/master/Caesarhumans.jl).  
#### What does it do?
This Caesar shift program can take a custom alphabet and move the letters along just like in a Caesar cipher. It brute forces the cipher by displaying all possible shifts of the ciphertext. It can be used to encrypt and decrypt Caesar ciphers.  
### Entropy
Associated files: [individual\\Entropyfunc.jl](https://github.com/Squalm/Cipher-Tools/blob/master/individual/Entropyfunc.jl) & [Entropyhumans.jl](https://github.com/Squalm/Cipher-Tools/blob/master/Entropyhumans.jl).  
#### What does it do?
This calculator computes the entropy of a text. Entropy is similar to the index of coincidence. However, IoC is the chance of picking two random letters and them being the same. Entropy is the sum of the chances to pick each letter from the text.  
### Affine  
Associated files: [individual\\Affinefunc.jl](https://github.com/Squalm/Cipher-Tools/blob/master/individual/Affinefunc.jl) & [Affinehumans.jl](ttps://github.com/Squalm/Cipher-Tools/blob/master/Affinehumans.jl)
#### What does it do?
Brute force affine cipher super quickly! This will brute force affine ciphers and return the decrypted text assuming that it's English (more languages to be added). An affine cipher is a variant of a Caesar cipher that falls under the category of substitution ciphers.  
### Utilities
Associated files: [individual\\Utils.jl](https://github.com/Squalm/Cipher-Tools/blob/master/individual/Utils.jl).  
#### What does it do?
This is a collection of little tools. They're all listed below.  
 - removeextras: Removes all characters from `text` that are not in `alphabet`.
