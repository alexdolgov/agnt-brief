// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Getters {
    struct Res {
        address addr;
        bool status;
    }

    function returnStruct() external pure returns (Res[] memory result) {
        result = new Res[](2);
        result[0] = Res({addr: 0xDc2a02432e3a234576875739873914151a972C11, status: true});
        result[1] = Res({addr: 0x451b35b2dF223a7Ef71c4ecb451C1C15019e28A5, status: false});
    }

    function returnArray() external pure returns (address[] memory addresses, bool[] memory statuses) {
        addresses = new address[](2);
        addresses[0] = 0xDc2a02432e3a234576875739873914151a972C11;
        addresses[1] = 0x451b35b2dF223a7Ef71c4ecb451C1C15019e28A5;

        statuses = new bool[](2);
        statuses[0] = true;
        statuses[1] = false;
    }
}