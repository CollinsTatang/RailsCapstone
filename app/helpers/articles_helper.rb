# rubocop:disable all
module ArticlesHelper

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
