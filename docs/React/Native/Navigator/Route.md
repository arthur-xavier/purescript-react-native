## Module React.Native.Navigator.Route

#### `InitialRoute`

``` purescript
type InitialRoute state = { index :: state, title :: String }
```

#### `Route`

``` purescript
type Route state props = { index :: state, title :: String, sceneConfig :: SceneConfig, component :: ReactClass props, passProps :: props }
```

#### `SceneConfig`

``` purescript
data SceneConfig :: *
```

#### `pushFromRight`

``` purescript
pushFromRight :: SceneConfig
```

#### `floatFromRight`

``` purescript
floatFromRight :: SceneConfig
```

#### `floatFromLeft`

``` purescript
floatFromLeft :: SceneConfig
```

#### `floatFromBottom`

``` purescript
floatFromBottom :: SceneConfig
```

#### `floatFromBottomAndroid`

``` purescript
floatFromBottomAndroid :: SceneConfig
```

#### `fadeAndroid`

``` purescript
fadeAndroid :: SceneConfig
```

#### `horizontalSwipeJump`

``` purescript
horizontalSwipeJump :: SceneConfig
```

#### `horizontalSwipeJumpFromRight`

``` purescript
horizontalSwipeJumpFromRight :: SceneConfig
```

#### `verticalUpSwipeJump`

``` purescript
verticalUpSwipeJump :: SceneConfig
```

#### `verticalDownSwipeJump`

``` purescript
verticalDownSwipeJump :: SceneConfig
```


