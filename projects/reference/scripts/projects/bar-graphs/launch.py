import sys
sys.path.append('/Users/mk/Desktop/project-blender-py/bpy-scripts')
import mkpy
import makebars
import argparser


def main():
    args = argparser.get_arguments
    mkpy.working.test()
    makebars()

if __name__ == '__main__':
	main()
