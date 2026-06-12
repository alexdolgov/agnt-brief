// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {IGMXVault} from "src/interfaces/IGMXVault.sol";
import {JonesGlpLeverageStrategy} from "src/glp/strategies/JonesGlpLeverageStrategy.sol";
import {IGlpManager, IGMXVault} from "../interfaces/IGlpManager.sol";
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IAggregatorV3} from "src/interfaces/IAggregatorV3.sol";

contract TemporaryViewer {
    IAggregatorV3 public constant ORACLE = IAggregatorV3(0x50834F3163758fcC1Df9973b6e91f0F0F0434aD3);
    IGlpManager public constant MANAGER = IGlpManager(0x3963FfC9dff443c2A94f21b129D429891E32ec18);

    IERC20 public constant GLP = IERC20(0x5402B5F40310bDED796c7D0F3FF6683f5C0cFfdf);

    uint256 public constant PRECISION = 1e30;
    uint256 public constant GMX_BASIS = 1e4;
    uint256 public constant USDC_DECIMALS = 1e6;
    uint256 public constant GLP_DECIMALS = 1e18;

    address public constant USDC = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8;
    address public constant STRATEGY = 0x15df56a82c194FeFEC9337C37A41964B69b584d5;

    function getStrategyTvl() external view returns (uint256) {
        uint256 _glpAmount = GLP.balanceOf(STRATEGY);

        IGMXVault vault = IGMXVault(MANAGER.vault());

        uint256 usdgAmount = _glpAmount * MANAGER.getAumInUsdg(false) / GLP.totalSupply();

        uint256 redemptionAmount = usdgAmount * PRECISION / vault.getMaxPrice(USDC);

        redemptionAmount = redemptionAmount * USDC_DECIMALS / GLP_DECIMALS;

        return redemptionAmount;
    }
}
