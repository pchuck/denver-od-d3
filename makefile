# quick shareable example of R + networkD3
refresh:
	Rscript refresh-data.R

OUTPUT=denver_campaign_meeting_tree_graph.html
# render visualization of network of relationships between
# campaign efforts and payees for expenses related to meetings and meals
render:
	./campaign-meetings.R
	mv $(OUTPUT) gh-pages

display:
	open gh-pages/$(OUTPUT)

# deply to ghpages
deploy_ghpages: visualize
	git subtree push --prefix gh-pages/ origin gh-pages

## environment

# tmuxinator an R dev environment
create_env:
	tmuxinator start r-sandbox

