SELECT p.*, COUNT(pt.trackId) from Playlist p 
JOIN PlayListTrack pt ON pt.playListId = p.playListId
GROUP BY p.name