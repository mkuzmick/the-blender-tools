#! /usr/bin/env zsh

BLENDER_WORK_FOLDER="$HOME/Desktop/project-blender-py/blender-work"
RENDER_FOLDER="$HOME/Desktop/project-blender-py/renders"
TEMPLATE_FOLDER="$HOME/Desktop/project-blender-py/blender-templates"
PYTHON_SCRIPT="$HOME/Desktop/project-blender-py/bpy-scripts/projects/bar-graphs/launch.py"

CURRENT_TIME=$(date "+%Y%m%d%H%M%S")
OUTPUT_PATH="$BLENDER_WORK_FOLDER/output-$CURRENT_TIME.blend"
RENDER_PATH="$RENDER_FOLDER/scripted/test-$CURRENT_TIME.png"
TEMPLATE="$TEMPLATE_FOLDER/just-a-cam.blend"
DATE_FOR_TEXT=$(date "+%Y%m%d")
TIME_FOR_TEXT=$(date "+%H:%M:%S")

echo "the date for text is being sent in as $DATE_FOR_TEXT"

# blender $TEMPLATE --background --python $PYTHON_SCRIPT  --SHOOT_DATE="$DATE_FOR_TEXT" --SHOOT_TIME="$TIME_FOR_TEXT" --OUTPUT_PATH="$OUTPUT_PATH" --RENDER_PATH="$RENDER_PATH"
# open "$OUTPUT_PATH" -a blender
# open $RENDER_PATH -a Preview
/Applications/Blender.app/Contents/MacOS/blender $TEMPLATE --python $PYTHON_SCRIPT --  --SHOOT_DATE="$DATE_FOR_TEXT" --SHOOT_TIME="$TIME_FOR_TEXT" --OUTPUT_PATH="$OUTPUT_PATH" --RENDER_PATH="$RENDER_PATH"
