// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { UD60x18, ud } from "@prb/math/src/UD60x18.sol";
import { IStrategySlippageModel } from "contracts/interfaces/IStrategySlippageModel.sol";
import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

library Vault {
    struct BaseInitProps {
        address protocolGovernor;
        string vaultName;
        string vaultSymbol;
        address baseAsset;
    }

    struct Parameters {
        /// @notice The maximum amount of baseAsset that can be deposited into the vault per user.
        uint256 maxDepositPerAccount;
        /// @notice The total cap to apply to deposits in baseAsset.
        uint256 totalDepositCap;
        UD60x18 depositFee;
        UD60x18 withdrawalFee;
        IStrategySlippageModel liquidationSlippageModel;
    }
}
