// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MEVRecover {

    struct Call {
        address to;
        bytes data;
    }

    event Recovered(address to, uint256 value);

    function recover(address to, Call[] calldata calls) public {
        for (uint i; i < calls.length; i++) {
            Call memory call = calls[i];
            (bool success, ) = call.to.call(call.data);
            require(success, "MEVRecover: call failed");
        }
        uint val = address(this).balance;
        // payable(to).transfer(address(this).balance);
        (bool success, ) = payable(to).call{value: address(this).balance}("");
        emit Recovered(to, val);
    }

    receive() external payable {
        // Logic to handle incoming Ether
    }

}
