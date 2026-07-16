// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { ISweepable } from "src/core/interfaces/ISweepable.sol";

import { Ownable, Ownable2Step } from "@oz/access/Ownable2Step.sol";
import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { SafeERC20 } from "@oz/token/ERC20/utils/SafeERC20.sol";

/// @title Sweepable
/// @notice This contract allows the owner of the contract to restore accidentally sent tokens
/// and the chain's native token
abstract contract Sweepable is ISweepable, Ownable2Step {
    using SafeERC20 for IERC20;

    constructor(address owner_) Ownable(owner_) { }

    ////////////////////////////////////////////////////////////
    //              Public / External Functions               //
    ////////////////////////////////////////////////////////////

    /// @inheritdoc ISweepable
    function sweep(address token, uint256 amount) external onlyOwner {
        if (token == address(0)) {
            // Interactions: send the native token to the owner
            (bool success,) = msg.sender.call{ value: amount }("");
            // Requirements: check that the execution was successful
            require(success, Aera__FailedToSendNativeToken());
        } else {
            // Interactions: transfer the token to the owner
            IERC20(token).safeTransfer(msg.sender, amount);
        }

        // Log the sweep event
        emit Sweep(token, amount);
    }
}
