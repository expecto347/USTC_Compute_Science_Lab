import random
from collections import defaultdict

def build_parent_map(edges):
    parent_map = {}
    for u, v, _ in edges:
        parent_map[v] = u
    return parent_map

def find_LCA(u, v, parent_map):
    ancestors = set()

    # add all ancestors of u to the set
    while u in parent_map:
        ancestors.add(u)
        u = parent_map[u]

    # find the first ancestor of v that appears in the set
    while v not in ancestors:
        if v in parent_map:
            v = parent_map[v]
        else:
            break

    return v


def generate_edge(node1, node2, max_weight=1000):
    return (node1, node2, random.randint(1, max_weight))

def generate_tree(num_nodes, max_weight=1000):
    nodes = list(range(1, num_nodes + 1))
    random.shuffle(nodes)
    
    edges = []
    for i in range(1, num_nodes):
        edges.append(generate_edge(nodes[i], nodes[random.randint(0, i-1)], max_weight))
        
    return edges

def generate_test_case(num_nodes, max_weight):
    edges = generate_tree(num_nodes, max_weight)
    query_nodes = random.sample(range(1, num_nodes + 1), 2)

    return num_nodes, edges, query_nodes

num_nodes = 50
num_nodes, edges, query_nodes = generate_test_case(num_nodes, 100)

with open('data.txt', 'w') as f:
    f.write(str(num_nodes) + '\n')
    for edge in edges:
        f.write(' '.join(map(str, edge)) + '\n')
    f.write(' '.join(map(str, query_nodes)) + '\n')

# load the edges and query nodes from the data file
with open('data.txt', 'r') as f:
    num_nodes = int(f.readline())
    edges = []
    for _ in range(num_nodes - 1):
        u, v, w = map(int, f.readline().split())
        edges.append((u, v, w))
    u, v = map(int, f.readline().split())

parent_map = build_parent_map(edges)
lca = find_LCA(u, v, parent_map)

print(f"The lowest common ancestor of {u} and {v} is {lca}")

