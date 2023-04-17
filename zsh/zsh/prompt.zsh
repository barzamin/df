setopt prompt_subst

function p_arrow() {
	echo "%F{cyan}»%f"
}

function p_colored_path() {
	local slash="%F{cyan}/%f"
	echo "${${PWD/#$HOME/~}//\//$slash}"
}

function p_host() {
	echo "$(hostname -s)"
}

function p_sigil() {
	echo "%F{blue}λ%f"
}

prompt='$(p_sigil) $(p_colored_path)
%{$(iterm2_prompt_mark)%}$(p_arrow) '
export ITERM2_SQUELCH_MARK=1