# Cipher-Tools
A Codebreaking/Cipherbreaking Toolkit. Currently early in development.  

## What is Cipher Tools?
Cipher tools is collection of all the tools I've made for codebreaking. They were generally made with things like the cipherchallenge in mind. My current intention is to update all of my Python tools into Julia. There will be no fancy GUIs or anything but I'll keep everything user-friendly and well explained in the code (mostly, hopefully). I will go into detail later in this document if there's anything weird that needs explaining.

### Repl.it Page!
Yes this project exists on repl.it! If you can't run julia locally or just find it easier to use the web then use [this link](https://repl.it/@Squalm/Cipher-Tools#README.md). I'll try to keep this page up to date but that requires me remembering to come over here and pull the latest commits to this page... If it looks old then do leave an issue or give me a message or something.

## List of Tools.

 - [Cipher Identification](https://github.com/Squalm/Cipher-Tools#cipher-identification)
 - [All for Humans](https://github.com/Squalm/Cipher-Tools#all-for-humans) - *Easy interface for people!*
 - [Frequency Analysis](https://github.com/Squalm/Cipher-Tools#frequency-analysis)
 - [Caesar Shift](https://github.com/Squalm/Cipher-Tools#caesar-shift)
 - [ROT13](https://github.com/Squalm/Cipher-Tools#rot13)
 - [Entropy](https://github.com/Squalm/Cipher-Tools#entropy)
 - [Affine](https://github.com/Squalm/Cipher-Tools#affine)
 - [AtBash](https://github.com/Squalm/Cipher-Tools#atbash)
 - [Utilities](https://github.com/Squalm/Cipher-Tools#utilities)

## More Details.
### Cipher Identification
This weird cipher identifier is an AI powered layered cipher identifier (not breaker).  
The AI is currently (a) not working and (b) not using a full set (planned in [schema.json](https://github.com/Squalm/Cipher-Tools/blob/master/AI/Texts/schema.json)) of ciphers to identify (set [currently in use](https://github.com/Squalm/Cipher-Tools/blob/master/AI/Texts/smaller_schema.json)).
### All for Humans
This is a user interface for all the ciphers and analysis tools currently here. This makes it super easy to run any of the stuff in this git, and unless you need to get technical with modifying my code, I suggest you use this instead of running files directly. No need to worry about running the right modules beforehand or even finding the right files! Just use this file!
### Frequency Analysis
This frequency analysis program can take a custom alphabet and returns the frequency of each letter as a value. It also shows the Index of Coincidence of the text.  
### Caesar Shift
This Caesar shift program can take a custom alphabet and move the letters along just like in a Caesar cipher. It brute forces the cipher and tries to figure out which piece of text is English (if the text is in English, its almost always accurate) and then displays all possible shifts of the ciphertext in case it got it wrong or the text is in a different language. It can be used to encrypt and decrypt Caesar ciphers.  
#### ROT13
Just a Caesar shift with a shift of 13 (half of the length of the alphabet).
### Entropy
This calculator computes the entropy of a text. Entropy is similar to the index of coincidence. However, IoC is the chance of picking two random letters and them being the same. Entropy is the sum of the chances to pick each letter from the text.  
### Affine  
Brute force affine cipher super quickly! This will brute force affine ciphers and return the decrypted text assuming that it's English (more languages to be added). An affine cipher is a variant of a Caesar cipher that falls under the category of substitution ciphers.  
#### AtBash
An affine cipher where `a` and `b` equal the length of the alphabet - 1.
### Utilities
This is a collection of little tools. They're all listed below.  
 - removeextras: Removes all characters from `text` that are not in `keepin`.

## Want to Contribute?
Sure! Go right ahead! I welcome (almost) all contributions. This place doesn't need to be exclusively Julia either so go wild!
## License
This project is under a standard [MIT license](https://github.com/Squalm/Cipher-Tools/blob/master/LICENSE).
