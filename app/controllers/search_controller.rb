class SearchController < ApplicationController
  def index
    @results = search_for_components

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream:
            turbo_stream.update('components',
                                partial: 'components/components',
                                locals: { components: @results })
      end
    end
  end

  def suggestions
    @results = search_for_components

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream:
            turbo_stream.update('suggestions',
                                partial: 'search/suggestions',
                                locals: { results: @results })
      end
    end
  end

  private

  def search_for_components
    if params[:query].blank?
      Component.all
    else
      Component.search(params[:query], fields: %i[title body], operator: 'or', match: :text_middle)
      #puts 'aAKLSJKLASJKLSJAKLSJALKS'
      #puts Component.all
    end
  end
end