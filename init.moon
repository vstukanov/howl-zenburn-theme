theme = howl.ui.theme

name = 'Zenburn'

theme.register(name, bundle_file('zenburn-theme.moon'))

unload = ->
    theme.unload(name)

info = {
    author: 'vstukanov',
    description: 'Zenburn theme for Howl',
    license: 'MIT'
}

{
    :info
    :unload
}
