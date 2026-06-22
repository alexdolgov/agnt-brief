// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {IEsXai} from "./interfaces/xai/IEsXai.sol";
import {AbstractBalanceOracle} from "periphery/AbstractBalanceOracle.sol";
import {IVault} from "src/v2/interfaces/IVault.sol";

import {IBucketTracker} from "periphery/interfaces/xai/IBucketTracker.sol";
import {IPoolFactory} from "periphery/interfaces/xai/IPoolFactory.sol";
import {IStakingPool} from "periphery/interfaces/xai/IStakingPool.sol";

contract EsXaiPositionOracle is AbstractBalanceOracle {
    /// @notice The name of the token.
    string private constant _NAME = "EsXai Position Oracle";

    /// @notice The symbol of the token.
    string private constant _SYMBOL = "EXPO";

    /// @notice The number of decimals of the token (same as for EsXai).
    uint8 private constant _DECIMALS = 18;

    /// IMMUTABLES ///

    /// @dev The Staking Pool Factory.
    IPoolFactory private immutable _poolFactory;

    /// ERRORS ///

    /// @notice Thrown when the EsXai staking pool factory address is zero.
    error AeraPeriphery__EsXaiPoolFactoryIsZeroAddress();
    /// @notice Thrown when the EsXai staking pool factory doesn't have the
    ///         expected function `esXaiAddress()`
    error AeraPeriphery__InvalidEsXaiPoolFactory();

    /// FUNCTIONS ///

    /// @notice Constructor for the EsXaiPositionOracle contract.
    /// @param vaultAddress The address of the AeraVaultV2 contract.
    /// @param poolFactoryAddress The address of the EsXai staking pool factory.
    constructor(address vaultAddress, address poolFactoryAddress) AbstractBalanceOracle(vaultAddress) {
        // Requirements: check the pool factory address is not zero.
        if (poolFactoryAddress == address(0)) {
            revert AeraPeriphery__EsXaiPoolFactoryIsZeroAddress();
        }
        _poolFactory = IPoolFactory(poolFactoryAddress);

        // Requirements: check that the pool factory has a `esXaiAddress()`
        //               method that returns an address.
        address esXai = _poolFactory.esXaiAddress();
        if (esXai == address(0)) {
            revert AeraPeriphery__InvalidEsXaiPoolFactory();
        }
    }

    /// @inheritdoc AbstractBalanceOracle
    function decimals() external pure override returns (uint8) {
        return _DECIMALS;
    }

    /// @inheritdoc AbstractBalanceOracle
    function name() external pure override returns (string memory) {
        return _NAME;
    }

    /// @inheritdoc AbstractBalanceOracle
    function symbol() external pure override returns (string memory) {
        return _SYMBOL;
    }

    /// @dev Get the amount of EsXai that can be claimed either as a
    ///      reward or by unstaking.
    function _getBalance() internal view override returns (uint256 balance) {
        address[] memory pools = _poolFactory.getPoolIndicesOfUser(_vault);
        uint256 length = pools.length;
        address pool;
        IBucketTracker bucketTracker;
        for (uint256 i = 0; i < length;) {
            pool = pools[i];
            bucketTracker = IStakingPool(pool).esXaiStakeBucket();
            unchecked {
                // Can never overflow because we are counting EsXai tokens that can be withdrawn back to the vault
                // an overflow here would mean that the total supply of EsXai is more than max uint256
                balance += IStakingPool(pool).getStakedAmounts(_vault);
                balance += bucketTracker.withdrawableDividendOf(_vault);
                ++i;
            } // gas savings
        }
    }
}
