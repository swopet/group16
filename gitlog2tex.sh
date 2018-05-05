#!/bin/bash

origin=`git config remote.origin.url`
base=`dirname "$origin"`/`basename "$origin" .git`

echo "\\begin{tabular}{l l l}\\textbf{Detail} & \\textbf{Description}\\\\\\hline"
git log --pretty=format:"\\href{$base/commit/%H}{%h} & %an & %s\\\\\\hline" --reverse
echo "\end{tabular}"
