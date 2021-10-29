# FruitControl

A frontend iTunes alternative to Linux.

## What exactly is FruitControl?

FruitControl is an iTunes-like frontend for Linux (only) made with Godot, with a self-compiled backend based on libimobiledevice.
This ensures that the newest features are present and it's independent of packages from package managers.

FruitControl's goal is it to provide a native GUI for iPhone/iPad owners to control their devices from their Linux machines.
Restoring, upgrading, general information extraction is already possible. More features are planned in the future.

### Releases? Versioning scheme?

There will always be a "Stable" build, and an "Edge" build (stable-edge)

- Stable build: GUI will support all backend libimobiledevice-utils commands from the latest LTS repo of Ubuntu (20.04)
- Edge build: GUI will support all SELF-COMPILED "libimobiledevice-utils" commands (independent of package manager, newer features)

- The "Stable" build will be versioned like: VERSION_OF_STABLE_LIBIMOBILEDEVICE - GUI_VERSION (i.e "1.21-0.10")
- The "Edge" build will be versioned with a build number which consists of following: yymmdd-hhmm (i.e build "211028-2139")

=> Users of Ubuntu and it's derivates should hence only use "Stable" builds to insure feature parity of backend & frontend. (But they're not limited to!!)
All other distros may compile the backend themselves with my shell script which compiles & installs libimobiledevice and may use the latest GUI in combination.
