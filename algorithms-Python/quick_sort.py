given_list = input("Please enter the list of numbers: ")
n = len(given_list)

def QuickSort(list_to_sort, left, right):
    i = left + 1
    k = right

    while i < k:
        while list_to_sort[i] < list_to_sort[left] and i < right:
            i += 1

        while list_to_sort[k] >= list_to_sort[left] and k > left:
            k -= 1

        if i < k:
            w = list_to_sort[i]
            list_to_sort[i] = list_to_sort[k]
            list_to_sort[k] = w

    if right-left != 1 or list_to_sort[left] > list_to_sort[k]:
        w = list_to_sort[left]
        list_to_sort[left] = list_to_sort[k]
        list_to_sort[k] = w

    if left < k-1:
        QuickSort(list_to_sort=list_to_sort,left=left, right=k-1)

    if k+1 < right:
        QuickSort(list_to_sort=list_to_sort, left=k+1, right=right)

    return list_to_sort

sorted_list = QuickSort(given_list, left=0, right=n-1)
for num in sorted_list:
    print num
