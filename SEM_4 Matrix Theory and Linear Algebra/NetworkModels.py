import heapq
def dijkstra(graph, start): # Number of nodes
    num_nodes = len(graph)

    # Initialize diatances and priority queue
    distances = {node: float('inf') for node in range(num_nodes)}
    distances[start] = 0
    priority_queue = [(0, start)] # (distance, node)

    while priority_queue:
        current_distance, current_node = heapq.heappop(priority_queue)

        # Skip if the node has already been processed
        if current_distance > distances[current_node]:
            continue

        # Explore neighbors
        for neighbor, weight in graph[current_node]:
            distance = current_distance + weight

            # If a shorter path is found
            if distance < distances[neighbor]:
                distances[neighbor] = distance
                heapq.heappush(priority_queue, (distance, neighbor))
    return distances

#Example graph as adjacency list (node, weight)
graph = { 0: [(1, 2), (2, 4)],
          1: [(0, 2), (2, 1), (3, 7)],
          2: [(0, 4), (1, 1), (3, 3)],
          3: [(1, 7), (2, 3)] }

start_node = 0
distances = dijkstra(graph, start_node)
print("Shortest Distances form Node", start_node, ":", distances)
