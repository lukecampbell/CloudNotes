class ApplicationController < ActionController::Base
  protect_from_forgery
  def not_authenticated
     redirect_to login_url, :alert=> "First login to access this page."
  end
  def self.purr
     message =' <div class="purr"> <h3> Hello </h3> </div>'
     notice = <<END
     <script type="text/javascript">
        var notice='#{message}';
        $(notice).purr();
     </script>

END

     notice.html_safe 
  end
end
