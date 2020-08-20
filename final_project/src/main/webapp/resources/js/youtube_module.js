/** 유튜브 API를 사용해 재생목록 데이터를 가져오는 자바스크립트 모듈
 * 
 */
console.log("유튜브 모듈-----------------------------------------------");
var youtubeService = (function() {
	// ****유튜브 API에서 재생목록을 가져오는 함수****
	// 매개변수 : pid(재생목록 id)
	function getPlaylist(param, callback, error) {
		var playlistId = param.playlistId;
		if(param.playlistId != null) {
			var pageToken = param.pageToken;
		}
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
	// ****유튜브 API에서 다음 페이지에 있는 동영상 목록을 가져오는 함수****
	// 매개변수: pid(재생목록 id), nextPageToken(다음 페이지의 id)
	function getPlaylistOther(param, callback, error) {
		var playlistId = param.playlistId;
		var pageToken = param.pageToken;
		
		var key = "AIzaSyBxTQh0vv3IGHD1PUzHlmxkuJmkf9vYmDw";
		var part = "snippet";
		//var playlistName = param.playlistName;
		$.getJSON("https://www.googleapis.com/youtube/v3/playlistItems?part="+part+"&playlistId="
					+playlistId+"&key="+key+"&pageToken="+pageToken, 
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
	// ****유튜브에서 동영상의 정보를 가져오는 함수****
	// 매개변수: vid(동영상 id)
	function getVideoDetail(param, callback, error) {
		var vid = param.vid;
		var key = "AIzaSyBxTQh0vv3IGHD1PUzHlmxkuJmkf9vYmDw";
		var part = "snippet";
		$.getJSON("https://www.googleapis.com/youtube/v3/videos?part="+part+"&id="+vid+"&key="+key,
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
		getPlaylist:getPlaylist,
		getPlaylistOther:getPlaylistOther,
		getVideoDetail:getVideoDetail
	}
})();