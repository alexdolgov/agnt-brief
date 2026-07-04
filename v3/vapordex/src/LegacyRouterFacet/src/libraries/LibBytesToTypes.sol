// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

library LibBytesToTypes {
    function bytesToAddress(uint256 _offst, bytes memory _input) internal pure returns (address _output) {
        assembly {
            _output := mload(add(_input, _offst))
        }
    }

    function bytesToUint256(uint256 _offst, bytes memory _input) internal pure returns (uint256 _output) {
        assembly {
            _output := mload(add(_input, _offst))
        }
    }
}
