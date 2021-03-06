format :html do
  
  view :watch do |args|
    wrap args do
      type_link = card.watched? ? "#{watching_type_cards} | " : ""
      plural = card.name.pluralize
      link_args = if card.watched?
        ["Following", :off, "stop sending", { :hover_content=>"Stop Following all #{plural}" } ]
      else
        ["Follow", :on, "send"]
      end
      link_args[0] += " all #{plural}"
      link_args[2] += " emails about changes to #{plural}"
      type_link + watch_link( *link_args )
    end
  end
  
end