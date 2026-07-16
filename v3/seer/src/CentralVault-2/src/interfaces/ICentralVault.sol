// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IConditionalTokens} from "./IConditionalTokens.sol";
import {IERC20} from "./IERC20.sol";
import {IMarket} from "./IMarket.sol";
import {IRouter} from "./IRouter.sol";

/// @notice Parimutuel scalar / categorical vault with socialized surplus redistribution.
interface ICentralVault {
    /// @notice Basis-point scale for position weights (must sum to this value).
    function WEIGHT_SCALE() external view returns (uint256);

    function router() external view returns (IRouter);

    function conditionalTokens() external view returns (IConditionalTokens);

    event PositionEntered(
        address indexed market, address indexed collateral, address indexed user, uint256 amount, uint256[] weights
    );

    event Redeemed(
        address indexed market, address indexed collateral, address indexed user, uint256[] amounts, uint256 payout
    );

    /// @notice Splits collateral via the Router, keeps surplus outcome tokens in the vault, sends the rest to the user.
    /// @param collateralToken ERC20 collateral used by this market (same token the Router expects).
    /// @param weights Length must equal `market.numOutcomes()`; entries must sum to `WEIGHT_SCALE`.
    function enterPosition(IERC20 collateralToken, IMarket market, uint256 amount, uint256[] calldata weights) external;

    /// @notice Redeems outcome tokens with socialized vault bonus; pays collateral to the caller.
    /// @param collateralToken ERC20 collateral to receive on redemption.
    /// @param amounts One entry per outcome slot (`getOutcomeSlotCount`); zero if not redeeming that slot.
    function redeem(IERC20 collateralToken, IMarket market, uint256[] calldata amounts) external;

    /// @notice Vault bonus tokens per outcome index for a hypothetical redeem.
    function previewBonus(IMarket market, uint256[] calldata amounts) external view returns (uint256[] memory);

    function vaultBalance(IMarket market, uint256 outcomeIndex) external view returns (uint256);

    function circulatingSupply(IMarket market, uint256 outcomeIndex) external view returns (uint256);
}
