import 'dart:convert';

class TokenManager {
  final List<int> actions;
  final int exp;
  final int iat;
  final int userId;

  TokenManager({
    required this.actions,
    required this.exp,
    required this.iat,
    required this.userId,
  });

  factory TokenManager.fromJson(Map<String, dynamic> json) {
    return TokenManager(
      actions: List<int>.from(json['actions'] as List),
      exp: json['exp'] as int,
      iat: json['iat'] as int,
      userId: json['user_id'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {'actions': actions, 'exp': exp, 'iat': iat, 'user_id': userId};
  }
}

class TokenParses {
  TokenManager parseTokenManager(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('Invalid JWT token');
    }

    final base64Url = parts[1];
    final base64 = base64Url.replaceAll('-', '+').replaceAll('_', '/');

    final normalizedBase64 = base64.padRight(
      base64.length + (4 - base64.length % 4) % 4,
      '=',
    );
    final payloadBytes = base64Decode(normalizedBase64);

    final payloadString = utf8.decode(payloadBytes);
    final payloadMap = jsonDecode(payloadString) as Map<String, dynamic>;

    return TokenManager.fromJson(payloadMap);
  }
}
