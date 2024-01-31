# BUABERRy_Mobile

A BUABERRy App for Mobile

## Command

### FVM

$ fvm flutter clean; fvm flutter pub get; fvm flutter run


### Config flutter_sdk for Android Studio

```agsl
link: https://fvm.app/docs/getting_started/configuration/
   1. Go to Languages & Frameworks > Flutter 
      path = /absolute-project-path/.fvm/flutter_sdk
   2. go to Android Studio -> Preferences -> Editor -> File Types -> Ignored Files and Folders and add flutter_sdk
   3. add the following to .idea/workspace.xml.
    <component name="VcsManagerConfiguration">
      <ignored-roots>
        <path value="$PROJECT_DIR$/.fvm/flutter_sdk" />
      </ignored-roots>
    </component>
```

Test....