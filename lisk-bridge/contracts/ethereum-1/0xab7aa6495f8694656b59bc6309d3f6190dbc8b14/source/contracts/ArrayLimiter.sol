// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

abstract contract ArrayLimiter {
    event NewMaxArraySizeSet(uint256 newMaxArraySize);
    uint256 public maxArraySize = 20;

    ///@dev Throws an error if the array size is greater than maxArraySize
    modifier arrayMaxSize(uint256 arraySize) {
        require(arraySize <= maxArraySize, "AL: Array size must be <= maxArraySize");
        _;
    }

    function _setMaxArraySize(uint256 _maxArraySize) internal {
        maxArraySize = _maxArraySize;

        emit NewMaxArraySizeSet(_maxArraySize);
    }
}
