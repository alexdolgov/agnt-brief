// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

library QuickSort {

    /*  order array low to high */
    function quickSort(uint256[] memory arr) internal pure returns (uint256[] memory ) {
        if (arr.length <= 1) {
            return arr;
        }
        _quickSort(arr,0, arr.length - 1);
        return (arr);
    }
    function _quickSort(uint256[] memory arr, uint256 low, uint256 high) private pure {
        if (low < high) {
            uint256 pivotIndex = _partition(arr, low, high);
            if(pivotIndex == 0) return;
            _quickSort(arr, low, pivotIndex - 1);
            _quickSort(arr, pivotIndex + 1, high);
        }
    }
    function _partition(uint256[] memory arr, uint256 low, uint256 high) private pure returns (uint256) {
        uint256 pivot = arr[high];
        uint256 i = low;
        for (uint256 j = low; j <= high - 1; j++) {
            if (arr[j] < pivot) {
                (arr[i], arr[j]) = (arr[j], arr[i]);
                i++;
            }
        }
        (arr[i], arr[high]) = (arr[high], arr[i]);
        return i;
    }
}
