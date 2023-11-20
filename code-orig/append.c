#include <stdio.h>
#include <stdlib.h>
// Define the Node structure
struct Node {
    int data;
    struct Node* next;
};

// Declaration of the external Rust function to append a node
extern void append_node_from_c(struct Node* head, int data);

// Function to append a node to the end of the linked list
void append_node_from_c(struct Node* head, int data) {
    struct Node* new_node = malloc(sizeof(struct Node));
    new_node->data = data;
    new_node->next = NULL;

    if (head == NULL) {
        return;
    }

    struct Node* current = head;
    while (current->next != NULL) {
        current = current->next;
    }

    current->next = new_node;
}
