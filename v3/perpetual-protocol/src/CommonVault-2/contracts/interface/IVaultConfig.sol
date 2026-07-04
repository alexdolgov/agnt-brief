// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;

interface IVaultConfig {
    /**
     * @notice Returns true if the provided address is a whitelisted liquidity provider
     */
    function isWhitelistedLiquidityProvider(address account) external view returns (bool);

    /**
     * @notice Returns true if the provided address is a whitelisted arbitrageur
     */
    function isWhitelistedArbitrageur(address account) external view returns (bool);

    /**
     * @notice Returns the address of whitelistedLiquidityProviderAdder
     */
    function getWhitelistedLiquidityProviderAdder() external view returns (address);

    /**
     * @notice Returns the margin ratio when Vault should be deleveraged
     */
    function getDeleverageMarginRatio() external view returns (uint24);

    /**
     * @notice Returns the margin ratio when Vault should be deleveraged
     */
    function getDeleverageMarginRatio(address vault) external view returns (uint24);

    /**
     * @notice Returns the margin ratio when swap is restricted/stopped
     */
    function getSwapRestrictionMarginRatio() external view returns (uint24);

    /**
     * @notice Returns the margin ratio when swap is restricted/stopped
     */
    function getSwapRestrictionMarginRatio(address vault) external view returns (uint24);

    /**
     * @notice Returns the exchange fee of a vault
     */
    function getExchangeFeeRatio(address vault) external view returns (uint24 feeRatio);

    /**
     * @notice Returns the discount ratio of a trader
     */
    function getFeeDiscountRatio(address trader) external view returns (uint24 discountRatio);

    /**
     * @notice Returns the exchange fee ratio when given a vault and a trader
     */
    function getExchangeFeeRatioByTrader(address trader, address vault) external view returns (uint24);
}
