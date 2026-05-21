// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {ISeamTransferStrategy} from "../interfaces/ISeamTransferStrategy.sol";
import {IEscrowSeam} from "../interfaces/IEscrowSeam.sol";
import {ITransferStrategyBase} from "../interfaces/ITransferStrategyBase.sol";
import {TransferStrategyBase} from "./TransferStrategyBase.sol";

/// @title Seam transfer strategy
/// @notice Transfer strategy for the Seam token
/// @dev This contract should be used in order to claim SEAM tokens for users.
///      This is made based on transfer strategies from Aave V3 periphery repository https://github.com/aave/aave-v3-periphery/tree/master
contract SeamTransferStrategy is ISeamTransferStrategy, TransferStrategyBase {
    IERC20 public immutable seam;

    /// @notice Initializes the contract
    /// @param _seam SEAM token
    /// @param _incentivesController IncentivesController contract address
    /// @param _rewardsAdmin RewardsAdmin contract address
    constructor(IERC20 _seam, address _incentivesController, address _rewardsAdmin)
        TransferStrategyBase(_incentivesController, _rewardsAdmin)
    {
        seam = _seam;
    }

    /// @inheritdoc ITransferStrategyBase
    function performTransfer(address to, address, uint256 amount)
        external
        override(ITransferStrategyBase, TransferStrategyBase)
        onlyIncentivesController
        returns (bool)
    {
        SafeERC20.safeTransfer(seam, to, amount);

        emit PerformTransfer(to, amount);
        return true;
    }
}
