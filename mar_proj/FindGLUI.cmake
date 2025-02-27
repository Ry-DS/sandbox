IF (GLUI_INCLUDE_DIR)
  SET(GLUI_FIND_QUIETLY TRUE)
ENDIF (GLUI_INCLUDE_DIR)

FIND_PATH( GLEW_INCLUDE_DIR glui.h PATHS /usr/local/include /usr/include ~/usr/lib PATH_SUFFIXES gl/ GL/ )
SET( GLUI_NAMES glui GLUI )
FIND_LIBRARY( GLUI_LIBRARIES NAMES ${GLUI_NAMES} PATHS /usr/lib /usr/local/lib ~/usr/lib )

GET_FILENAME_COMPONENT( GLUI_LIBRARIES_DIR ${GLUI_LIBRARIES} PATH )

IF (GLUI_INCLUDE_DIR AND GLUI_LIBRARIES)
   SET(GLUI_FOUND TRUE)
    SET( GLUI_LIBRARIES_DIR ${GLUI_LIBRARIES} )
ELSE (GLUI_INCLUDE_DIR AND GLUI_LIBRARIES)
   SET( GLUI_FOUND FALSE )
   SET( GLUI_LIBRARIES_DIR )
ENDIF (GLUI_INCLUDE_DIR AND GLUI_LIBRARIES)
