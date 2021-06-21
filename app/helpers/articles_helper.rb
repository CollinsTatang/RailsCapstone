# rubocop:disable all
module ArticlesHelper
    def feature
        @featured = Article.find_by(id: Article.feature.first)
      end
    
      def feature_article(feature)
        return unless feature
    
        content_tag(:div, class: 'col-12 p-0 position-relative feature-article ') do
          content_tag(:div, class: 'position-absolute bottom-0   l-5   start-0 text-light') do
            feature.text
          end +
            (image_tag feature.image_url, class: 'imgg mg-fluid ')
        end
      end

    def vote(article)
        vote = Vote.find_by(article: article, user: current_user)
        if vote
            content_tag(:div) do
                link_to article_vote_path(article), method: :delete, class: 'text-decoration-none link-dark fs-5 mx-2' do 
                  raw('<i class="fas fa-thumbs-down"></i>')
                end
            end
        else
            content_tag(:div) do
            link_to article_votes_path(article_id: article.id), method: :post, class: 'text-decoration-none link-dark fs-5 mx-2' do raw('<i class="fas fa-thumbs-up"></i>')
                end
            end
        end
    end
end
