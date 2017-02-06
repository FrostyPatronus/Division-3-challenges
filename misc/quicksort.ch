#define LEN(list) (sizeof(list) / sizeof(list[0]))

void swap(array int list[], int index1, int index2) {
    int value1 = list[index1];
    int value2 = list[index2];
    
    list[index1] = value2;
    list[index2] = value1;
}

// Partitions array from leftIndex to rightIndex
void partition(array int list[], int leftIndex, int rightIndex) {
    int length = rightIndex - leftIndex + 1;
    
    int pivotIndex = randint(leftIndex, rightIndex);
    printf("%d\n", list[pivotIndex]);

    swap(list, 0, pivotIndex);
    pivotIndex = 0;

    int i;
    for(i = leftIndex + 1; i <= rightIndex; i++) {
        int value = list[i];
        
        // If the value is less than the pivotIndex, swap
        if (value < list[pivotIndex]) {
            puts("hello");
            swap(list, pivotIndex, i);
            pivotIndex = i;
        }
        
    }
}

void quicksort(array int list[], int size) {

    
}

int main() {
    array int list[5] = {1, 2, 3, 4, 5};
    
    partition(list, 0, 4);
    printf(list);
}
