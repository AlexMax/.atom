# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

if process.platform == 'darwin'
	atom.config.set('core.themes', ['unity-ui', 'one-dark-syntax'])
else
	atom.config.set('core.themes', ['one-dark-ui', 'one-dark-syntax'])

try
	require('child_process').execSync('which go')
	atom.packages.enablePackage('go-plus')
catch error
	atom.packages.disablePackage('go-plus')
