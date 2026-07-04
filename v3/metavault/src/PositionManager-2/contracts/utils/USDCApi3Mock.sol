// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.17;



contract USDCApi3Mock {
    function read() external view returns (int224 value, uint32 timestamp){
        value = 1000000000000000000;
        timestamp = uint32(block.timestamp);
    }
}