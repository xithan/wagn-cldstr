module Wagn::Set::FortZed
  
  include Wagn::Sets
  
  format :html
  
  define_view :core, :name=>'pledge_count' do |args|
    Account.as_bot do
      # would be great to have a better solution for this!
      _final_search_type_type_core args
    end
  end
end