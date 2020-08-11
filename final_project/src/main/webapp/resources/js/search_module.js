/** 검색 결과 출력을 관리하는 자바스크립트 파일
 * 
 *  Jquery로 작성되었으며, Ajax 방식을 사용함
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