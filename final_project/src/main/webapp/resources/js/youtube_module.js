/** 유튜브에서 재생목록을 가져오는 자바스크립트 모듈
 * 
 */
console.log("유튜브 모듈-----------------------------------------------");
var youtubeService = (function() {
	function getPlaylist(param, callback, error) {
		var playlistId = param.playlistId;
		var key = "AIzaSyBxTQh0vv3IGHD1PUzHlmxkuJmkf9vYmDw";
		var part = "snippet";
		//var playlistName = param.playlistName;
		$.getJSON("https://www.googleapis.com/youtube/v3/playlistItems?part="+part+"&playlistId="
					+playlistId+"&key="+key, 
			function(data) {
				if(callback) {
					callback(data);
				}			
			}).fail(function(xhr, status, err) {
				if(error) {
					error();
				}
		});
    }
	return {
		getPlaylist:getPlaylist
	}
})();