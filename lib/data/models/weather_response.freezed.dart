part of 'weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  Location get location => throw _privateConstructorUsedError;
  Current get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call({Location location, Current current});

  $LocationCopyWith<$Res> get location;
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherResponseImplCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$WeatherResponseImplCopyWith(_$WeatherResponseImpl value,
          $Res Function(_$WeatherResponseImpl) then) =
      __$$WeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Location location, Current current});

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class __$$WeatherResponseImplCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$WeatherResponseImpl>
    implements _$$WeatherResponseImplCopyWith<$Res> {
  __$$WeatherResponseImplCopyWithImpl(
      _$WeatherResponseImpl _value, $Res Function(_$WeatherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_$WeatherResponseImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseImpl implements _WeatherResponse {
  const _$WeatherResponseImpl({required this.location, required this.current});

  factory _$WeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseImplFromJson(json);

  @override
  final Location location;
  @override
  final Current current;

  @override
  String toString() {
    return 'WeatherResponse(location: $location, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current));
  }

  // ignore: deprecated_member_use
  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, current);

  // ignore: deprecated_member_use
  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      __$$WeatherResponseImplCopyWithImpl<_$WeatherResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  const factory _WeatherResponse(
      {required final Location location,
      required final Current current}) = _$WeatherResponseImpl;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseImpl.fromJson;

  @override
  Location get location;
  @override
  Current get current;
  @override
  @JsonKey(ignore: true)
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get name => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'tz_id')
  String get tzId => throw _privateConstructorUsedError;
  @JsonKey(name: 'localtime_epoch')
  int get localtimeEpoch => throw _privateConstructorUsedError;
  String get localtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  // ignore: deprecated_member_use
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String name,
      String region,
      String country,
      double lat,
      double lon,
      @JsonKey(name: 'tz_id') String tzId,
      @JsonKey(name: 'localtime_epoch') int localtimeEpoch,
      String localtime});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? tzId = null,
    Object? localtimeEpoch = null,
    Object? localtime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      tzId: null == tzId
          ? _value.tzId
          : tzId // ignore: cast_nullable_to_non_nullable
              as String,
      localtimeEpoch: null == localtimeEpoch
          ? _value.localtimeEpoch
          : localtimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String region,
      String country,
      double lat,
      double lon,
      @JsonKey(name: 'tz_id') String tzId,
      @JsonKey(name: 'localtime_epoch') int localtimeEpoch,
      String localtime});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? tzId = null,
    Object? localtimeEpoch = null,
    Object? localtime = null,
  }) {
    return _then(_$LocationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      tzId: null == tzId
          ? _value.tzId
          : tzId // ignore: cast_nullable_to_non_nullable
              as String,
      localtimeEpoch: null == localtimeEpoch
          ? _value.localtimeEpoch
          : localtimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {required this.name,
      required this.region,
      required this.country,
      required this.lat,
      required this.lon,
      @JsonKey(name: 'tz_id') required this.tzId,
      @JsonKey(name: 'localtime_epoch') required this.localtimeEpoch,
      required this.localtime});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final String country;
  @override
  final double lat;
  @override
  final double lon;
  @override
  @JsonKey(name: 'tz_id')
  final String tzId;
  @override
  @JsonKey(name: 'localtime_epoch')
  final int localtimeEpoch;
  @override
  final String localtime;

  @override
  String toString() {
    return 'Location(name: $name, region: $region, country: $country, lat: $lat, lon: $lon, tzId: $tzId, localtimeEpoch: $localtimeEpoch, localtime: $localtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.tzId, tzId) || other.tzId == tzId) &&
            (identical(other.localtimeEpoch, localtimeEpoch) ||
                other.localtimeEpoch == localtimeEpoch) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, country, lat, lon,
      tzId, localtimeEpoch, localtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String name,
      required final String region,
      required final String country,
      required final double lat,
      required final double lon,
      @JsonKey(name: 'tz_id') required final String tzId,
      @JsonKey(name: 'localtime_epoch') required final int localtimeEpoch,
      required final String localtime}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  String get country;
  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(name: 'tz_id')
  String get tzId;
  @override
  @JsonKey(name: 'localtime_epoch')
  int get localtimeEpoch;
  @override
  String get localtime;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  @JsonKey(name: 'last_updated_epoch')
  int get lastUpdatedEpoch => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  String get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c')
  double get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f')
  double get tempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  int get isDay => throw _privateConstructorUsedError;
  Condition get condition => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_mph')
  double get windMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph')
  double get windKph => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_degree')
  int get windDegree => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_dir')
  String get windDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure_mb')
  double get pressureMb => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure_in')
  double get pressureIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'precip_mm')
  double get precipMm => throw _privateConstructorUsedError;
  @JsonKey(name: 'precip_in')
  double get precipIn => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  int get cloud => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c')
  double get feelslikeC => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_f')
  double get feelslikeF => throw _privateConstructorUsedError;
  @JsonKey(name: 'vis_km')
  double get visKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'vis_miles')
  double get visMiles => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;
  @JsonKey(name: 'gust_mph')
  double get gustMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'gust_kph')
  double get gustKph => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call(
      {@JsonKey(name: 'last_updated_epoch') int lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') String lastUpdated,
      @JsonKey(name: 'temp_c') double tempC,
      @JsonKey(name: 'temp_f') double tempF,
      @JsonKey(name: 'is_day') int isDay,
      Condition condition,
      @JsonKey(name: 'wind_mph') double windMph,
      @JsonKey(name: 'wind_kph') double windKph,
      @JsonKey(name: 'wind_degree') int windDegree,
      @JsonKey(name: 'wind_dir') String windDir,
      @JsonKey(name: 'pressure_mb') double pressureMb,
      @JsonKey(name: 'pressure_in') double pressureIn,
      @JsonKey(name: 'precip_mm') double precipMm,
      @JsonKey(name: 'precip_in') double precipIn,
      int humidity,
      int cloud,
      @JsonKey(name: 'feelslike_c') double feelslikeC,
      @JsonKey(name: 'feelslike_f') double feelslikeF,
      @JsonKey(name: 'vis_km') double visKm,
      @JsonKey(name: 'vis_miles') double visMiles,
      double uv,
      @JsonKey(name: 'gust_mph') double gustMph,
      @JsonKey(name: 'gust_kph') double gustKph});

  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdatedEpoch = null,
    Object? lastUpdated = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? isDay = null,
    Object? condition = null,
    Object? windMph = null,
    Object? windKph = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressureMb = null,
    Object? pressureIn = null,
    Object? precipMm = null,
    Object? precipIn = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslikeC = null,
    Object? feelslikeF = null,
    Object? visKm = null,
    Object? visMiles = null,
    Object? uv = null,
    Object? gustMph = null,
    Object? gustKph = null,
  }) {
    return _then(_value.copyWith(
      lastUpdatedEpoch: null == lastUpdatedEpoch
          ? _value.lastUpdatedEpoch
          : lastUpdatedEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      pressureIn: null == pressureIn
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double,
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double,
      precipIn: null == precipIn
          ? _value.precipIn
          : precipIn // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslikeC: null == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeF: null == feelslikeF
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double,
      visKm: null == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as double,
      visMiles: null == visMiles
          ? _value.visMiles
          : visMiles // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      gustMph: null == gustMph
          ? _value.gustMph
          : gustMph // ignore: cast_nullable_to_non_nullable
              as double,
      gustKph: null == gustKph
          ? _value.gustKph
          : gustKph // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<$Res> get condition {
    return $ConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'last_updated_epoch') int lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') String lastUpdated,
      @JsonKey(name: 'temp_c') double tempC,
      @JsonKey(name: 'temp_f') double tempF,
      @JsonKey(name: 'is_day') int isDay,
      Condition condition,
      @JsonKey(name: 'wind_mph') double windMph,
      @JsonKey(name: 'wind_kph') double windKph,
      @JsonKey(name: 'wind_degree') int windDegree,
      @JsonKey(name: 'wind_dir') String windDir,
      @JsonKey(name: 'pressure_mb') double pressureMb,
      @JsonKey(name: 'pressure_in') double pressureIn,
      @JsonKey(name: 'precip_mm') double precipMm,
      @JsonKey(name: 'precip_in') double precipIn,
      int humidity,
      int cloud,
      @JsonKey(name: 'feelslike_c') double feelslikeC,
      @JsonKey(name: 'feelslike_f') double feelslikeF,
      @JsonKey(name: 'vis_km') double visKm,
      @JsonKey(name: 'vis_miles') double visMiles,
      double uv,
      @JsonKey(name: 'gust_mph') double gustMph,
      @JsonKey(name: 'gust_kph') double gustKph});

  @override
  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdatedEpoch = null,
    Object? lastUpdated = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? isDay = null,
    Object? condition = null,
    Object? windMph = null,
    Object? windKph = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressureMb = null,
    Object? pressureIn = null,
    Object? precipMm = null,
    Object? precipIn = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? feelslikeC = null,
    Object? feelslikeF = null,
    Object? visKm = null,
    Object? visMiles = null,
    Object? uv = null,
    Object? gustMph = null,
    Object? gustKph = null,
  }) {
    return _then(_$CurrentImpl(
      lastUpdatedEpoch: null == lastUpdatedEpoch
          ? _value.lastUpdatedEpoch
          : lastUpdatedEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      pressureIn: null == pressureIn
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double,
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double,
      precipIn: null == precipIn
          ? _value.precipIn
          : precipIn // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      feelslikeC: null == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeF: null == feelslikeF
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double,
      visKm: null == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as double,
      visMiles: null == visMiles
          ? _value.visMiles
          : visMiles // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      gustMph: null == gustMph
          ? _value.gustMph
          : gustMph // ignore: cast_nullable_to_non_nullable
              as double,
      gustKph: null == gustKph
          ? _value.gustKph
          : gustKph // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentImpl implements _Current {
  const _$CurrentImpl(
      {@JsonKey(name: 'last_updated_epoch') required this.lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') required this.lastUpdated,
      @JsonKey(name: 'temp_c') required this.tempC,
      @JsonKey(name: 'temp_f') required this.tempF,
      @JsonKey(name: 'is_day') required this.isDay,
      required this.condition,
      @JsonKey(name: 'wind_mph') required this.windMph,
      @JsonKey(name: 'wind_kph') required this.windKph,
      @JsonKey(name: 'wind_degree') required this.windDegree,
      @JsonKey(name: 'wind_dir') required this.windDir,
      @JsonKey(name: 'pressure_mb') required this.pressureMb,
      @JsonKey(name: 'pressure_in') required this.pressureIn,
      @JsonKey(name: 'precip_mm') required this.precipMm,
      @JsonKey(name: 'precip_in') required this.precipIn,
      required this.humidity,
      required this.cloud,
      @JsonKey(name: 'feelslike_c') required this.feelslikeC,
      @JsonKey(name: 'feelslike_f') required this.feelslikeF,
      @JsonKey(name: 'vis_km') required this.visKm,
      @JsonKey(name: 'vis_miles') required this.visMiles,
      required this.uv,
      @JsonKey(name: 'gust_mph') required this.gustMph,
      @JsonKey(name: 'gust_kph') required this.gustKph});

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  @JsonKey(name: 'last_updated_epoch')
  final int lastUpdatedEpoch;
  @override
  @JsonKey(name: 'last_updated')
  final String lastUpdated;
  @override
  @JsonKey(name: 'temp_c')
  final double tempC;
  @override
  @JsonKey(name: 'temp_f')
  final double tempF;
  @override
  @JsonKey(name: 'is_day')
  final int isDay;
  @override
  final Condition condition;
  @override
  @JsonKey(name: 'wind_mph')
  final double windMph;
  @override
  @JsonKey(name: 'wind_kph')
  final double windKph;
  @override
  @JsonKey(name: 'wind_degree')
  final int windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  final String windDir;
  @override
  @JsonKey(name: 'pressure_mb')
  final double pressureMb;
  @override
  @JsonKey(name: 'pressure_in')
  final double pressureIn;
  @override
  @JsonKey(name: 'precip_mm')
  final double precipMm;
  @override
  @JsonKey(name: 'precip_in')
  final double precipIn;
  @override
  final int humidity;
  @override
  final int cloud;
  @override
  @JsonKey(name: 'feelslike_c')
  final double feelslikeC;
  @override
  @JsonKey(name: 'feelslike_f')
  final double feelslikeF;
  @override
  @JsonKey(name: 'vis_km')
  final double visKm;
  @override
  @JsonKey(name: 'vis_miles')
  final double visMiles;
  @override
  final double uv;
  @override
  @JsonKey(name: 'gust_mph')
  final double gustMph;
  @override
  @JsonKey(name: 'gust_kph')
  final double gustKph;

  @override
  String toString() {
    return 'Current(lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, isDay: $isDay, condition: $condition, windMph: $windMph, windKph: $windKph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, pressureIn: $pressureIn, precipMm: $precipMm, precipIn: $precipIn, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, visKm: $visKm, visMiles: $visMiles, uv: $uv, gustMph: $gustMph, gustKph: $gustKph)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.lastUpdatedEpoch, lastUpdatedEpoch) ||
                other.lastUpdatedEpoch == lastUpdatedEpoch) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.windMph, windMph) || other.windMph == windMph) &&
            (identical(other.windKph, windKph) || other.windKph == windKph) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.pressureMb, pressureMb) ||
                other.pressureMb == pressureMb) &&
            (identical(other.pressureIn, pressureIn) ||
                other.pressureIn == pressureIn) &&
            (identical(other.precipMm, precipMm) ||
                other.precipMm == precipMm) &&
            (identical(other.precipIn, precipIn) ||
                other.precipIn == precipIn) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.feelslikeC, feelslikeC) ||
                other.feelslikeC == feelslikeC) &&
            (identical(other.feelslikeF, feelslikeF) ||
                other.feelslikeF == feelslikeF) &&
            (identical(other.visKm, visKm) || other.visKm == visKm) &&
            (identical(other.visMiles, visMiles) ||
                other.visMiles == visMiles) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.gustMph, gustMph) || other.gustMph == gustMph) &&
            (identical(other.gustKph, gustKph) || other.gustKph == gustKph));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        lastUpdatedEpoch,
        lastUpdated,
        tempC,
        tempF,
        isDay,
        condition,
        windMph,
        windKph,
        windDegree,
        windDir,
        pressureMb,
        pressureIn,
        precipMm,
        precipIn,
        humidity,
        cloud,
        feelslikeC,
        feelslikeF,
        visKm,
        visMiles,
        uv,
        gustMph,
        gustKph
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  const factory _Current(
      {@JsonKey(name: 'last_updated_epoch') required final int lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') required final String lastUpdated,
      @JsonKey(name: 'temp_c') required final double tempC,
      @JsonKey(name: 'temp_f') required final double tempF,
      @JsonKey(name: 'is_day') required final int isDay,
      required final Condition condition,
      @JsonKey(name: 'wind_mph') required final double windMph,
      @JsonKey(name: 'wind_kph') required final double windKph,
      @JsonKey(name: 'wind_degree') required final int windDegree,
      @JsonKey(name: 'wind_dir') required final String windDir,
      @JsonKey(name: 'pressure_mb') required final double pressureMb,
      @JsonKey(name: 'pressure_in') required final double pressureIn,
      @JsonKey(name: 'precip_mm') required final double precipMm,
      @JsonKey(name: 'precip_in') required final double precipIn,
      required final int humidity,
      required final int cloud,
      @JsonKey(name: 'feelslike_c') required final double feelslikeC,
      @JsonKey(name: 'feelslike_f') required final double feelslikeF,
      @JsonKey(name: 'vis_km') required final double visKm,
      @JsonKey(name: 'vis_miles') required final double visMiles,
      required final double uv,
      @JsonKey(name: 'gust_mph') required final double gustMph,
      @JsonKey(name: 'gust_kph')
      required final double gustKph}) = _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  @JsonKey(name: 'last_updated_epoch')
  int get lastUpdatedEpoch;
  @override
  @JsonKey(name: 'last_updated')
  String get lastUpdated;
  @override
  @JsonKey(name: 'temp_c')
  double get tempC;
  @override
  @JsonKey(name: 'temp_f')
  double get tempF;
  @override
  @JsonKey(name: 'is_day')
  int get isDay;
  @override
  Condition get condition;
  @override
  @JsonKey(name: 'wind_mph')
  double get windMph;
  @override
  @JsonKey(name: 'wind_kph')
  double get windKph;
  @override
  @JsonKey(name: 'wind_degree')
  int get windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  String get windDir;
  @override
  @JsonKey(name: 'pressure_mb')
  double get pressureMb;
  @override
  @JsonKey(name: 'pressure_in')
  double get pressureIn;
  @override
  @JsonKey(name: 'precip_mm')
  double get precipMm;
  @override
  @JsonKey(name: 'precip_in')
  double get precipIn;
  @override
  int get humidity;
  @override
  int get cloud;
  @override
  @JsonKey(name: 'feelslike_c')
  double get feelslikeC;
  @override
  @JsonKey(name: 'feelslike_f')
  double get feelslikeF;
  @override
  @JsonKey(name: 'vis_km')
  double get visKm;
  @override
  @JsonKey(name: 'vis_miles')
  double get visMiles;
  @override
  double get uv;
  @override
  @JsonKey(name: 'gust_mph')
  double get gustMph;
  @override
  @JsonKey(name: 'gust_kph')
  double get gustKph;
  @override
  @JsonKey(ignore: true)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return _Condition.fromJson(json);
}

/// @nodoc
mixin _$Condition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionCopyWith<Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res, Condition>;
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res, $Val extends Condition>
    implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionImplCopyWith<$Res>
    implements $ConditionCopyWith<$Res> {
  factory _$$ConditionImplCopyWith(
          _$ConditionImpl value, $Res Function(_$ConditionImpl) then) =
      __$$ConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class __$$ConditionImplCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$ConditionImpl>
    implements _$$ConditionImplCopyWith<$Res> {
  __$$ConditionImplCopyWithImpl(
      _$ConditionImpl _value, $Res Function(_$ConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_$ConditionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionImpl implements _Condition {
  const _$ConditionImpl(
      {required this.text, required this.icon, required this.code});

  factory _$ConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionImplFromJson(json);

  @override
  final String text;
  @override
  final String icon;
  @override
  final int code;

  @override
  String toString() {
    return 'Condition(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      __$$ConditionImplCopyWithImpl<_$ConditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionImplToJson(
      this,
    );
  }
}

abstract class _Condition implements Condition {
  const factory _Condition(
      {required final String text,
      required final String icon,
      required final int code}) = _$ConditionImpl;

  factory _Condition.fromJson(Map<String, dynamic> json) =
      _$ConditionImpl.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
