class CardModel{
  String _name,_userPic, _latestMessage, _timeStamp;
  int _notificationCount;
  bool _isNotification;

  CardModel(this._name, this._userPic, this._latestMessage, this._notificationCount, this._timeStamp, this._isNotification);

  String get name => _name;
  String get latestMessage => _latestMessage;
  String get timeStamp => _timeStamp;
  int get notificationCount => _notificationCount;
  bool get isNotification => _isNotification;

  get profilePic => _userPic;

}