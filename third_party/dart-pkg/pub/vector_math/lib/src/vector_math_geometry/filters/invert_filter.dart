// Copyright (c) 2015, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

part of vector_math_geometry;

class InvertFilter extends InplaceGeometryFilter {
  void filterInplace(MeshGeometry mesh) {
    // TODO: Do the tangents need to be inverted? Maybe just the W component?
    // TODO: Should modify in-place be allowed, or should it be required
    // to return a new geometry?

    // Swap all the triangle indices
    for (int i = 0; i < mesh.indices.length; i += 3) {
      int tmp = mesh.indices[i];
      mesh.indices[i] = mesh.indices[i + 2];
      mesh.indices[i + 2] = tmp;
    }

    Vector3List normals = mesh.getViewForAttrib('NORMAL');
    if (normals != null) {
      for (int i = 0; i < normals.length; ++i) {
        normals[i] = -normals[i];
      }
    }
  }
}