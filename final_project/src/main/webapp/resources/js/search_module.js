/** 검색 결과 출력을 관리하는 자바스크립트 모듈
 * 	같은 프로젝트 내에 있는 SearchController의 출력 결과(JSON 형식)를 가져온다.
 */
console.log("검색 모듈--------------------------------");
var searchService = (function() {
	function getResult(param, callback, error) {
		var query = param.query;
		var type = param.type;
		console.log(query);
		console.log(type);
		$.getJSON("/search/result?type=" + type +"&query=" + query,
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
		getResult : getResult
	};
})();