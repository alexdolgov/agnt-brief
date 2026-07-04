// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MonstroPayUSDC is Ownable {
    ERC20 public usdcToken;

    event TransfersCompleted(address[] recipients, uint256[] amounts, uint256 totalAmount);

    constructor(address _usdcToken) Ownable(msg.sender) {
        usdcToken = ERC20(_usdcToken);
    }

    function transferUSDC(address[] memory recipients, uint256[] memory amounts) external onlyOwner {
        require(recipients.length == amounts.length, "Array lengths must match");

        uint256 totalAmount = 0;

        // Calculate the total amount and perform security checks
        for (uint256 i = 0; i < recipients.length; i++) {
            require(recipients[i] != address(0), "Recipient cannot be the zero address");
            require(amounts[i] > 0, "Amount must be greater than 0");
            totalAmount += amounts[i];
        }

        // Check allowance only once
        require(usdcToken.allowance(owner(), address(this)) >= totalAmount, "Insufficient allowance");

        // Perform the transfers
        for (uint256 i = 0; i < recipients.length; i++) {
            require(usdcToken.transferFrom(owner(), recipients[i], amounts[i]), "Transfer failed");
        }

        emit TransfersCompleted(recipients, amounts, totalAmount);
    }
}
