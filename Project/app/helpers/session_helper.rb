module SessionHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user = nil
    @current_user ||= User.find_by(id: session[:user_id])
    return @current_user
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def fillnav
    if !current_user.nil?
      raw ('

                        <li class="nav-item">
                            <div class="d-flex  align-items-center header" style="height:45px;">

                              <img src="https://picsum.photos/35/35" class="rounded-circle ">
                              <a class="nav-link text-white p-1 mr-md-3 "style="font-size: 14px" href="/user/myedit"><b>'+@current_user.first_name.to_s+' '+@current_user.last_name.to_s+'</b></a>
                            </div>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link text-white header pt-2" style="height:45px;   font-size: 17px" href="/logout"><b>Log out</b> </a>
                        </li>


        ')
    else
    '
                <li class="nav-item">
                  <div class="d-flex  align-items-center header" style="height:45px;">
                  </div>
                </li>

                <li class="nav-item">
                  <a class="nav-link text-white header pt-2" style="height:45px;   font-size: 17px" href="/login"><b>Log In</b></a>
                </li>

                <li class="nav-item">
                  <a class="nav-link text-white header pt-2" style="height:45px;   font-size: 17px" href="/signup"><b>Sign Up</b></a>
                </li>



      '.html_safe






    end
  end

end


