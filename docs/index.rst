=============
Documentation
=============

mr.ci allows you to run some simple checks against your `Sphinx <http://www.sphinx-doc.org/en/stable/>`_ based documentation.

Dependencies
------------

- `Docker <https://docker.com>`_
- `mr.docs <https://mrdocs.readthedocs.io/en/latest/>`_

Example
-------

.. code-block:: bash

    docker run -v ${PWD}/docs/_build/html:/source mr.pandoc -f html -t markdown index.html -o md/index.md

