// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { ISweepable } from "./interfaces/ISweepable.sol";
import { Ownable, Ownable2Step } from "@oz/access/Ownable2Step.sol";
import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { SafeERC20 } from "@oz/token/ERC20/utils/SafeERC20.sol";

/// @title Sweepable.
/// @notice Aera Sweepable contract.
/// @dev Allows owner of the contract to restore accidentally send tokens
//       and the chain's native token.
abstract contract Sweepable is ISweepable, Ownable2Step {
    using SafeERC20 for IERC20;

    constructor(address owner_) Ownable(owner_) { }

    /// @inheritdoc ISweepable
    function sweep(address token, uint256 amount) external onlyOwner {
        if (token == address(0)) {
            (bool success,) = msg.sender.call{ value: amount }("");
            require(success, Sweepable_FailedToSendNativeToken());
        } else {
            IERC20(token).safeTransfer(msg.sender, amount);
        }

        emit Sweep(token, amount);
    }
}
