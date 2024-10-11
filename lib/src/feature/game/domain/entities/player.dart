
class Player {
  final String id;
  final String name;
  final int wins;
  final int losses;
  final int draws;
  Player({
    required this.id,
    required this.name,
    this.wins = 0,
    this.losses = 0,
    this.draws = 0,
  });

  Player copyWith({
    String? id,
    String? name,
    int? wins,
    int? losses,
    int? draws,
  }) {
    return Player(
      id: id ?? this.id,
      name: name ?? this.name,
      wins: wins ?? this.wins,
      losses: losses ?? this.losses,
      draws: draws ?? this.draws,
    );
  }
}
