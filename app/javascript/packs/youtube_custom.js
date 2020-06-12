$(document).ready(function () {
  $('.youtube').on('click', lazyLoadYoutube);
});

function lazyLoadYoutube(event) {
  const element = event.currentTarget;
  var player = new YT.Player(element.children[0], {
    height: '100%',
    width: '100%',
    videoId: element.dataset['youtubeId']
  });
  element.classList.remove('with-button');
}
