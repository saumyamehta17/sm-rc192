authorization do
  role :admin do
    has_permission_on [:articles, :comments], to: [:index, :create, :update, :new, :edit, :show, :destroy]
    end

  role :guest do
    has_permission_on [:articles, :comments], to: [:index, :show]
    has_permission_on  :comments, to: [:edit, :update] do
      if_attribute user: is {user}
    end
  end

  role :moderator do
    includes :guest
    has_permission_on :comments, to: [:edit, :update]
  end

  role :author do
      includes :guest
      has_permission_on :articles, to: [:new, :create]
      has_permission_on :articles, to: [:edit, :update] do
        if_attribute user: is {user}
      end
    end
end