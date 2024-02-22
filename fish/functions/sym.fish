# moves src -> dest and symlinks dest -> src
function sym
  set -f help 'usage: sym <src> <dest>
Moves src to dest, and then symlinks dest to src.'

  if test (count $argv) -lt 2 
    echo $help
    return 0
  end

  argparse h/help -- $argv

  if set -ql _flag_help
    echo $help
    return 0
  end

  mv $argv[1] $argv[2]
  ln -s $argv[2] $argv[1]
end
