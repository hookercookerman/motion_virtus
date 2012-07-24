require 'bubble-wrap/loader'

BubbleWrap.require('motion/**/*.rb') do
  file("motion/coercion.rb").depends_on('motion/support/descendants_tracker.rb')
  file("motion/coercion.rb").depends_on('motion/support/type_lookup.rb')
  file("motion/coercion.rb").depends_on('motion/support/options.rb')
end

BubbleWrap.require('motion/coercion/true_class.rb')

BubbleWrap.require('motion/coercion/object.rb')

BubbleWrap.require('motion/coercion/time_coercions.rb')
