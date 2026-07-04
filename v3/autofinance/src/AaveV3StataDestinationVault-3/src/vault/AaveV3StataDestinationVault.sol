// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IStataTokenV2 } from "src/interfaces/external/aave/IStataTokenV2.sol";
import { ERC4626DestinationVault } from "src/vault/ERC4626DestinationVault.sol";
import { DestinationVault, IDestinationVault } from "src/vault/DestinationVault.sol";

/// @title Destination Vault to proxy interactions with Aave V3 Stata tokens
contract AaveV3StataDestinationVault is ERC4626DestinationVault {
    using SafeERC20 for IERC20;

    string internal constant EXCHANGE_NAME = "aave";

    constructor(
        ISystemRegistry sysRegistry
    ) ERC4626DestinationVault(sysRegistry) { }

    /// @inheritdoc IDestinationVault
    function exchangeName() external pure override returns (string memory) {
        return EXCHANGE_NAME;
    }

    /// @inheritdoc IDestinationVault
    function poolType() external pure override returns (string memory) {
        return "aTokenStataV3";
    }

    /// @inheritdoc IDestinationVault
    function destType() external pure override returns (string memory) {
        return "hold";
    }

    /// @inheritdoc DestinationVault
    function _collectRewards() internal override returns (uint256[] memory amounts, address[] memory tokens) {
        // Get the reward tokens
        tokens = IStataTokenV2(_underlying).rewardTokens();
        uint256 nTokens = tokens.length;
        amounts = new uint256[](nTokens);

        if (nTokens == 0) {
            return (amounts, tokens);
        }

        // And their amounts before claiming
        uint256[] memory amountsBefore = new uint256[](nTokens);
        for (uint256 i = 0; i < nTokens; ++i) {
            amountsBefore[i] = _getRewardBalance(tokens[i]);
        }
        // Claim the rewards
        IStataTokenV2(_underlying).claimRewardsToSelf(tokens);

        // Get the amounts after claiming
        for (uint256 i = 0; i < nTokens; ++i) {
            address token = tokens[i];
            uint256 amount = _getRewardBalance(token) - amountsBefore[i];
            amounts[i] = amount;
            if (amount > 0) {
                // Transfer the rewards to the caller
                IERC20(token).safeTransfer(msg.sender, amount);
            }
        }
    }

    ///@dev Guard function to prevent calling with address(0)
    function _getRewardBalance(
        address token
    ) internal view returns (uint256) {
        return token == address(0) ? 0 : IERC20(token).balanceOf(address(this));
    }
}
