class Component < ApplicationRecord
  searchkick text_middle: %i[name lang]
end
