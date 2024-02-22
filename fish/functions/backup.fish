# backs up a file
function backup
  argparse b/backup r/rollback -- $argv

  if set -ql _flag_backup
    set -f filename ~/backups/$argv[1]_(date +%d_%m_%+4Y_%H_%M_%S).tar
    tar -cf $filename $argv[1]
    gzip $filename
  end

  if set -ql _flag_rollback
    tar -xvzf $argv[1]
  end
end
