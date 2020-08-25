/** 추천 상품을 출력하는 자바스크립트 모듈
 * 
 */
console.log("추천 모듈--------------------------------");
var recommendService = (function() {
	// RecommendController로 분석할 문자열을 보내는 함수
	function sendString(param, callback, error) {
		var str = param.query;
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