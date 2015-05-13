```
                              __           __
   ________  ____ ___________/ /_    _____/ /_
  / ___/ _ \/ __ `/ ___/ ___/ __ \  / ___/ __ \
 (__  )  __/ /_/ / /  / /__/ / / / (__  ) / / /
/____/\___/\__,_/_/   \___/_/ /_(_)____/_/ /_/
```

# search.sh

A command line search multi-tool. search.sh provides a common interface
for both local file and full text searches, as well as web searches.

## Local Search

The local search commands are a set of commands that wrap common
operations of locally-installed search utilities with uniform command
line argument structures.

### ack

> A tool like grep, optimized for programmers.

http://beyondgrep.com/

```
Usage:
  ack <query> [<directory>]

Description:
  Search file contents using `ack`.
```

### ag / The Silver Searcher

> A code searching tool similar to `ack`, with a focus on speed.

http://betterthanack.com/

https://github.com/ggreer/the_silver_searcher

```
Usage:
  ag <query> [<directory>]

Description:
  Search file contents using The Silver Searcher, aka `ag`.
```

### find

```
Usage:
  find <filename> [<directory>]

Description:
  Search for a file with a given filename in the a directory subtree
  using the `find` utility. By default, this is really just an alias for:
    `find . -name <filename>`
  When the <directory> argument is provided, find uses that directory as the
  subtree root.
```

### locate

```
Usage:
  locate <query> [<directory>]

Description:
  Search for a file with a given filename using the `locate` command. By
  default the scope of the search is global. When the <directory> argument is
  provided, `locate` uses that directory as the subtree root.
```

### Spotlight

Only available on OS X.

```
Usage:
  spotlight <full text query | filename> [<directory>]
  spotlight ( -f | --filename ) <filename> [<directory>]
  spotlight ( --fulltext | -c | --content ) <query> [<directory>]

Options:
  -f --filename             A filename to search for.
  --fulltext -c --content   Text to search for in file contents.

Description:
  Search using spotlight.

  When no options are used, this behaves as if the query was typed into the
  Spotlight menu and will return hits for both the filename and content. When
  a <directory> argument is provided, the search will be scoped to that
  directory and its subtree.

  This command wraps `mdfind` and only works on OS X.
```

## Internet Search

search.sh includes commands for searching each of the major internet
search engines and will default to opening the resulting search results
page in your terminal browser, if one is installed.

### baidu

```
Usage:
  $_ME baidu [<query>]

Description:
  Search with Baidu.
```

### bing

```
Usage:
  $_ME bing [<query>]

Description:
  Search with Bing.
```

### ddg

```
Usage:
  $_ME ddg [<query>]

Description:
  Search with DuckDuckGo.
```

### google

```
Usage:
  $_ME google [<query>]

Description:
  Search with Google.
```

### yahoo

```
Usage:
  $_ME yahoo [<query>]

Description:
  Search with Yahoo!
```

### yandex

```
Usage:
  $_ME yandex [<query>]

Description:
  Search with Yandex.
```

## Additional Search Commands

Also included are several commands for performing searches on various
sites, like YouTube and Wikipedia. Run `search help` to view all of the
available commands.

## Credits

Originally derived from the
[oh-my-zsh web search
plugin](http://git.io/oh-my-zsh-web-search-plugin).
