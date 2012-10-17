add_image_handlers = ->
  ($ '#prod-image').data 'selectedThumb', ($ '#prod-image img').attr('src')
  ($ 'ul.thumbnails li').eq(0).addClass 'selected'
  ($ 'ul.thumbnails a').on 'click', (event) ->
    ($ '#prod-image').data 'selectedThumb', ($ event.currentTarget).attr('href')
    ($ '#prod-image').data 'selectedThumbId', ($ event.currentTarget).parent().attr('id')
    ($ this).mouseout ->
      ($ 'ul.thumbnails li').removeClass 'selected'
      ($ event.currentTarget).parent('li').addClass 'selected'
    false

show_variant_images = (variant_id) ->
  ($ 'li.vtmb').hide()
  ($ 'li.vtmb-' + variant_id).show()
  currentThumb = ($ '#' + ($ '#prod-image').data('selectedThumbId'))
  if not currentThumb.hasClass('vtmb-' + variant_id) and not currentThumb.hasClass('tmb-all')
    thumb = ($ ($ 'ul.thumbnails li:visible').eq(0))
    newImg = thumb.find('a').attr('href')
    ($ 'ul.thumbnails li').removeClass 'selected'
    thumb.addClass 'selected'
    ($ '#prod-image img').attr 'src', newImg
    ($ '#prod-image').data 'selectedThumb', newImg
    ($ '#prod-image').data 'selectedThumbId', thumb.attr('id')

update_variant_price = (variant) ->
  variant_price = variant.data('price')
  ($ '.price.selling').text(variant_price) if variant_price

$ ->
  add_image_handlers()
  show_variant_images ($ '#product-variants input[type="radio"]').eq(0).attr('value') if ($ '#product-variants input[type="radio"]').length > 0
  ($ '#product-variants input[type="radio"]').click (event) ->
    show_variant_images @value
    update_variant_price ($ this)
