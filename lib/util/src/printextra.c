/* printextra.c - Extra print function definitions. */

/* Print array "arr" of size "size". */
void print_arr(int arr[], int size)
{
	printf("{");
	for (int i = 0; i < size; i++)
	{
		printf("%d, ", arr[i]);
	}
	printf("\b\b}\n");
}
