foreach file (
	exports.zsh
	prompt.zsh
	settings.zsh
	aliases.zsh
	plugins.zsh
) {
  source $ZDOTDIR/config/$file
}
unset file
