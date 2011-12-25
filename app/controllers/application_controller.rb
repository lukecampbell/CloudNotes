class ApplicationController < ActionController::Base
  protect_from_forgery
  def not_authenticated
     redirect_to login_url, :alert=> "First login to access this page."
  end
  def self.purr(message)
     msg =' <div class="purr"> <h3>' + message + '</h3> </div>'
     notice = <<END
     <script type="text/javascript">
        var notice='#{msg}';
        $(notice).purr();
     </script>

END

     notice.html_safe 
  end
end
