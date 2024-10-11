# sh princiapl
# Ejecución del programa para Extraer información del modelo de contenidos (archimate). 
# Crear documento Markdown


/Applications/Archi.app/Contents/MacOS/Archi -application com.archimatetool.commandline.app \
-consoleLog -nosplash --modelrepository.loadModel /Users/hwo/gh/model/pgn-078-arq \
--script.runScript /Users/hwo/gh/jarchi-hwo/hwo/markdownDrivingViews-devdocsCLI.ajs \
-vistaDocumental $1
