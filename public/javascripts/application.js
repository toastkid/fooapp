// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function tweet(text){
  $.post("/twitter/update", { tweet: text } );
}
