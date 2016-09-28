module React.Native
  ( PLATFORM
  , Platform(..)
  , platform
  , registerComponent
  , module Components
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import React (ReactClass)
import React.Native.Image (image, image', Image) as Components
import React.Native.Navigator (navigator, navigator', navigationBar, Navigator, NavigationBar, NAVIGATION) as Components
import React.Native.Text (text, text', textView, textView', Text) as Components
import React.Native.TextInput (textInput, textInput', TextInput) as Components
import React.Native.ToolbarAndroid (toolbarAndroid, toolbarAndroid', ToolbarAndroid) as Components
import React.Native.Touchable (class Touchable) as Components
import React.Native.TouchableHighlight (touchableHighlight, touchableHighlight', TouchableHighlight) as Components
import React.Native.TouchableWithoutFeedback (touchableWithoutFeedback, touchableWithoutFeedback', TouchableWithoutFeedback) as Components
import React.Native.View (view, view', View) as Components

foreign import platformName :: String

data Platform = Android | IOS

-- | Platform OS for the current build.
-- | This value remains constant throughout an application, and only changes
-- | on different builds for different platforms.
platform :: Platform
platform
  | platformName == "android" = Android
  | otherwise = IOS

-- | This effect represents computations which may access or perform operations
-- | on the native platform.
foreign import data PLATFORM :: !

-- | Register a React Native component from a given `ReactClass` with a name
-- | so it can be accessed from the native platform.
foreign import registerComponent :: ∀ eff props. String -> ReactClass props -> Eff (platform :: PLATFORM | eff) Unit
