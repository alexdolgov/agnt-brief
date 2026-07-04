// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import "@openzeppelin/contracts/access/Ownable2Step.sol";

abstract contract Withdrawable is Ownable2Step {
    event Withdrawal(uint256 amount, uint256 occuredAt);

    function withdraw(uint256 amount) external onlyOwner {
        require(address(this).balance >= amount, "Not enough funds");

        emit Withdrawal(amount, block.timestamp);
        _sendFunds(owner(), amount);
    }

    function _sendFunds(address receiverAddress, uint256 amount) private {
        (bool success, ) = payable(receiverAddress).call{value: amount}("");
        require(success, "Transfer failed");
    }
}
