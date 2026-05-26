// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { RizLendingPool } from "./riz-lending/RizLendingPool.sol";
import { RizLendingPoolAddressesProvider } from "./riz-lending/RizLendingPoolAddressesProvider.sol";
import { OracleRouter } from "./OracleRouter.sol";
import { Errors } from "./libraries/Errors.sol";
import { DataTypes } from "@radiant-v2-core/lending/libraries/types/DataTypes.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract BadDebtManager is OwnableUpgradeable {
    ///////////////////// ô¿ô Constants ô¿ô /////////////////////
    uint256 public constant BIPS_HIGH_PRECISION_DIVISOR = 1_000_000_000;
    uint256 public constant DENOMINATOR = 1e18;
    ///////////////////// ô¿ô Storage ô¿ô /////////////////////
    /// @dev Token prices mapping for snapshotting
    mapping(address => uint256) public tokenPrices;
    /// @dev Asset ratios mapping for snapshotting.
    /// @dev For example, if pool has 50% RIZ and 50% USDC, then assetRatios[RIZ] = 50% and assetRatios[USDC] = 50%
    mapping(address => uint256) public assetRatios;
    /// @dev Mapping to store all user's emergency withdrawals. Each user can only withdraw once
    mapping(address => bool) public emergencyWithdrawals;
    /// @dev The lower the ratio, the more slashing will be done to each user withdrawing
    uint256 public slashingRatio;
    address public rizLendingPool;

    modifier onlyLendingPool() {
        if (msg.sender != rizLendingPool) {
            revert Errors.InvalidLendingPool();
        }
        _;
    }

    ///////////////////// ô¿ô Events ô¿ô /////////////////////
    event ParamsSetManually(address[] assets, uint256[] prices, uint256[] ratios, uint256 slashingRatio);
    event Snapshot(uint256 badDebt, uint256 slashingRatio);
    event UserEmergencyWithdrawal(address indexed user);

    /// @dev Constructor with disabled initializers
    constructor() {
        _disableInitializers();
    }

    function initialize(address _rizLendingPool, address _owner) public initializer {
        // Make sure that the lending pool address is not 0 and _owner is not 0
        if (_rizLendingPool == address(0) || _owner == address(0)) {
            revert Errors.AddressZero();
        }
        rizLendingPool = _rizLendingPool;
        _transferOwnership(_owner);
    }

    ////////////////// ô¿ô External and Public Functions ô¿ô //////////////////

    /// @notice Function to set the total deposits and borrows
    /// @param _badDebt Amount of bad debt
    function snapshot(uint256 _badDebt) external onlyLendingPool {
        if (_badDebt == 0) {
            revert Errors.BadDebtIsZero();
        }
        _snapshot(_badDebt);
    }

    /// @notice Function to set user withdrawal status
    /// @param _user User address
    function setEmergencyWithdrawal(address _user) external onlyLendingPool {
        emergencyWithdrawals[_user] = true;
        emit UserEmergencyWithdrawal(_user);
    }

    /// @notice Emergency admin can set prices, ratios and slashing ratio manually in case something goes wrong
    function setParamsForEmergencyWithdrawals(
        address[] calldata _assets,
        uint256[] calldata _prices,
        uint256[] calldata _ratios,
        uint256 _slashingRatio
    ) external onlyOwner {
        // Check that there are no 0 addresses in the assets array
        for (uint256 i = 0; i < _assets.length; i++) {
            if (_assets[i] == address(0)) {
                revert Errors.AddressZero();
            }
        }
        if (_assets.length == 0 || _prices.length == 0 || _ratios.length == 0) {
            revert Errors.InvalidAssetsLength();
        }
        if (_assets.length != _prices.length || _assets.length != _ratios.length) {
            revert Errors.InvalidAssetsLength();
        }
        for (uint256 i = 0; i < _assets.length; i++) {
            tokenPrices[_assets[i]] = _prices[i];
            assetRatios[_assets[i]] = _ratios[i];
        }
        slashingRatio = _slashingRatio;
        emit ParamsSetManually(_assets, _prices, _ratios, _slashingRatio);
    }

    /// @notice Function to check if user has already withdrawn
    /// @param _user User address
    function hasUserWithdrawn(address _user) external view returns (bool) {
        return emergencyWithdrawals[_user];
    }

    /// @notice Getter to get snapshotted price of the asset
    /// @param _asset Asset address
    function getAssetPrice(address _asset) external view returns (uint256) {
        return tokenPrices[_asset];
    }

    /// @notice Getter to get snapshotted asset ratio
    /// @param _asset Asset address
    function getAssetRatio(address _asset) external view returns (uint256) {
        return assetRatios[_asset];
    }

    ////////////////// ô¿ô Internal Functions ô¿ô //////////////////
    /// @notice Function to snapshot the prices of the particular lending pool reserve assets
    /// @notice it is also calculating the asset ratios in the bricked lending pool
    function _snapshot(uint256 _badDebt) internal {
        RizLendingPool pool = RizLendingPool(rizLendingPool);
        address[] memory reserves = pool.getReservesList();
        address addressesProvider = address(pool.getAddressesProvider());
        OracleRouter oracleRouter =
            OracleRouter(payable(RizLendingPoolAddressesProvider(addressesProvider).getPriceOracle()));
        // Iterate through each reserve, get current oracle price and snapshot it
        uint256[] memory assetsLiquidity = new uint256[](reserves.length);
        for (uint256 i = 0; i < reserves.length; i++) {
            address reserve = reserves[i];
            // Price is in 1e18 precision
            uint256 price = OracleRouter(oracleRouter).getAssetPrice(reserve);
            tokenPrices[reserve] = price;
            DataTypes.ReserveData memory currentConfig = pool.getReserveData(reserve);
            // Now we need to calculate total asset liquidity sitting in atoken and variable debt token
            uint256 assetLiquidity = IERC20(reserve).balanceOf(currentConfig.aTokenAddress);
            assetsLiquidity[i] = assetLiquidity;
        }
        // Now that we have all the prices, we know all the tokens liquidities sitting in the pool, we can calculate
        // Their relative ratios to one another in USD
        uint256 totalLiquidityUSD = 0;
        for (uint256 i = 0; i < assetsLiquidity.length; i++) {
            totalLiquidityUSD += (assetsLiquidity[i] * tokenPrices[reserves[i]]) / DENOMINATOR;
        }
        for (uint256 i = 0; i < assetsLiquidity.length; i++) {
            // Now that we calculated the prices, we can calculate the asset ratios based on their USD values
            assetRatios[reserves[i]] = (assetsLiquidity[i] * tokenPrices[reserves[i]] * BIPS_HIGH_PRECISION_DIVISOR)
                / totalLiquidityUSD / DENOMINATOR;
        }

        // We need to calculate slashing ratio.
        // Formula is: (totalRemainingLiquidityUSD / totalRemainingLiquidityUSD + badDebt). Precision needs to be high
        slashingRatio = (totalLiquidityUSD * BIPS_HIGH_PRECISION_DIVISOR) / (totalLiquidityUSD + _badDebt);
        emit Snapshot(_badDebt, slashingRatio);
    }
}
