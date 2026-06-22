// SPDX-License-Identifier: MIT

pragma solidity 0.8.21;

import {IValuationModule} from "../interfaces/IValuationModule.sol";
import {IVault} from "../interfaces/IVault.sol";

contract GlobalPriceValuation is IValuationModule {
    address public immutable vault;
    uint256 public portfolioValue;
    constructor(address _vault) {
        vault = _vault;
    }

    modifier onlyTreasury() {
        require(
            msg.sender == IVault(vault).getTreasury(),
            "GlobalPriceValuation: Only Treasury"
        );
        _;
    }

    function setPortfolioValue(uint256 _portfolioValue) external onlyTreasury {
        portfolioValue = _portfolioValue;
    }

    function addAsset(
        address asset,
        address oracle,
        uint256 chainId
    ) external payable {}

    function removeAsset(address asset) external {}

    function updateAsset(address asset) external payable {}

    function forceUpdate(address asset, uint256 amount) external {}

    function fulfillUpdateRequest(
        address asset,
        uint256 balance,
        uint256 price,
        uint8 decimals
    ) external {}

    function updateOracle(address asset, address newOracle) external {}
}
