Rails.application.routes.draw do

  post 'authentication' => 'authentication#authenticate'

  namespace :api do
    namespace :v1 do
      resources :alignments, except: [:new, :edit]
      resources :armor_types, except: [:new, :edit]
      resources :armors, except: [:new, :edit]
      resources :campaign_journals, except: [:new, :edit]
      resources :campaign_members, except: [:new, :edit]
      resources :campaigns, except: [:new, :edit]
      resources :character_class_evolutions, except: [:new, :edit]
      resources :character_classes, except: [:new, :edit]
      resources :character_races, except: [:new, :edit]
      resources :characters, except: [:new, :edit]
      resources :charisma_mods, except: [:new, :edit]
      resources :constitution_mods, except: [:new, :edit]
      resources :dexterity_mods, except: [:new, :edit]
      resources :dices, except: [:new, :edit]
      resources :effect_types, except: [:new, :edit]
      resources :effects, except: [:new, :edit]
      resources :element_types, except: [:new, :edit]
      resources :expertises, except: [:new, :edit]
      resources :intelligence_mods, except: [:new, :edit]
      resources :item_types, except: [:new, :edit]
      resources :items, except: [:new, :edit]
      resources :language_types, except: [:new, :edit]
      resources :material_types, except: [:new, :edit]
      resources :origins, except: [:new, :edit]
      resources :trait_types, except: [:new, :edit]
      resources :traits, except: [:new, :edit]
      resources :roles, except: [:new, :edit]
      resources :skill_types, except: [:new, :edit]
      resources :skills, except: [:new, :edit]
      resources :spell_circles, except: [:new, :edit]
      resources :spell_types, except: [:new, :edit]
      resources :spells, except: [:new, :edit]
      resources :strength_mods, except: [:new, :edit]
      resources :thief_talents, except: [:new, :edit]
      resources :undead_banes, except: [:new, :edit]
      resources :users, except: [:new, :edit]
      resources :weapon_types, except: [:new, :edit]
      resources :weapons, except: [:new, :edit]
      resources :wisdom_mods, except: [:new, :edit]

      get 'character_classes/:id/showcase' => 'character_classes#showcase'
    end
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
