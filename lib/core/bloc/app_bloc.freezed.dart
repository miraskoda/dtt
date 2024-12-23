// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(String? savedBookId) savedBookIdChanged,
    required TResult Function() disableFirstUse,
    required TResult Function() darkModeChanged,
    required TResult Function(double aspectRatio) setAspectRatio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(String? savedBookId)? savedBookIdChanged,
    TResult? Function()? disableFirstUse,
    TResult? Function()? darkModeChanged,
    TResult? Function(double aspectRatio)? setAspectRatio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(String? savedBookId)? savedBookIdChanged,
    TResult Function()? disableFirstUse,
    TResult Function()? darkModeChanged,
    TResult Function(double aspectRatio)? setAspectRatio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_SavedBookIdChanged value) savedBookIdChanged,
    required TResult Function(_DisableFirstUse value) disableFirstUse,
    required TResult Function(_DarkModeChanged value) darkModeChanged,
    required TResult Function(_SetAspectRatio value) setAspectRatio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult? Function(_DisableFirstUse value)? disableFirstUse,
    TResult? Function(_DarkModeChanged value)? darkModeChanged,
    TResult? Function(_SetAspectRatio value)? setAspectRatio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult Function(_DisableFirstUse value)? disableFirstUse,
    TResult Function(_DarkModeChanged value)? darkModeChanged,
    TResult Function(_SetAspectRatio value)? setAspectRatio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'AppEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(String? savedBookId) savedBookIdChanged,
    required TResult Function() disableFirstUse,
    required TResult Function() darkModeChanged,
    required TResult Function(double aspectRatio) setAspectRatio,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(String? savedBookId)? savedBookIdChanged,
    TResult? Function()? disableFirstUse,
    TResult? Function()? darkModeChanged,
    TResult? Function(double aspectRatio)? setAspectRatio,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(String? savedBookId)? savedBookIdChanged,
    TResult Function()? disableFirstUse,
    TResult Function()? darkModeChanged,
    TResult Function(double aspectRatio)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_SavedBookIdChanged value) savedBookIdChanged,
    required TResult Function(_DisableFirstUse value) disableFirstUse,
    required TResult Function(_DarkModeChanged value) darkModeChanged,
    required TResult Function(_SetAspectRatio value) setAspectRatio,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult? Function(_DisableFirstUse value)? disableFirstUse,
    TResult? Function(_DarkModeChanged value)? darkModeChanged,
    TResult? Function(_SetAspectRatio value)? setAspectRatio,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult Function(_DisableFirstUse value)? disableFirstUse,
    TResult Function(_DarkModeChanged value)? darkModeChanged,
    TResult Function(_SetAspectRatio value)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AppEvent {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$LocaleChangedImplCopyWith<$Res> {
  factory _$$LocaleChangedImplCopyWith(
          _$LocaleChangedImpl value, $Res Function(_$LocaleChangedImpl) then) =
      __$$LocaleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String locale});
}

