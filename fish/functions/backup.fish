# backs up a file
function backup
  set -f help "usage: backup --[backup|rollback] <directory>
Backs up a directory.
When using, do not use a full path, and do not include '/' at the end of the directory."
  
  if test (count $argv) -lt 2 
    echo $help
    return 0
  end

  argparse b/backup r/rollback h/help -- $argv

  if set -ql _flag_backup
    set -f filename ~/backups/$argv[1]_(date +%d_%m_%+4Y_%H_%M_%S).tar
    tar -cf $filename $argv[1]
    gzip $filename
  end

  if set -ql _flag_rollback
    tar -xvzf $argv[1]
  end

  if set -ql _flag_help
    echo $help
    return 0
  end
end
