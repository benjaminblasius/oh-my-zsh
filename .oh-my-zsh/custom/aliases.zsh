# Set file permissions when residing in htdocs
alias typo3Permissions='sudo chown -R b.blasius:staff . &&  sudo chmod -R g+rwx .'

# Set symlinks for TYPO3 installation
alias typo3Symlinks='ln -s typo3_src-git typo3_src && ln -s typo3_src/typo3 typo3 && ln -s typo3_src/t3lib t3lib && ln -s typo3_src/index.php index.php'

# Update TYPO3 source
alias typo3Update='git submodule foreach git fetch --all && git submodule foreach git fetch --tags && git submodule update'

# Import slow query log to anemometer
alias importslowquerylog='sudo pt-query-digest --user=anemometer --password=anemometer --review h=127.0.0.1,D=slow_query_log,t=global_query_review --review-history h=127.0.0.1,D=slow_query_log,t=global_query_review_history --no-report --limit=0% --filter=" \$event->{Bytes} = length(\$event->{arg}) and \$event->{hostname}=\"localhost\"" /opt/local/var/log/mysql5/mysql-slow.log'
