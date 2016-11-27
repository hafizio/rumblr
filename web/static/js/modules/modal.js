$(document).on("turbolinks:load", () => {

  $("[data-js-modal]").on("ajax:success", (e, data, status, xhr) => {
    $(".modal-content").html(xhr.responseText)
    $(".modal").modal()
  }).on("ajax:error", (e, xhr, status, error) => {
    console.log(error)
  })

})

