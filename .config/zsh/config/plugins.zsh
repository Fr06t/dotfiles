# Check if plugins directory exists, otherwise finish
if (! [[ -d "$ZDOTDIR/plugins/" ]]) {
  return 1
}
# zsh-autopair: Insert or delete brackets, parens, quotes in pair.
source "$ZDOTDIR/plugins/zsh-autopair/autopair.zsh"

# zsh-autosuggestions: Fish-like auto-suggestions.
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# fast-syntax-highlighting: Syntax highlighting support.
source "$ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
