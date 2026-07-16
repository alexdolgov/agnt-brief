// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Slot0Reader {
    function readObservationCardinalityNext(address pool) public view returns (
        uint16 observationCardinalityNext
    ) {
        (, bytes memory data) = pool.staticcall(abi.encodeWithSignature("slot0()"));
        (,,,, uint16 _observationCardinalityNext,,) = abi.decode(data, (
            uint160,
            int24,
            uint16,
            uint16,
            uint16,
            uint32,
            bool
        ));
        return _observationCardinalityNext;
    }

}