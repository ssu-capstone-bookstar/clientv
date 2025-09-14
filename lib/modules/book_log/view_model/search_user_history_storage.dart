import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class UserSearchHistory {
  int memberId;
  String nickName;

  UserSearchHistory({required this.memberId, required this.nickName});

  // 객체 → Map
  Map<String, dynamic> toJson() {
    return {
      'memberId': memberId,
      'nickName': nickName,
    };
  }

  // Map → 객체
  factory UserSearchHistory.fromJson(Map<String, dynamic> json) {
    return UserSearchHistory(
      memberId: json['memberId'],
      nickName: json['nickName'],
    );
  }
}

class SearchUserHistoryStorage {
  static const _key = 'book_log_user_search_history';

  /// 저장
  static Future<void> saveHistory({required int memberId, required String nickName}) async {
    final prefs = await SharedPreferences.getInstance();
    final history = await loadHistories();
    final isExist = history.any((h) => h.memberId == memberId);
    final newItem = UserSearchHistory(memberId: memberId, nickName: nickName);
    if (isExist) return;
    final newHistory = [newItem, ...history];
    final jsonList = newHistory.map((h) => h.toJson()).toList();
    final jsonString = jsonEncode(jsonList);
    await prefs.setString(_key, jsonString);
  }

  /// 불러오기
  static Future<List<UserSearchHistory>> loadHistories() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_key);

    if (jsonString == null) return [];

    final List decoded = jsonDecode(jsonString);
    return decoded.map((item) => UserSearchHistory.fromJson(item)).toList();
  }

  /// 삭제
  static Future<void> removeHistory({required int memberId}) async {
    final prefs = await SharedPreferences.getInstance();
    final history = await loadHistories();
    final newHistory = history.where((h) => h.memberId != memberId).toList();
    final jsonList = newHistory.map((h) => h.toJson()).toList();
    final jsonString = jsonEncode(jsonList);
    await prefs.setString(_key, jsonString);
  }
}
