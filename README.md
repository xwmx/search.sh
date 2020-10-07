```
                              __           __
   ________  ____ ___________/ /_    _____/ /_
  / ___/ _ \/ __ `/ ___/ ___/ __ \  / ___/ __ \
 (__  )  __/ /_/ / /  / /__/ / / / (__  ) / / /
/____/\___/\__,_/_/   \___/_/ /_(_)____/_/ /_/
```

# search.sh

A command line search multi-tool written in Bash. search.sh provides a common
interface for both local file and full text searches, as well as web searches.

## Installation

### Homebrew

To install with [Homebrew](http://brew.sh/):

    brew tap xwmx/taps
    brew install search-sh

### bpkg

To install with [bpkg](http://www.bpkg.io/):

    bpkg install xwmx/search.sh

### Manual

To install manually, simply add the `hosts` script to your `$PATH`. If
you already have a `~/bin` directory, you can use the following command:

    curl -L https://raw.github.com/xwmx/search.sh/master/search.sh \
      -o ~/bin/search && chmod +x ~/bin/search

## Usage

Program usage info:

    search help

Available commands:

    search commands

Command usage information:

    search help <command-name>

### Local Search

The local search commands are a set of commands that wrap common
operations of locally-installed search utilities with uniform command
line argument structures.

#### ack

> A tool like grep, optimized for programmers.

http://beyondgrep.com/

```
Usage:
  search ack <query> [<path>]

Description:
  Search file contents using `ack`. By default, the search is scoped to the
  current directory's subtree. When a path is passed as the second argument,
  the search is scoped to the given directory's subtree or the given file.
```

#### ag / The Silver Searcher

> A code searching tool similar to `ack`, with a focus on speed.

https://github.com/ggreer/the_silver_searcher

http://geoff.greer.fm/ag/

```
Usage:
  search ag <query> [<path>]

Description:
  Search file contents using The Silver Searcher, aka `ag`. By default, the
  search is scoped to the current directory's subtree. When a path is passed
  as the second argument, the search is scoped to the given directory's
  subtree or the given file.
```

#### find

```
Usage:
  search find <filename> [<path>]

Description:
  Search for a file with a given filename in a directory subtree using the
  \`find\` utility. By default, this is scoped to the current directory's
  subtree, making it the equivalent of `find . -name <filename>`. When the
  <path> argument is provided, find uses that directory as the subtree
  root.
```

#### grep

```
Usage:
  search grep <pattern> [<path>]

Description:
  Search file conents in a directory subtree for a given pattern using the
  `grep` utility. By default, this is scoped to the current directory's
  subtree. When the <path> argument is provided, the search is scoped to the
  given directory's subtree or the given file.

  This command calls `grep` with the following options:
    --recursive
    --color=auto
    --line-number
    --exclude-dir={.bzr,.cvs,.git,.hg,.svn}
    -e "$pattern"
```

#### locate

```
Usage:
  search locate <query> [<path>]

Description:
  Search for a file with a given filename using the `locate` command. By
  default the scope of the search is global. When the <path> argument is
  provided, `locate` uses that directory as the subtree root.
```

#### Spotlight

Only available on OS X.

```
Usage:
  search spotlight <full text query | filename> [<path>]
  search spotlight ( -f | --filename ) <filename> [<path>]
  search spotlight ( --fulltext | -c | --content ) <query> [<path>]

Options:
  -f --filename             A filename to search for.
  --fulltext -c --content   Text to search for in file contents.

Description:
  Search using spotlight.

  When no options are used, this behaves as if the query was typed into the
  Spotlight menu and will return hits for both the filename and content. When
  a <path> argument is provided, the search will be scoped to that
  directory and its subtree.

  This command wraps `mdfind` and only works on OS X.
```

### Internet Search

search.sh includes commands for searching each of the major internet
search engines and will default to opening the resulting search results
page in your terminal browser, if one is installed.

#### baidu

```
Usage:
  search baidu [-g|--gui] [<query>]

Options:
  -g --gui  Open in the default GUI browser rather than the terminal.

Description:
  Search with Baidu.
```

#### bing

```
Usage:
  search bing [-g|--gui] [<query>]

Options:
  -g --gui  Open in the default GUI browser rather than the terminal.

Description:
  Search with Bing.
```

#### ddg

```
Usage:
  search ddg [-g|--gui] [<query>]

Options:
  -g --gui  Open in the default GUI browser rather than the terminal.

Description:
  Search with DuckDuckGo.
```

#### google

```
Usage:
  search google [-g|--gui] [<query>]

Options:
  -g --gui  Open in the default GUI browser rather than the terminal.

Description:
  Search with Google.
```

#### yahoo

```
Usage:
  search yahoo [-g|--gui] [<query>]

Options:
  -g --gui  Open in the default GUI browser rather than the terminal.

Description:
  Search with Yahoo!
```

#### yandex

```
Usage:
  search yandex [-g|--gui] [<query>]

Options:
  -g --gui  Open in the default GUI browser rather than the terminal.

Description:
  Search with Yandex.
```

### Additional Search Commands

Also included are several commands for performing searches on various
sites, like YouTube and Wikipedia. Run `search help` to view all of the
available commands.

## Credits

Originally derived from the
[oh-my-zsh web search
plugin](http://git.io/oh-my-zsh-web-search-plugin).
