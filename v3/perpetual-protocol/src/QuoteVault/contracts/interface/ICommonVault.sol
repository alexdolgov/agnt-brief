// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

import { ICommonVaultEvent } from "./ICommonVaultEvent.sol";
import { ICommonVaultStruct } from "./ICommonVaultStruct.sol";

interface ICommonVault is ICommonVaultStruct, ICommonVaultEvent {
    /**
     * @notice Deposits an amount of assets into the vault and mints the according amount of shares
     * @param amount The amount of assets to deposit
     * @return shares The amount of shares minted in VaultToken's decimals
     */
    function deposit(uint256 amount) external returns (uint256 shares);

    /**
     * @param to the receiver of shares
     */
    function depositFor(address to, uint256 amount) external returns (uint256 shares);

    /**
     * @notice Redeems an amount of shares from the vault and returns the according amount of assets
     * @dev if redeemed shares are too small compared to VaultToken's totalSupply, there's a chance
     *       that the proportion of the user is also too small s.t. 0 asset is returned to the user
     * @param shares The amount of shares to redeem in VaultToken's decimals
     * @return The amount of assets redeemed
     */
    function redeem(uint256 shares, uint256 minRedeemedAmount) external returns (uint256);

    /**
     * @notice Swaps an exact amount of input asset for as much output asset as possible
     * @param params The parameters for the swap
     * @return The amount of output asset received
     */
    function swapExactInput(SwapExactInputParams calldata params) external returns (uint256);

    /**
     * @notice Swaps an exact amount of output asset for as little input asset as possible
     * @param params The parameters for the swap
     * @return The amount of input asset spent
     */
    function swapExactOutput(SwapExactOutputParams calldata params) external returns (uint256);

    /**
     * @notice Reduces the size of the position held in the vault
     * @param reducedPositionSizeAbs The absolute amount of position size to be reduced
     * @return pnl The realized profit and loss denominated in the vault's _getAsset() token
     */
    function deleverage(uint256 reducedPositionSizeAbs) external returns (int256 pnl);

    /**
     * @notice Returns the total assets held in the vault
     * @dev denominated in the vault's _getAsset() token
     */
    function totalAssets() external view returns (uint256);

    /**
     * @notice Returns the address of router
     */
    function getRouter() external view returns (address);

    /**
     * @notice Returns the address of QUOTE/USD priceFeed (QUOTE: USDC)
     */
    function getQuoteUsdPriceFeed() external view returns (address);

    /**
     * @notice Returns the address of BASE/USD priceFeed (BASE: ETH, OP, etc.)
     */
    function getBaseUsdPriceFeed() external view returns (address);

    /**
     * @notice Returns the index price in QuoteToken
     */
    function getIndexPrice() external view returns (uint256);
}
