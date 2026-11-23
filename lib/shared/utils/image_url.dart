/// 국립중앙도서관 도서 상세 API는 표지 URL을 `http://www.nl.go.kr/...` 형태로 내려준다.
/// iOS ATS 정책상 http 이미지는 로드가 차단되므로, 같은 경로를 제공하는 https로 바꿔 사용한다.
String? toHttpsImageUrl(String? url) {
  if (url == null) return null;
  final trimmed = url.trim();
  if (trimmed.startsWith('http://')) {
    return 'https://${trimmed.substring('http://'.length)}';
  }
  return trimmed;
}
