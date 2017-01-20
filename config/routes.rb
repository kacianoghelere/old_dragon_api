Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: [:new, :edit]
      resources :alignments, except: [:new, :edit]
      resources :armor_types, except: [:new, :edit]
      resources :armors, except: [:new, :edit]
      resources :campain_journals, except: [:new, :edit]
      resources :campain_members, except: [:new, :edit]
      resources :campains, except: [:new, :edit]
      resources :character_class_armor_types, except: [:new, :edit]
      resources :character_class_evolutions, except: [:new, :edit]
      resources :character_class_item_types, except: [:new, :edit]
      resources :character_class_magic_circles, except: [:new, :edit]
      resources :character_class_requirements, except: [:new, :edit]
      resources :character_class_spell_types, except: [:new, :edit]
      resources :character_class_types, except: [:new, :edit]
      resources :character_class_weapon_types, except: [:new, :edit]
      resources :character_classes, except: [:new, :edit]
      resources :character_race_armors, except: [:new, :edit]
      resources :character_race_languages, except: [:new, :edit]
      resources :character_race_perks, except: [:new, :edit]
      resources :character_race_skills, except: [:new, :edit]
      resources :character_race_thief_talents, except: [:new, :edit]
      resources :character_race_weapons, except: [:new, :edit]
      resources :character_races, except: [:new, :edit]
      resources :character_sheet_attributes, except: [:new, :edit]
      resources :character_sheet_expertises, except: [:new, :edit]
      resources :character_sheet_journals, except: [:new, :edit]
      resources :character_sheets, except: [:new, :edit]
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
      resources :perk_types, except: [:new, :edit]
      resources :perks, except: [:new, :edit]
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
