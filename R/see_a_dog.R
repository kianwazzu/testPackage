
#' see a dog
#'
#' Get a random picture of a dog and display it
#'
#'
#' @return
#' @export
#'
#' @examples
#' see_a_dog()
#'
see_a_dog <- function(){
response <- httr::GET("https://dog.ceo/api/breeds/image/random")
if(httr::status_code(response) == 200){
  response <- httr::content(response)
  im <- imager::load.image(response$message)
  plot(im)
}else{
  print("Oh no something went wrong!")
}
}
