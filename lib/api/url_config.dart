class UrlConfig {
  static const clientId = '95758c9caee44f1aa5e5dd5ec6b86f54';
  static const clientSecret = '6deb26ff5c6d443fa2b4baf8bbcbba2b';
  static const userId = '31ztzfxvywvigiepw74o7dr5oxxq';
  //แก้ไข 3 ตัวแปรก่อนใช้งาน
  static const redirectUrl = 'spotify-playlist-login://callback';
  static const acountTokenUrl = 'https://accounts.spotify.com/api/token';
  static const featuredPlaylistsUrl =
      'https://api.spotify.com/v1/browse/featured-playlists?locale=TH';
  static const searchAlbumUrl = 'https://api.spotify.com/v1/search';
  static const albumDetailUrl = 'https://api.spotify.com/v1/albums';
  static const userPlaylistUrl = 'https://api.spotify.com/v1/me/playlists';
  static const createPlaylistUrl =
      'https://api.spotify.com/v1/users/$userId/playlists';
  static const addTrackToPlaylistUrl = 'https://api.spotify.com/v1/playlists/';
}
