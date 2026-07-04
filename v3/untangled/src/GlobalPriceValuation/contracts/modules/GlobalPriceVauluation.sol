// SPDX-License-Identifier: MIT

pragma solidity 0.8.21;

import {IValuationModule} from "../interfaces/IValuationModule.sol";
import {IVault} from "../interfaces/IVault.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract GlobalPriceValuation is IValuationModule {
    address public immutable vault;
    uint256 public portfolioValue;
    uint256 totalSupply;
    constructor(address _vault) {
        vault = _vault;
        totalSupply = IERC4626(_vault).totalSupply();
    }

    modifier onlyTreasury() {
        require(
            msg.sender == IVault(vault).getTreasury(),
            "GlobalPriceValuation: Only Treasury"
        );
        _;
    }

    modifier onlyVault() {
        require(msg.sender == vault, "GlobalPriceValuation: Only Vault");
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

    function updateAsset(address asset) external payable onlyVault {
        uint256 decimals = ERC20(asset).decimals();
        uint256 newTotalSupply = IERC4626(vault).totalSupply();
        if (newTotalSupply >= totalSupply) {
            if (totalSupply == 0) {
                portfolioValue += newTotalSupply - totalSupply;
            } else {
                portfolioValue +=
                    (((portfolioValue * 10 ** decimals) / totalSupply) *
                        (newTotalSupply - totalSupply)) /
                    10 ** decimals;
            }
        } else {
            portfolioValue =
                portfolioValue -
                (((portfolioValue * 10 ** decimals) / totalSupply) *
                    (totalSupply - newTotalSupply)) /
                10 ** decimals;
        }
        totalSupply = newTotalSupply;
    }

    function forceUpdate(address asset, uint256 amount) external {}

    function fulfillUpdateRequest(
        address asset,
        uint256 balance,
        uint256 price,
        uint8 decimals
    ) external {}

    function updateOracle(address asset, address newOracle) external {}
}
