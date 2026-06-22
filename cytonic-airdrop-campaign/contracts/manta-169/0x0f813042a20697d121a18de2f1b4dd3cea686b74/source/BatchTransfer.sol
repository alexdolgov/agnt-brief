// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import IERC20
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract BatchTransfer {
    using SafeERC20 for IERC20;

    /// @dev batch transfer ether to multiple recipients
    /// @param recipients list of recipients
    /// @param amounts list of amounts to transfer
    function batchTransferEther(
        address payable[] calldata recipients,
        uint256[] calldata amounts
    ) external payable {
        require(
            recipients.length == amounts.length,
            "lengh mismatch between recipients and amounts"
        );

        uint256 totalTransferred = 0;

        for (uint256 i = 0; i < recipients.length; ++i) {
            Address.sendValue(recipients[i], amounts[i]);
            totalTransferred += amounts[i];
        }

        if (msg.value > totalTransferred) {
            Address.sendValue(
                payable(msg.sender),
                msg.value - totalTransferred
            );
        }
    }

    // @dev batch transfer ERC20 token to multiple recipients
    // @param token ERC20 token to transfer
    // @param recipients list of recipients
    // @param amounts list of amounts to transfer
    function batchTransferERC20(
        IERC20 token,
        address[] calldata recipients,
        uint256[] calldata amounts
    ) external {
        require(
            recipients.length == amounts.length,
            "length mismatch between recipients and amounts"
        );

        for (uint256 i = 0; i < recipients.length; ++i) {
            token.safeTransferFrom(msg.sender, recipients[i], amounts[i]);
        }
    }
}
