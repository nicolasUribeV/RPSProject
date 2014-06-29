# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$(document).on 'change', '#regiones_select', (evt) ->
		$.ajax 'update_comunas',
			type: 'GET'
			dataType: 'script'
			data: {
				Ubicacion_id: $("#regiones_select option:selected").val()
			}
			error: (jqXHR, textStatus, errorThrown) ->
				console.log("AJAX Error: #{textStatus}")
			success: (data, textStatus, jqXHR) ->
				console.log("Dynamic region select OK!")