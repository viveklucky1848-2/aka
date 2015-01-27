# aka - alias' best friend
Grow and expand those aliases with ease. Boost projects' productivity with some terminal shortcuts.

## [What's in the package?](#what)

- Auto reloading of your dot file

- Expand alias history to 10,000

- Server friendly commands with `aka dl` and `aka uplaod`

- Share your aliases in your project with `aka proj`.

- Manage your aliases via terminal without breaking your workflow <3

Here's some of aka's features:

| features          | alias           | aka |
| :-------------: |:----------:| :-----:|
| add alias       | ![Yes](demo/yes.png) | ![Yes](demo/yes.png) |
| remove alias      | ![Yes](demo/yes.png)     |   ![Yes](demo/yes.png) |
| show alias |  ![Yes](demo/yes.png)       |    ![Yes](demo/yes.png) |
| show last few added alias |  -       |    ![Yes](demo/yes.png) |
| edit alias |  -       |    ![Yes](demo/yes.png)  |
| count alias | -      |    ![Yes](demo/yes.png) |
| auto reload dot file      |-  |    ![Yes](demo/yes.png)|
| aka usage | -      |    ![Yes](demo/yes.png) |
| upload to server | -      |    ![Yes](demo/yes.png) |
| download from server | -     |    ![Yes](demo/yes.png) |
| persistency        |-                    |    ![Yes](demo/yes.png) |

## Table of Content

* [What's in the package](#what)
* [Some feature comparison](#overview)
* [Installation](#installation)
  * Install in one line
  * [Install Dependencies for aka](#dependency)
* [Command Reference](#command-reference)
  * [`aka add`](#aka-add)
  * [`aka remove`](#aka-remove)
  * [`aka show`](#aka-show)
  * [`aka edit`](#aka-edit)
  * [`aka count`](#aka-count)
  * [`aka usage`](#aka-usage)
  * [`aka dl`](#aka-download)
  * [`aka upload`](#aka-upload)
* [TODOs](#todos)
* [Contribute](#contribute)
* [Version History](#version-history)
* [License](#license)

## [Installation](#installation)
```
git clone https://github.com/ytbryan/aka.git ~/.aka
cd ~/.aka
./aka copy
```

[or install in a single line:](#single-line)
```
git clone https://github.com/ytbryan/aka.git ~/.aka; cd ~/.aka; ./aka copy
```

## [Install Dependencies for aka](#dependency)
```
cd ~/.aka
bundle install
```
If you encounter issues like ` cannot load such file -- <GEM> (LoadError)`, please execute the commands above.

---

## [Command Reference](#command-reference)

### [aka add](#aka-add)
- add an alias to dot file
```
   aka add hello="echo helloworld"
```

### [aka rm](#aka-remove)
- remove an alias from dot file
```
  aka rm hello
```

### [aka show](#aka-show)
- show an alias
```
   aka show hello
```

### [aka edit](#aka-edit)
- edit an alias
```
aka edit hello="echo hi there"

```


## Sourcing of dot files (.bash_profile, .bashrc, .zshrc)
aka uses trap and signal to reload your dot file on the same shell so that you do not need to source the dot file manually.

## Unaliasing of aliases
`aka rm` includes `unalias` in order to keep removed aliases from the current shell. trap and signal using `SIGUSR2` is used to achieve this.

## aka uses ruby.
If you do not have ruby installed, use [rbenv](https://github.com/sstephenson/rbenv) to install ruby.


## help and commands
```
aka -h
```

## Run tests

```
aka test
```

## [TODOs](#todos)
- move the script to rubygems
- complete the tests

## [Contribute](#contribute)
- Question? Please contact me at [@ytbryan](http://twitter.com/ytbryan)
- If you have an idea to make aka better, please feel free to contribute via [a pull request](https://github.com/ytbryan/aka/compare)

## Thanks
- Luu Gia Thuy (@luugiathuy)

## [Version History](#version-history)



`0.3.71` - First public release


## [License](#license)
[The MIT License (MIT)](http://www.opensource.org/licenses/MIT)

Copyright (c) 2014 - 2015 ytbryan, Bryan Lim <ytbryan@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
