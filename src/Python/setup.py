from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

ext_modules=[
	Extension("one_primitives", ["one_primitives.pyx"]),
	Extension("two_recursive", ["two_recursive.pyx"]),
	Extension("three_polymorphism", ["three_polymorphism.pyx"]),
	Extension("four_datastructures", ["four_datastructures.pyx"])
]

setup(
	name = "testsuite",
	cmdclass = {'build_ext': build_ext},
	ext_modules = ext_modules,
)