/// @nodoc
class __$$LocaleChangedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$LocaleChangedImpl>
    implements _$$LocaleChangedImplCopyWith<$Res> {
  __$$LocaleChangedImplCopyWithImpl(
      _$LocaleChangedImpl _value, $Res Function(_$LocaleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$LocaleChangedImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocaleChangedImpl implements _LocaleChanged {
  const _$LocaleChangedImpl({required this.locale});

  @override
  final String locale;

  @override
  String toString() {
    return 'AppEvent.localeChanged(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleChangedImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleChangedImplCopyWith<_$LocaleChangedImpl> get copyWith =>
      __$$LocaleChangedImplCopyWithImpl<_$LocaleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(String? savedBookId) savedBookIdChanged,
    required TResult Function() disableFirstUse,
    required TResult Function() darkModeChanged,
    required TResult Function(double aspectRatio) setAspectRatio,
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(String? savedBookId)? savedBookIdChanged,
    TResult? Function()? disableFirstUse,
    TResult? Function()? darkModeChanged,
    TResult? Function(double aspectRatio)? setAspectRatio,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(String? savedBookId)? savedBookIdChanged,
    TResult Function()? disableFirstUse,
    TResult Function()? darkModeChanged,
    TResult Function(double aspectRatio)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_SavedBookIdChanged value) savedBookIdChanged,
    required TResult Function(_DisableFirstUse value) disableFirstUse,
    required TResult Function(_DarkModeChanged value) darkModeChanged,
    required TResult Function(_SetAspectRatio value) setAspectRatio,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult? Function(_DisableFirstUse value)? disableFirstUse,
    TResult? Function(_DarkModeChanged value)? darkModeChanged,
    TResult? Function(_SetAspectRatio value)? setAspectRatio,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult Function(_DisableFirstUse value)? disableFirstUse,
    TResult Function(_DarkModeChanged value)? darkModeChanged,
    TResult Function(_SetAspectRatio value)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class _LocaleChanged implements AppEvent {
  const factory _LocaleChanged({required final String locale}) =
      _$LocaleChangedImpl;

  String get locale;
  @JsonKey(ignore: true)
  _$$LocaleChangedImplCopyWith<_$LocaleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedBookIdChangedImplCopyWith<$Res> {
  factory _$$SavedBookIdChangedImplCopyWith(_$SavedBookIdChangedImpl value,
          $Res Function(_$SavedBookIdChangedImpl) then) =
      __$$SavedBookIdChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? savedBookId});
}

/// @nodoc
class __$$SavedBookIdChangedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$SavedBookIdChangedImpl>
    implements _$$SavedBookIdChangedImplCopyWith<$Res> {
  __$$SavedBookIdChangedImplCopyWithImpl(_$SavedBookIdChangedImpl _value,
      $Res Function(_$SavedBookIdChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedBookId = freezed,
  }) {
    return _then(_$SavedBookIdChangedImpl(
      savedBookId: freezed == savedBookId
          ? _value.savedBookId
          : savedBookId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SavedBookIdChangedImpl implements _SavedBookIdChanged {
  const _$SavedBookIdChangedImpl({required this.savedBookId});

  @override
  final String? savedBookId;

  @override
  String toString() {
    return 'AppEvent.savedBookIdChanged(savedBookId: $savedBookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedBookIdChangedImpl &&
            (identical(other.savedBookId, savedBookId) ||
                other.savedBookId == savedBookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savedBookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedBookIdChangedImplCopyWith<_$SavedBookIdChangedImpl> get copyWith =>
      __$$SavedBookIdChangedImplCopyWithImpl<_$SavedBookIdChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(String? savedBookId) savedBookIdChanged,
    required TResult Function() disableFirstUse,
    required TResult Function() darkModeChanged,
    required TResult Function(double aspectRatio) setAspectRatio,
  }) {
    return savedBookIdChanged(savedBookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(String? savedBookId)? savedBookIdChanged,
    TResult? Function()? disableFirstUse,
    TResult? Function()? darkModeChanged,
    TResult? Function(double aspectRatio)? setAspectRatio,
  }) {
    return savedBookIdChanged?.call(savedBookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(String? savedBookId)? savedBookIdChanged,
    TResult Function()? disableFirstUse,
    TResult Function()? darkModeChanged,
    TResult Function(double aspectRatio)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (savedBookIdChanged != null) {
      return savedBookIdChanged(savedBookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_SavedBookIdChanged value) savedBookIdChanged,
    required TResult Function(_DisableFirstUse value) disableFirstUse,
    required TResult Function(_DarkModeChanged value) darkModeChanged,
    required TResult Function(_SetAspectRatio value) setAspectRatio,
  }) {
    return savedBookIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult? Function(_DisableFirstUse value)? disableFirstUse,
    TResult? Function(_DarkModeChanged value)? darkModeChanged,
    TResult? Function(_SetAspectRatio value)? setAspectRatio,
  }) {
    return savedBookIdChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult Function(_DisableFirstUse value)? disableFirstUse,
    TResult Function(_DarkModeChanged value)? darkModeChanged,
    TResult Function(_SetAspectRatio value)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (savedBookIdChanged != null) {
      return savedBookIdChanged(this);
    }
    return orElse();
  }
}

abstract class _SavedBookIdChanged implements AppEvent {
  const factory _SavedBookIdChanged({required final String? savedBookId}) =
      _$SavedBookIdChangedImpl;

  String? get savedBookId;
  @JsonKey(ignore: true)
  _$$SavedBookIdChangedImplCopyWith<_$SavedBookIdChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisableFirstUseImplCopyWith<$Res> {
  factory _$$DisableFirstUseImplCopyWith(_$DisableFirstUseImpl value,
          $Res Function(_$DisableFirstUseImpl) then) =
      __$$DisableFirstUseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisableFirstUseImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$DisableFirstUseImpl>
    implements _$$DisableFirstUseImplCopyWith<$Res> {
  __$$DisableFirstUseImplCopyWithImpl(
      _$DisableFirstUseImpl _value, $Res Function(_$DisableFirstUseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisableFirstUseImpl implements _DisableFirstUse {
  const _$DisableFirstUseImpl();

  @override
  String toString() {
    return 'AppEvent.disableFirstUse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisableFirstUseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(String? savedBookId) savedBookIdChanged,
    required TResult Function() disableFirstUse,
    required TResult Function() darkModeChanged,
    required TResult Function(double aspectRatio) setAspectRatio,
  }) {
    return disableFirstUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(String? savedBookId)? savedBookIdChanged,
    TResult? Function()? disableFirstUse,
    TResult? Function()? darkModeChanged,
    TResult? Function(double aspectRatio)? setAspectRatio,
  }) {
    return disableFirstUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(String? savedBookId)? savedBookIdChanged,
    TResult Function()? disableFirstUse,
    TResult Function()? darkModeChanged,
    TResult Function(double aspectRatio)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (disableFirstUse != null) {
      return disableFirstUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_SavedBookIdChanged value) savedBookIdChanged,
    required TResult Function(_DisableFirstUse value) disableFirstUse,
    required TResult Function(_DarkModeChanged value) darkModeChanged,
    required TResult Function(_SetAspectRatio value) setAspectRatio,
  }) {
    return disableFirstUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult? Function(_DisableFirstUse value)? disableFirstUse,
    TResult? Function(_DarkModeChanged value)? darkModeChanged,
    TResult? Function(_SetAspectRatio value)? setAspectRatio,
  }) {
    return disableFirstUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult Function(_DisableFirstUse value)? disableFirstUse,
    TResult Function(_DarkModeChanged value)? darkModeChanged,
    TResult Function(_SetAspectRatio value)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (disableFirstUse != null) {
      return disableFirstUse(this);
    }
    return orElse();
  }
}

abstract class _DisableFirstUse implements AppEvent {
  const factory _DisableFirstUse() = _$DisableFirstUseImpl;
}

/// @nodoc
abstract class _$$DarkModeChangedImplCopyWith<$Res> {
  factory _$$DarkModeChangedImplCopyWith(_$DarkModeChangedImpl value,
          $Res Function(_$DarkModeChangedImpl) then) =
      __$$DarkModeChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DarkModeChangedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$DarkModeChangedImpl>
    implements _$$DarkModeChangedImplCopyWith<$Res> {
  __$$DarkModeChangedImplCopyWithImpl(
      _$DarkModeChangedImpl _value, $Res Function(_$DarkModeChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DarkModeChangedImpl implements _DarkModeChanged {
  const _$DarkModeChangedImpl();

  @override
  String toString() {
    return 'AppEvent.darkModeChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DarkModeChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(String? savedBookId) savedBookIdChanged,
    required TResult Function() disableFirstUse,
    required TResult Function() darkModeChanged,
    required TResult Function(double aspectRatio) setAspectRatio,
  }) {
    return darkModeChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(String? savedBookId)? savedBookIdChanged,
    TResult? Function()? disableFirstUse,
    TResult? Function()? darkModeChanged,
    TResult? Function(double aspectRatio)? setAspectRatio,
  }) {
    return darkModeChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(String? savedBookId)? savedBookIdChanged,
    TResult Function()? disableFirstUse,
    TResult Function()? darkModeChanged,
    TResult Function(double aspectRatio)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (darkModeChanged != null) {
      return darkModeChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_SavedBookIdChanged value) savedBookIdChanged,
    required TResult Function(_DisableFirstUse value) disableFirstUse,
    required TResult Function(_DarkModeChanged value) darkModeChanged,
    required TResult Function(_SetAspectRatio value) setAspectRatio,
  }) {
    return darkModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult? Function(_DisableFirstUse value)? disableFirstUse,
    TResult? Function(_DarkModeChanged value)? darkModeChanged,
    TResult? Function(_SetAspectRatio value)? setAspectRatio,
  }) {
    return darkModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult Function(_DisableFirstUse value)? disableFirstUse,
    TResult Function(_DarkModeChanged value)? darkModeChanged,
    TResult Function(_SetAspectRatio value)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (darkModeChanged != null) {
      return darkModeChanged(this);
    }
    return orElse();
  }
}

abstract class _DarkModeChanged implements AppEvent {
  const factory _DarkModeChanged() = _$DarkModeChangedImpl;
}

/// @nodoc
abstract class _$$SetAspectRatioImplCopyWith<$Res> {
  factory _$$SetAspectRatioImplCopyWith(_$SetAspectRatioImpl value,
          $Res Function(_$SetAspectRatioImpl) then) =
      __$$SetAspectRatioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double aspectRatio});
}

/// @nodoc
class __$$SetAspectRatioImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$SetAspectRatioImpl>
    implements _$$SetAspectRatioImplCopyWith<$Res> {
  __$$SetAspectRatioImplCopyWithImpl(
      _$SetAspectRatioImpl _value, $Res Function(_$SetAspectRatioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = null,
  }) {
    return _then(_$SetAspectRatioImpl(
      null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetAspectRatioImpl implements _SetAspectRatio {
  const _$SetAspectRatioImpl(this.aspectRatio);

  @override
  final double aspectRatio;

  @override
  String toString() {
    return 'AppEvent.setAspectRatio(aspectRatio: $aspectRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAspectRatioImpl &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, aspectRatio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAspectRatioImplCopyWith<_$SetAspectRatioImpl> get copyWith =>
      __$$SetAspectRatioImplCopyWithImpl<_$SetAspectRatioImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(String? savedBookId) savedBookIdChanged,
    required TResult Function() disableFirstUse,
    required TResult Function() darkModeChanged,
    required TResult Function(double aspectRatio) setAspectRatio,
  }) {
    return setAspectRatio(aspectRatio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(String? savedBookId)? savedBookIdChanged,
    TResult? Function()? disableFirstUse,
    TResult? Function()? darkModeChanged,
    TResult? Function(double aspectRatio)? setAspectRatio,
  }) {
    return setAspectRatio?.call(aspectRatio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(String? savedBookId)? savedBookIdChanged,
    TResult Function()? disableFirstUse,
    TResult Function()? darkModeChanged,
    TResult Function(double aspectRatio)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (setAspectRatio != null) {
      return setAspectRatio(aspectRatio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_SavedBookIdChanged value) savedBookIdChanged,
    required TResult Function(_DisableFirstUse value) disableFirstUse,
    required TResult Function(_DarkModeChanged value) darkModeChanged,
    required TResult Function(_SetAspectRatio value) setAspectRatio,
  }) {
    return setAspectRatio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult? Function(_DisableFirstUse value)? disableFirstUse,
    TResult? Function(_DarkModeChanged value)? darkModeChanged,
    TResult? Function(_SetAspectRatio value)? setAspectRatio,
  }) {
    return setAspectRatio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_SavedBookIdChanged value)? savedBookIdChanged,
    TResult Function(_DisableFirstUse value)? disableFirstUse,
    TResult Function(_DarkModeChanged value)? darkModeChanged,
    TResult Function(_SetAspectRatio value)? setAspectRatio,
    required TResult orElse(),
  }) {
    if (setAspectRatio != null) {
      return setAspectRatio(this);
    }
    return orElse();
  }
}

abstract class _SetAspectRatio implements AppEvent {
  const factory _SetAspectRatio(final double aspectRatio) =
      _$SetAspectRatioImpl;

  double get aspectRatio;
  @JsonKey(ignore: true)
  _$$SetAspectRatioImplCopyWith<_$SetAspectRatioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  UIStatus get status => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;
  bool get isFirstUse => throw _privateConstructorUsedError;
  String? get savedBookId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {UIStatus status,
      String locale,
      bool isDarkMode,
      bool isFirstUse,
      String? savedBookId});

  $UIStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locale = null,
    Object? isDarkMode = null,
    Object? isFirstUse = null,
    Object? savedBookId = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstUse: null == isFirstUse
          ? _value.isFirstUse
          : isFirstUse // ignore: cast_nullable_to_non_nullable
              as bool,
      savedBookId: freezed == savedBookId
          ? _value.savedBookId
          : savedBookId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get status {
    return $UIStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      String locale,
      bool isDarkMode,
      bool isFirstUse,
      String? savedBookId});

  @override
  $UIStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locale = null,
    Object? isDarkMode = null,
    Object? isFirstUse = null,
    Object? savedBookId = freezed,
  }) {
    return _then(_$AppStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstUse: null == isFirstUse
          ? _value.isFirstUse
          : isFirstUse // ignore: cast_nullable_to_non_nullable
              as bool,
      savedBookId: freezed == savedBookId
          ? _value.savedBookId
          : savedBookId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {this.status = const UIInitial(),
      this.locale = AppConfig.defaultLocale,
      this.isDarkMode = true,
      this.isFirstUse = true,
      this.savedBookId});

  @override
  @JsonKey()
  final UIStatus status;
  @override
  @JsonKey()
  final String locale;
  @override
  @JsonKey()
  final bool isDarkMode;
  @override
  @JsonKey()
  final bool isFirstUse;
  @override
  final String? savedBookId;

  @override
  String toString() {
    return 'AppState(status: $status, locale: $locale, isDarkMode: $isDarkMode, isFirstUse: $isFirstUse, savedBookId: $savedBookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.isFirstUse, isFirstUse) ||
                other.isFirstUse == isFirstUse) &&
            (identical(other.savedBookId, savedBookId) ||
                other.savedBookId == savedBookId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, locale, isDarkMode, isFirstUse, savedBookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final UIStatus status,
      final String locale,
      final bool isDarkMode,
      final bool isFirstUse,
      final String? savedBookId}) = _$AppStateImpl;

  @override
  UIStatus get status;
  @override
  String get locale;
  @override
  bool get isDarkMode;
  @override
  bool get isFirstUse;
  @override
  String? get savedBookId;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
