echo '1+1' | sed 's/.*/echo $((&))' | bash
echo '1+1' | sed 's/^puts /' | ruby
echo '1+1' | tr + ' ' | numsum -r
echo '1+1' | sed 's/./&/g' | xargs expr
echo '1+1' | sed 's/./& /g' | sed 's/^/expr /e'

echo '1+1' | bc > a
