class Recipe
    include HTTParty
    base_uri 'http://www.recipepuppy.com/api'
    default_params onlyImages: 1
    format :json
# ex http://www.recipepuppy.com/api/?i=onions,garlic&q=omelet&p=3
# Optional Parameters:
# i : comma delimited ingredients
# q : normal search query
# p : page
# format=xml : if you want xml instead of json

    def self.for ( keyword = 'chocolate' )
        get('', query: { q: keyword })['results']
    end
end
