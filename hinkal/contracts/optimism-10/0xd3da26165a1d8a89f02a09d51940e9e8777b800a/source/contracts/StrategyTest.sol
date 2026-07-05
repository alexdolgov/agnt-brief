// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./libraries/GammaStakeLibrary.sol";
import "./libraries/AaveV3BorrowLibrary.sol";
import "./libraries/UniswapV3SwapLibrary.sol";

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import "hardhat/console.sol";

contract StrategyTest is  StakeModule, BorrowModule, SwapModule, Initializable, AccessControlUpgradeable, UUPSUpgradeable {



    function test() public {

        _pricePool();
    _getBorrowLiquidity();
    _getSwapLiquidity();

    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize() initializer public {
        __Strategy_init();
    }

    function _authorizeUpgrade(address newImplementation)
    internal
    onlyRole(DEFAULT_ADMIN_ROLE)
    override
    {}


    function __Strategy_init() internal initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }


    function toUint256(int256 value) public pure returns (uint256) {
        require(value >= 0, "SafeCast: value must be positive");
        return uint256(value);
    }

    function toInt256(uint256 value) public pure returns (int256) {
        require(value <= uint256(type(int256).max), "SafeCast: value doesn't fit in an int256");
        return int256(value);
    }

    function baseToUsd(uint256 amount) public override view returns (uint256) {
        return amount * uint256(baseOracle.latestAnswer()) / baseDecimals / 100;
    }

    function usdToBase(uint256 amount) public override view returns (uint256) {
        return amount * 100 * baseDecimals / uint256(baseOracle.latestAnswer());
    }

    function sideToUsd(uint256 amount) public override view returns (uint256) {
        return amount * uint256(sideOracle.latestAnswer()) / sideDecimals / 100;
    }

    function usdToSide(uint256 amount) public override view returns (uint256) {
        return amount * 100 * sideDecimals / uint256(sideOracle.latestAnswer());
    }

}
