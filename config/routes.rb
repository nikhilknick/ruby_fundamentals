Rails.application.routes.draw do
  get "pages/about"
  get "pages/contact"
  # Root route - homepage (/)
  root "welcome#index"

  # ====================
  # BASIC ROUTES
  # ====================
  # Simple GET routes
  get "welcome/index"
  get "about", to: "pages#about"        # /about -> PagesController#about
  get "contact", to: "pages#contact"    # /contact -> PagesController#contact
  get "test", to: "practice#test"       # /test -> PracticeController#test

  # Different HTTP verbs
  post "subscribe", to: "subscriptions#create"    # POST /subscribe
  patch "profile", to: "users#update"             # PATCH /profile
  delete "logout", to: "sessions#destroy"         # DELETE /logout

  # ====================
  # ROUTES WITH PARAMETERS
  # ====================
  # Dynamic segments (URL parameters)
  get "users/:id", to: "users#show"               # /users/123 -> params[:id] = "123"
  get "posts/:id/edit", to: "posts#edit"          # /posts/5/edit
  get "categories/:name", to: "categories#show"   # /categories/ruby

  # ====================
  # NAMED ROUTES
  # ====================
  # Use 'as:' to create path helpers
  get "dashboard", to: "dashboard#index", as: :user_dashboard
  # This creates: user_dashboard_path -> "/dashboard"

  # ====================
  # RESTFUL RESOURCES
  # ====================
  # Creates 7 standard routes automatically (index, show, new, create, edit, update, destroy)
  # resources :articles
  # Generates:
  #   GET    /articles          -> articles#index
  #   GET    /articles/:id      -> articles#show
  #   GET    /articles/new      -> articles#new
  #   POST   /articles          -> articles#create
  #   GET    /articles/:id/edit -> articles#edit
  #   PATCH  /articles/:id      -> articles#update
  #   DELETE /articles/:id      -> articles#destroy

  # Limit which routes are created
  # resources :photos, only: [:index, :show]
  # resources :users, except: [:destroy]

  # ====================
  # NESTED ROUTES
  # ====================
  # For parent-child relationships
  # resources :articles do
  #   resources :comments  # /articles/5/comments
  # end

  # ====================
  # CONSTRAINTS
  # ====================
  # Restrict routes by parameter format
  # get "users/:id", to: "users#show", constraints: { id: /\d+/ }  # Only numbers

  # Reveal health status on /up
  get "up" => "rails/health#show", as: :rails_health_check
end
