function backup
  argparse b/backup r/rollback -- $argv

  if set -ql _flag_backup
    tar -cf ~/backups/$argv[1]_(date +%d_%m_%+4Y_%H_%M_%S).tar $argv[1]
  end

  if set -ql _flag_rollback
    tar -xf $argv[1]
  end
end
