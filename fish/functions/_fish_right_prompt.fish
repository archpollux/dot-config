function __print_or_skip
	set -l nr $argv[1]
	set -l colour $argv[2]

	if command test $nr -gt 0
		printf ' '
		if test (count $argv) -eq 3
			set_color -b $argv[3]
		end
		set_color $colour
		printf "%s" $nr
		set_color normal
	end
end

function __find_git_dir
	set -x dir (pwd)
	while test -n $dir
		if test -d $dir/.git; return 0; end
		set -x dir (echo $dir | awk 'sub("/([^/]*)$", "")')
	end
	return 1
end

function __disabled_fish_right_prompt
	if not __find_git_dir; return; end

	set -l results (git status -sb | awk 'BEGIN {branch=""; added=0; modified=0; unknown=0} /^\#\#/ {branch=$2} /^[^\#\ \?]/ {added++} /^.[^#\ \?]/ {modified++} /^\?\?/ {unknown++} END { print branch "\n" added "\n" modified "\n" unknown}')
	set_color yellow
	printf "%s" $results[1]
	__print_or_skip $results[2] green
	__print_or_skip $results[3] red
	__print_or_skip $results[4] red white
end
