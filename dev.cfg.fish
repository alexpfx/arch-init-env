#!/bin/fish

set repos "go-pass_manager" 


for pk in $repos
    echo $pk
	mkdir -p /data/git/$pk
    git clone https://$GITHUB_TOKEN:$GITHUB_TOKEN@github.com/alexpfx/$pk /data/git/$pk
    
end
