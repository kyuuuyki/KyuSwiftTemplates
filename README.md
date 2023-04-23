# What's This?
![](https://img.shields.io/badge/Swift-5.7-f39f37)

This repository provides a modified CleanSwift template that generates and links all necessary files for modularized scenes. Based on the popular [CleanSwift](https://clean-swift.com/) architecture, this template helps streamline the creation of modularized scenes in your Xcode project.

## Before You Start

Some of the files in this template import the [KyuGenericExtensions](https://github.com/kyuuuyki/KyuGenericExtensions) package to manage modularized modules. If you're not using this package, you can safely remove the package import from the following files:

-   **Router:** TransitionCoordinatorProtocol
-   **SceneModule:** SceneModuleProtocol

For more information on KyuGenericExtensions and an example of how the CleanSwift template can be used in a project, please visit [this repository](https://github.com/kyuuuyki/KyuGenericExtensions).
