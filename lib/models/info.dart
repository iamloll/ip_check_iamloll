class Info {
  String ip;
  String region;
  String city;
  String postal_code;
  
  Info({required this.ip,
        required this.region,
        required this.city,
        required this.postal_code});
  
  @override
  String toString() {
    return "My ip is: $ip,My region is: $region,My city is: $city,My postal code is: $postal_code";
  }
}