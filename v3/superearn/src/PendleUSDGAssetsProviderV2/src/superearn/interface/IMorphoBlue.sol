// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.29 <0.9.0;

/// @notice Morpho Blue market parameters — must match the layout in morpho-blue/src/interfaces/IMorpho.sol
struct MorphoMarketParams {
    address loanToken;
    address collateralToken;
    address oracle;
    address irm;
    uint256 lltv;
}

/// @title IMorphoBlue
/// @notice Minimal interface for Morpho Blue singleton (direct isolated-market lending)
/// @dev Full interface: lib/metamorpho/lib/morpho-blue/src/interfaces/IMorpho.sol
/// @custom:reference https://docs.morpho.org/
interface IMorphoBlue {
    /// @notice Returns the state of `user`'s position on market `id`.
    function position(bytes32 id, address user)
        external
        view
        returns (uint256 supplyShares, uint128 borrowShares, uint128 collateral);

    /// @notice Returns the state of market `id`.
    function market(bytes32 id)
        external
        view
        returns (
            uint128 totalSupplyAssets,
            uint128 totalSupplyShares,
            uint128 totalBorrowAssets,
            uint128 totalBorrowShares,
            uint128 lastUpdate,
            uint128 fee
        );

    /// @notice Returns the market params for a given market `id`.
    function idToMarketParams(bytes32 id)
        external
        view
        returns (address loanToken, address collateralToken, address oracle, address irm, uint256 lltv);

    /// @notice Supplies `assets` or `shares` on behalf of `onBehalf`.
    /// @dev Exactly one of `assets` or `shares` must be zero.
    function supply(
        MorphoMarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        bytes memory data
    ) external returns (uint256 assetsSupplied, uint256 sharesSupplied);

    /// @notice Withdraws `assets` or `shares` on behalf of `onBehalf` to `receiver`.
    /// @dev Exactly one of `assets` or `shares` must be zero.
    function withdraw(
        MorphoMarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        address receiver
    ) external returns (uint256 assetsWithdrawn, uint256 sharesWithdrawn);

    /// @notice Supplies `assets` of collateral on behalf of `onBehalf`.
    function supplyCollateral(MorphoMarketParams memory marketParams, uint256 assets, address onBehalf, bytes memory data)
        external;

    /// @notice Withdraws `assets` of collateral on behalf of `onBehalf` to `receiver`.
    function withdrawCollateral(
        MorphoMarketParams memory marketParams,
        uint256 assets,
        address onBehalf,
        address receiver
    ) external;

    /// @notice Borrows `assets` or `shares` on behalf of `onBehalf` to `receiver`.
    /// @dev Exactly one of `assets` or `shares` must be zero.
    function borrow(
        MorphoMarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        address receiver
    ) external returns (uint256 assetsBorrowed, uint256 sharesBorrowed);

    /// @notice Repays `assets` or `shares` on behalf of `onBehalf`.
    /// @dev Exactly one of `assets` or `shares` must be zero.
    function repay(
        MorphoMarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        bytes memory data
    ) external returns (uint256 assetsRepaid, uint256 sharesRepaid);

    /// @notice Accrues interest for the given market.
    function accrueInterest(MorphoMarketParams memory marketParams) external;
}
