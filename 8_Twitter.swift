/**
This problem was recently asked by Twitter:
You are given the root of a binary tree. Invert the binary tree in place. That is, all left children should become right children, and all right children should become left children.

Example:
    a
   / \
  b   c
 / \  /
d   e f

The inverted version of this tree is as follows:
  a
 / \
 c  b
 \  / \
  f e  d
*/

class BinaryTree<T> {
    var value: T
    var left: BinaryTree?
    var right: BinaryTree?

    init(left: BinaryTree?, right: BinaryTree?, value: T) {
        self.left = left
        self.right = right
        self.value = value
    }

    func traverse(tree: BinaryTree<T>?) {
        guard let tree = tree else { return }

        print(tree.value)
        traverse(tree: tree.left)
        traverse(tree: tree.right)
    }

    func reverse(tree: BinaryTree<T>?) {
        guard let tree = tree else { return }
        let newRight = tree.left

        tree.left = tree.right
        tree.right = newRight

        reverse(tree: tree.left)
        reverse(tree: tree.right)
    }
}