# quick shareable example of R + networkD3
refresh:
	Rscript refresh-data.R

# visualize network of relationships between campaign efforts and
# payees for expenses related to meetings and meals
visualize:
	Rscript campaign-meetings.R
	mv denver_campaign_meeting_tree_graph.html gh-pages

# deply to ghpages
deploy_ghpages: visualize
	git subtree push --prefix gh-pages/ origin gh-pages

