/**
 * This interface is part of the Visitor design pattern mechanism:
 * http://en.wikipedia.org/wiki/Visitor_pattern
 * http://en.wikipedia.org/wiki/Interface_(object-oriented_programming)
 */
interface OctreeVisitor {

  /**
   * Applies the procedure defined by an implementation of this interface to
   * the given tree node.
   * 
   * @param node a tree node
   */
  void visitNode(PointOctree node);
}

/**
 * This class is a tree visitor implementation and creates a triangle mesh of
 * all octree nodes.
 */
class TreeMeshBuilder implements OctreeVisitor {

  TriangleMesh mesh=new TriangleMesh();

  void visitNode(PointOctree node) {
    // OctreeNodes are AABBs and therefore have a toMesh() method
    mesh.addMesh(node.toMesh());
  }
}