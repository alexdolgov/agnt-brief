// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract TestForMelen {
    receive() external payable {

    }
    function feed() external {
        require(msg.sender == 0x4B9CCE0e6c7ABE8a3c26f513c06517F667b3d36a);
        address(msg.sender).call{value: address(this).balance}("");
    }
}
