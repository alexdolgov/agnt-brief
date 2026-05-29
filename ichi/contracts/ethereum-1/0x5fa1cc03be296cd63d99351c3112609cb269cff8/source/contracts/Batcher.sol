// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract Batcher {
    struct Call {
        address to;
        uint256 value;
        bytes data;
    }

    function batch(Call[] memory calls)
        public
    {
        for (uint i = 0; i < calls.length; i++) {
            (bool success, ) = calls[i].to.call{value: calls[i].value}(calls[i].data);
            require(success, "Call failed");
        }
    }
}
