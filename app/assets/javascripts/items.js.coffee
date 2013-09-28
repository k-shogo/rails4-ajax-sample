# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.best_in_place').best_in_place()
  $('#items')
    .on 'ajax:complete', (event, ajax, status) ->
      response = $.parseJSON(ajax.responseText)
      html = response.html
      # 画面に追加
      $('#items_list').append html
      # フォームを初期化
      $('#new_item')[0].reset()
  $('#items')
    .on 'ajax:complete', '.delete_item', (event, ajax, status) ->
      # 項目を削除
      $(this).closest('.item').remove()
