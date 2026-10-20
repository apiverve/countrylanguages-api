from setuptools import setup, find_packages

setup(
    name='apiverve_countrylanguages',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Country Languages lists official and commonly spoken languages for any country using its two-letter ISO code. It returns the common country name, formal official name, an array of recognized languages, and the total language count.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/countrylanguages?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
