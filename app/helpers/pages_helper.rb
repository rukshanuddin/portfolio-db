module PagesHelper
      def login_required_links_partial_path
    if user_signed_in? 
      'pages/index/side_menu/login_required_links' 
    else 
      'shared/empty_partial'
    end
  end
end
