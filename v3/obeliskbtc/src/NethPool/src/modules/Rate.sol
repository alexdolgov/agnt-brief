// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

import "openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {Errors} from "src/libraries/Errors.sol";
import "src/interfaces/IRate.sol";

/**
 * @title This is yield management contract
 * @author NodeDAO
 * @notice This is a revenue management contract with compound interest.
 * It steadily increases totalUnderlyingAsset according to the set apr.
 * @notice  The totalUnderlyingAsset will grow with the block, and every time the block is increased,
 * the totalUnderlyingAsset will be recalculated.
 * But the final state update occurs when assets join and exit or when the administrator updates the APR.
 */
abstract contract Rate is Initializable, IRate {
    address public rateManager;
    uint256 public totalUnderlyingAsset;
    uint256 public currentApr;
    uint256 public rewardsUpdateBlock;
    uint256 public constant UPDATE_BLOCK_LIMIT = 7200;
    uint256 public constant BLOCK_NUMBER_PER_YEAR = 7200 * 360;
    uint256 public constant MAX_APR = 2000; // max apr is 20%
    uint256 public constant APR_PERCENT = 10000;

    modifier onlyRateManager() {
        if (msg.sender != rateManager) revert Errors.PermissionDenied();
        _;
    }

    function __Rate_init(uint256 _apr, address _rateManager, uint256 _totalUnderlyingAsset) internal onlyInitializing {
        if (_apr > MAX_APR) {
            revert Errors.InvalidApr();
        }

        currentApr = _apr;
        rateManager = _rateManager;
        rewardsUpdateBlock = block.number;
        if (_totalUnderlyingAsset != 0) {
            totalUnderlyingAsset = _totalUnderlyingAsset;
        }
    }

    /**
     * @notice totalAsset = totalUnderlyingAsset + settleAsset
     * @notice When totalUnderlyingAsset is less than 32eth,
     * no revenue can be generated because it cannot be registered as a validator.
     */
    function totalAssets() public view returns (uint256) {
        (uint256 _totalUnderlyingAsset, uint256 _estimatedRewards,) = _unsettleAssets();
        if (_estimatedRewards != 0) {
            return _totalUnderlyingAsset + _estimatedRewards;
        }

        return _totalUnderlyingAsset;
    }

    /**
     * @notice ETH to lsdETH exchange rate
     * @param _assets ETH amount
     * @param _totalShares lsdETH totalSupply
     */
    function _convertToShares(uint256 _assets, uint256 _totalShares) internal view returns (uint256) {
        uint256 _totalAssets = totalAssets();
        if (_totalShares == 0 || _totalAssets == 0) {
            return _assets;
        }

        return _assets * _totalShares / _totalAssets;
    }

    /**
     * @notice lsdETH to ETH exchange rate
     * @param _shares lsdETH amount
     * @param _totalShares lsdETH totalSupply
     */
    function _convertToAssets(uint256 _shares, uint256 _totalShares) internal view returns (uint256 _assets) {
        uint256 _totalAssets = totalAssets();
        if (_totalShares == 0) {
            return _shares;
        }

        return _shares * _totalAssets / _totalShares;
    }

    /**
     * @notice lsdETH to ETH exchange rate
     * @param _totalShares lsdETH totalSupply
     */
    function _exchangeRate(uint256 _totalShares) internal view returns (uint256) {
        return _convertToAssets(1 ether, _totalShares);
    }

    /**
     * @notice Calculate the unsettle assets from the last settlement block to the current block based on apr
     */
    function _unsettleAssets()
        internal
        view
        returns (uint256 _totalUnderlyingAsset, uint256 _unsettleRewards, uint256 _blockNumber)
    {
        _totalUnderlyingAsset = totalUnderlyingAsset;
        _blockNumber = block.number;
        uint256 _rewardsUpdateBlock = rewardsUpdateBlock;

        if (_rewardsUpdateBlock == _blockNumber || _totalUnderlyingAsset < 32 ether) {
            return (_totalUnderlyingAsset, 0, _blockNumber);
        }

        // _unsettleRewards = totalUnderlyingAsset * apr / APR_PERCENT * blockNumber / BLOCK_NUMBER_PER_YEAR
        return (
            _totalUnderlyingAsset,
            totalUnderlyingAsset * currentApr * (_blockNumber - _rewardsUpdateBlock) / APR_PERCENT
                / BLOCK_NUMBER_PER_YEAR,
            _blockNumber
        );
    }

    /**
     * @notice increase assets only occurs when the user stake
     * @param _amount stake amount
     */
    function _increaseAssets(uint256 _amount) internal {
        (uint256 _totalUnderlyingAsset, uint256 _estimatedRewards, uint256 _blockNumber) = _unsettleAssets();

        rewardsUpdateBlock = _blockNumber;
        if (_estimatedRewards != 0) {
            totalUnderlyingAsset = _totalUnderlyingAsset + _estimatedRewards + _amount;
        } else {
            totalUnderlyingAsset = _totalUnderlyingAsset + _amount;
        }

        emit AssetsUpdated(_totalUnderlyingAsset, _estimatedRewards, _blockNumber);
    }

    /**
     * @notice reduce assets only occurs when the user unstake
     * @param _amount unstake amount
     */
    function _reduceAssets(uint256 _amount) internal {
        (uint256 _totalUnderlyingAsset, uint256 _estimatedRewards, uint256 _blockNumber) = _unsettleAssets();

        rewardsUpdateBlock = _blockNumber;
        if (_estimatedRewards != 0) {
            totalUnderlyingAsset = _totalUnderlyingAsset + _estimatedRewards - _amount;
        } else {
            totalUnderlyingAsset = _totalUnderlyingAsset - _amount;
        }

        emit AssetsUpdated(_totalUnderlyingAsset, _estimatedRewards, _blockNumber);
    }

    /**
     * @notice The rate administrator updates apr. Update totalUnderlyingAsset before apr update.
     * @param _apr new apr
     */
    function updateApr(uint256 _apr) public onlyRateManager {
        if (_apr > MAX_APR) {
            revert Errors.InvalidApr();
        }

        if (block.number < rewardsUpdateBlock + UPDATE_BLOCK_LIMIT) {
            revert Errors.UpdateTimelocked();
        }

        (uint256 _totalUnderlyingAsset, uint256 _estimatedRewards, uint256 _blockNumber) = _unsettleAssets();
        rewardsUpdateBlock = _blockNumber;
        if (_estimatedRewards != 0) {
            totalUnderlyingAsset = _totalUnderlyingAsset + _estimatedRewards;
        }

        emit AssetsUpdated(_totalUnderlyingAsset, _estimatedRewards, _blockNumber);
        emit AprUpdated(currentApr, _apr);

        currentApr = _apr;
    }

    /**
     * @notice update rate manager
     * @param _rateManager new rate manager
     */
    function _setRateManager(address _rateManager) internal {
        emit RateManagerChanged(rateManager, _rateManager);
        rateManager = _rateManager;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}
