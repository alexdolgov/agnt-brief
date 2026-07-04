// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "../pricing/PriceRouter.sol";
import "../redemption/PayoutTokenRegistry.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "./IRedemptionReserves.sol";

/**
 * @title RedemptionReserveCalculator
 * @notice Calculates total value of tokens available for redemptions
 * @dev Only counts tokens in vault and custodial wallet (redemption reserves)
 */
contract RedemptionReserveCalculator is IRedemptionReserves {
    // ============ Immutable State ============
    PriceRouter public immutable redemptionReservePriceRouter;
    PayoutTokenRegistry public immutable tokenRegistry;

    // ============ Errors ============
    error InvalidAddress();
    error InvalidDecimals();

    // ============ Constructor ============

    /**
     * @notice Initialize calculator with price router and token registry
     * @param _priceRouter Address of the PriceRouter for reserve pricing
     * @param _tokenRegistry Address of the PayoutTokenRegistry
     */
    constructor(address _priceRouter, address _tokenRegistry) {
        if (_priceRouter == address(0)) revert InvalidAddress();
        if (_tokenRegistry == address(0)) revert InvalidAddress();

        redemptionReservePriceRouter = PriceRouter(_priceRouter);
        tokenRegistry = PayoutTokenRegistry(_tokenRegistry);
    }

    // ============ View Functions ============

    /**
     * @notice Calculate total value of redemption reserves
     * @param vault Primary storage for redemption reserves
     * @param custodialWallet Secondary storage (e.g., Fireblocks)
     * @return totalReserveValue Total USD value in WAD format (18 decimals)
     */
    function calculateTotalReserveValue(address vault, address custodialWallet)
        external
        view
        returns (uint256 totalReserveValue)
    {
        // Get all value tokens from registry
        address[] memory valueTokens = tokenRegistry.getValueTokens();

        for (uint256 i; i < valueTokens.length; i++) {
            address token = valueTokens[i];

            // Get combined balance from both locations
            uint256 balance =
                IERC20(token).balanceOf(vault) + IERC20(token).balanceOf(custodialWallet);

            if (balance > 0) {
                // Get price in WAD format from router
                // Skip if price feed not configured (will revert in getPrice)
                try redemptionReservePriceRouter.getPrice(token) returns (uint256 priceWad) {
                    uint8 decimals = IERC20Metadata(token).decimals();
                    if (decimals > 24) revert InvalidDecimals();

                    // Calculate value: balance * price / 10^decimals
                    // Price is in WAD (18 decimals), so result is in WAD
                    totalReserveValue += Math.mulDiv(balance, priceWad, 10 ** decimals);
                } catch {
                    // Skip tokens without configured price feeds
                    continue;
                }
            }
        }
        return totalReserveValue;
    }
}
