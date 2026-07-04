// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @notice Morpho Blue market parameters identifying a unique market.
struct MarketParams {
    address loanToken;
    address collateralToken;
    address oracle;
    address irm;
    uint256 lltv;
}

/// @title IMorphoBlue
/// @notice Minimal interface for the Morpho Blue singleton.
interface IMorphoBlue {
    /// @notice Supply loan tokens to a Morpho Blue market.
    /// @param marketParams The market to supply to
    /// @param assets Amount of loan token to supply (pass 0 to use shares)
    /// @param shares Amount of supply shares to mint (pass 0 to use assets)
    /// @param onBehalf Address that will own the supply position
    /// @param data Callback data (empty bytes for no callback)
    /// @return assetsSupplied Actual assets supplied
    /// @return sharesSupplied Supply shares minted
    function supply(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        bytes memory data
    ) external returns (uint256 assetsSupplied, uint256 sharesSupplied);

    /// @notice Withdraw loan tokens from a Morpho Blue market.
    /// @param marketParams The market to withdraw from
    /// @param assets Amount of loan token to withdraw (pass 0 to use shares)
    /// @param shares Amount of supply shares to burn (pass 0 to use assets)
    /// @param onBehalf Address that owns the supply position
    /// @param receiver Address to receive the withdrawn tokens
    /// @return assetsWithdrawn Actual assets withdrawn
    /// @return sharesWithdrawn Supply shares burned
    function withdraw(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        address receiver
    ) external returns (uint256 assetsWithdrawn, uint256 sharesWithdrawn);

    /// @notice Supply collateral to a market.
    function supplyCollateral(MarketParams memory marketParams, uint256 assets, address onBehalf, bytes memory data)
        external;

    /// @notice Borrow loan tokens from a market.
    function borrow(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        address receiver
    ) external returns (uint256 assetsBorrowed, uint256 sharesBorrowed);

    /// @notice Accrue interest for a market.
    function accrueInterest(MarketParams memory marketParams) external;

    /// @notice Take a flash loan of any token held by the Morpho singleton.
    /// @param token The token to flash borrow
    /// @param assets The amount to flash borrow
    /// @param data Callback data passed to onMorphoFlashLoan
    function flashLoan(address token, uint256 assets, bytes calldata data) external;

    /// @notice Resolve market params from a market ID.
    function idToMarketParams(
        bytes32 id
    ) external view returns (address loanToken, address collateralToken, address oracle, address irm, uint256 lltv);

    /// @notice Get aggregate market state.
    /// @return totalSupplyAssets Total supply assets
    /// @return totalSupplyShares Total supply shares
    /// @return totalBorrowAssets Total borrow assets
    /// @return totalBorrowShares Total borrow shares
    /// @return lastUpdate Last update timestamp
    /// @return fee Fee rate
    function market(bytes32 id) external view returns (uint128, uint128, uint128, uint128, uint128, uint128);

    /// @notice Get a user's position in a market.
    /// @return supplyShares Supply shares
    /// @return borrowShares Borrow shares
    /// @return collateral Collateral amount
    function position(bytes32 id, address user) external view returns (uint256, uint128, uint128);
}
