import 'dart:convert';

class PanelizationSummary {
  final bool? containsEpubBubbles;
 final  bool? containsImageBubbles;
 
  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });


  PanelizationSummary copyWith({
    bool? containsEpubBubbles,
    bool? containsImageBubbles,
  }) {
    return PanelizationSummary(
      containsEpubBubbles: containsEpubBubbles ?? this.containsEpubBubbles,
      containsImageBubbles: containsImageBubbles ?? this.containsImageBubbles,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'containsEpubBubbles': containsEpubBubbles,
      'containsImageBubbles': containsImageBubbles,
    };
  }

  factory PanelizationSummary.fromMap(Map<String, dynamic> map) {
    return PanelizationSummary(
      containsEpubBubbles: map['containsEpubBubbles'],
      containsImageBubbles: map['containsImageBubbles'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PanelizationSummary.fromJson(String source) => PanelizationSummary.fromMap(json.decode(source));

  @override
  String toString() => 'PanelizationSummary(containsEpubBubbles: $containsEpubBubbles, containsImageBubbles: $containsImageBubbles)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PanelizationSummary &&
      other.containsEpubBubbles == containsEpubBubbles &&
      other.containsImageBubbles == containsImageBubbles;
  }

  @override
  int get hashCode => containsEpubBubbles.hashCode ^ containsImageBubbles.hashCode;
}
