// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

type Id is bytes32;

struct MarketParams {
    address loanToken;
    address collateralToken;
    address oracle;
    address irm;
    uint256 lltv;
}

struct Position {
    uint256 supplyShares;
    uint128 borrowShares;
    uint128 collateral;
}

interface IMorpho {
    function idToMarketParams(Id id) external view returns (MarketParams memory);
    function position(Id id, address user) external view returns (Position memory);
    function withdraw(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        address receiver
    )
        external
        returns (uint256 assetsWithdrawn, uint256 sharesWithdrawn);
}
