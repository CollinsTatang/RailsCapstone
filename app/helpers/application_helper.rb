module ApplicationHelper
    def alert_notice
        return unless notice
    
        content_tag(:div, class: 'alert alert-secondary', role: 'alert') do
          notice
        end
      end
    
      def cate1
        cates = Category.all
        return if cates[0].nil?
    
        content_tag(:div) do
          (link_to cates[0].name, category_path(cates[0]), class: 'mx-2 link-dark text-decoration-none')
        end
      end
    
      def cate2
        cates = Category.all
        return if cates[1].nil?
    
        content_tag(:div) do
          (link_to cates[1].name, category_path(cates[1]), class: 'mx-2 link-dark text-decoration-none')
        end
      end
    
      def cate3
        cates = Category.all
        return if cates[2].nil?
    
        content_tag(:div) do
          (link_to cates[2].name, category_path(cates[2]), class: 'mx-2 link-dark text-decoration-none')
        end
      end
    
      def cate4
        cates = Category.all
        return if cates[3].nil?
    
        content_tag(:div) do
          (link_to cates[3].name, category_path(cates[3]), class: 'mx-2 link-dark text-decoration-none')
        end
      end
    
      def cate5
        cates = Category.all
        return if cates[4].nil?
    
        content_tag(:div) do
          (link_to cates[4].name, category_path(cates[4]), class: 'mx-2 link-dark text-decoration-none')
        end
      end
    
      def cate6
        cates = Category.all
        return if cates[5].nil?
    
        content_tag(:div) do
          (link_to cates[5].name, category_path(cates[5]), class: 'mx-2 link-dark text-decoration-none')
        end
      end
    
      def nav_cates(cates)
        return if cates.nil?
        return if cates.count.zero?
    
        cate1 +
          cate2 +
          cate3 +
          cate4 +
          cate5 +
          cate6
      end
    
      def nav_category_all(categories)
        return unless categories
    
        categories
      end
end
