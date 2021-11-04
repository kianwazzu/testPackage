#get dog http
#' Get dog picture
#'
#' Get a random picture of a dog and display it
#'
#'
#' @return
#' @export
#'
#' @examples
#' get_dog_picture()
#'
get_dog_picture <- function(){
response <- httr::GET("https://dog.ceo/api/breeds/image/random")
if(httr::status_code(response) == 200){
  response <- httr::content(response)
  im <- imager::load.image(response$message)
  plot(im)
}else{
  print("Oh no something went wrong!")
}
}
