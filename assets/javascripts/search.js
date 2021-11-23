---
---

window.simpleJekyllSearch = new SimpleJekyllSearch({
  searchInput: document.getElementById('search-input'),
  resultsContainer: document.getElementById('results-container'),
  json: '{{ site.baseurl }}/search.json',
  searchResultTemplate: '<li><a class="dropdown-item" href="{url}" title="{desc}">{title}</a><li/>',
  noResultsText: 'No results found',
  fuzzy: false
})
