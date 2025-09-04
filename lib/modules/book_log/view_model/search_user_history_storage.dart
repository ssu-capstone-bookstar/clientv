import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

enum ActionType {
  /** 검색 */
  search,
  /** 검색 후, 피드 진입 */
  feed,
}

class UserSearchHistory {
  final String keyword;
  final int? memberId;
  final ActionType actionType;

  UserSearchHistory({required this.keyword, this.memberId, required this.actionType});

  // 객체 → Map
  Map<String, dynamic> toJson() {
    return {
      'keyword': keyword,
      'memberId': memberId,
      'actionType': actionType.name, // enum → String
    };
  }

  // Map → 객체
  factory UserSearchHistory.fromJson(Map<String, dynamic> json) {
    return UserSearchHistory(
      keyword: json['keyword'],
      memberId: json['memberId'],
      actionType: ActionType.values.firstWhere(
        (e) => e.name == json['actionType'],
      ),
    );
  }
}

class SearchUserHistoryStorage {
  static const _key = 'user_search_history';

  /// 저장
  static Future<void> saveHistory(String keyword, int? memberId, ActionType actionType) async {
    final prefs = await SharedPreferences.getInstance();
    final history = await loadHistories();
    final isExist =
        history.any((h) => h.keyword == keyword && h.memberId == memberId && h.actionType == actionType);
    final newItem = UserSearchHistory(keyword: keyword, memberId: memberId, actionType: actionType);
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
  static Future<void> removeHistory(String keyword, int? memberId, ActionType actionType) async {
    final prefs = await SharedPreferences.getInstance();
    final history = await loadHistories();
    final newHistory = history
        .where((h) => h.keyword != keyword && h.memberId != memberId && h.actionType != actionType)
        .toList();
    final jsonList = newHistory.map((h) => h.toJson()).toList();
    final jsonString = jsonEncode(jsonList);
    await prefs.setString(_key, jsonString);
  }
}
