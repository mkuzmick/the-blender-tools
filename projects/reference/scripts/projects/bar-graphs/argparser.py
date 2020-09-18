import sys
import argparse

def get_arguments(argArray):
    argv = sys.argv
    usage_text = (
            "Run blender in background mode with this script:"
            "  blender --background --python " + __file__ + " -- [options]"
        )
    if "--" not in argv:
        argv = []  # as if no args are passed
    else:
        argv = argv[argv.index("--") + 1:]  # get all args after "--"
    parser = argparse.ArgumentParser(description=usage_text)
    parser.add_argument(
        "-t", "--text", dest="text", type=str, required=False,
        help="This text will be used to render an image",
    )
    parser.add_argument(
        "-j", "--JSON_LINK", dest="JSON_LINK", type=str, required=False,
        help="This JSON file will be used as data",
    )
    parser.add_argument(
        "-o", "--OUTPUT_PATH", dest="OUTPUT_PATH", type=str, required=True,
        help="This text will be used to define the output path",
    )
    parser.add_argument(
        "--RENDER_PATH", dest="RENDER_PATH", type=str, required=True,
        help="This text will be used to define the render path",
    )
    parser.add_argument(
        "--SHOOT_DATE", dest="SHOOT_DATE", type=str, required=True,
        help="This text will be used to define the shoot date string",
    )
    parser.add_argument(
        "--SHOOT_TIME", dest="SHOOT_TIME", type=str, required=True,
        help="This text will be used to define the shoot time string",
    )
    args = parser.parse_args(argv)
    return args

theArgs = get_arguments()
print(f'the shoot date is {theArgs.SHOOT_DATE}')
