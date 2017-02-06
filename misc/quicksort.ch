#define LEN(list) (sizeof(list) / sizeof(list[0]))

void swap(array int list[], int index1, int index2) {
    int value1 = list[index1];
    int value2 = list[index2];
    
    list[index1] = value2;
    list[index2] = value1;
}

// Partitions array from leftIndex to rightIndex
int partition(array int list[], int leftIndex, int rightIndex) {
    int length = rightIndex - leftIndex + 1;
    
    int pivotIndex = randint(leftIndex, rightIndex);
    int pivotValue =  list[pivotIndex];
    printf("Pivot Value: %d\n", pivotValue);

    swap(list, rightIndex, pivotIndex);
    
    int boundary = leftIndex;
    
    int i;
    for(i = leftIndex; i <= rightIndex - 1; i++) {
        // If the value is less than the pivotIndex, swap
        if (list[i] < pivotValue) {
            // puts("hello");
            swap(list, boundary, i);
            boundary++;
        }
    }
    swap(list, boundary, rightIndex);
    printf("Pivot Index: %d\n", boundary);
    printf("Pivot Range: %d to %d\n", leftIndex, rightIndex);
    // printf("Swap Count: %d\n", swapCount);

    printf(list);
    
    return boundary;
    
}

void quicksort(array int list[], int leftIndex, int rightIndex) {
    if (leftIndex < rightIndex) {
        int pivotIndex = partition(list, leftIndex, rightIndex);
                
        quicksort(list, leftIndex, pivotIndex - 1);
        quicksort(list, pivotIndex + 1, rightIndex);
    }
    
}

int main() {
    array int list[6] = {6, 5, 4, 3, 2, 1};
    
    // partition(list, 0, 5);
    quicksort(list, 0, 5);

    printf("The List: %d", list);
}
