Generic cellular data representation library
============================================

    Copyright © 2015 Patryk Zadarnowski «pat@jantar.org».
    All rights reserved.

This library defines a simple type used for efficient streaming
of tabular data using coinductive control structures such as
pipes, conduit or iteratees.

It was originally a part of `pipes-cellular-csv`, but was
distilled into a separate module to facilitate interaction
between different tabular data formats and control structures.

In this structure, each /cell/ of data is annotated
with information about its relation to the following
cell in the stream, namely /end of cell/, /end of row/
and /end of table/ conditions. In addition, in order
to achieve truly-constant memory usage irrespective of
individual cell size, we allow individual cells to be
subdivided further into /parts/, as indicated by the
/end of part/ condition. Logically, this subdivision
into parts is supposed to be purely operational and
have no semantic significance, similarly to subdivision
of lazy bytestrings into chunks.

