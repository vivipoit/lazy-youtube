$(document).ready(function () {
  window.playerReady = false;
  $('.youtube').on('click', lazyLoadYoutube);
});

function lazyLoadYoutube(event) {
  const element = event.currentTarget;
  element.classList.remove('with-button');
  window.player = new YT.Player(element.children[0], {
    height: '100%',
    width: '100%',
    videoId: element.dataset['youtubeId'],
    events: { 'onReady': playerOnReady }
  });
}

function playerOnReady(event) {
  playerReady = true;
  event.target.playVideo();
}
