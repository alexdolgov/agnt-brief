pragma solidity ^0.8;

/// @notice Dummy math library for legacy Solidity 0.7 code. Can be refactored away safely in 0.8.
library DummyMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }
}

