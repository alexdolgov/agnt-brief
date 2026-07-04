// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {FixedPointMathLib} from "@solmate/utils/FixedPointMathLib.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {PeripheryStore} from "@src/Periphery/PeripheryStore.sol";
import {ICNT_TOTAL_SUPPLY} from "@src/Utils/Constants.sol";
import {IPool} from "@src/Interfaces/IPool.sol";
import {IICNProtocolMini} from "@src/Interfaces/IICNProtocolMini.sol";
import {IPeriphery} from "@src/Interfaces/IPeriphery.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title Periphery
/// @notice The Periphery contract contains helper functions for the Pool contract that are not part of the Pool contract itself
contract Periphery is Initializable, PeripheryStore, Ownable2StepUpgradeable, UUPSUpgradeable, IPeriphery {
    using FixedPointMathLib for uint256;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /*//////////////////////////////////////////////////////////////
                              INITIALIZER
    //////////////////////////////////////////////////////////////*/

    /// @dev Initializes the contract
    /// @param _initialOwner The initial owner of the contract
    /// @param _pool The pool contract address
    function initialize(address _initialOwner, IPool _pool, IICNProtocolMini _icnp) public initializer {
        if (_initialOwner == address(0)) revert InvalidParams();
        if (address(_pool) == address(0)) revert InvalidParams();

        __Ownable2Step_init();
        __Ownable_init(_initialOwner);
        __UUPSUpgradeable_init();

        PeripheryStorage storage $ = _getStorage();
        $.pool = _pool;
        $.icnp = _icnp;
    }

    /*//////////////////////////////////////////////////////////////
                          UPGRADE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @dev Function that should revert when msg.sender is not authorized to upgrade the contract
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /*//////////////////////////////////////////////////////////////
                          CORE HELPER METHODS
    //////////////////////////////////////////////////////////////*/

    function version() external pure returns (uint64) {
        return 1;
    }

    function pool() external view returns (IPool) {
        PeripheryStorage storage $ = _getStorage();
        return $.pool;
    }

    function icnp() external view returns (IICNProtocolMini) {
        PeripheryStorage storage $ = _getStorage();
        return $.icnp;
    }

    function setPool(IPool newPool) external onlyOwner {
        PeripheryStorage storage $ = _getStorage();
        $.pool = newPool;
    }

    function setIcnp(IICNProtocolMini newIcnp) external onlyOwner {
        PeripheryStorage storage $ = _getStorage();
        $.icnp = newIcnp;
    }

    function tvl() external view returns (uint256) {
        PeripheryStorage storage $ = _getStorage();
        IPool pool_ = $.pool;
        return pool_.totalAssets();
    }

    function shouldFlushDeposits() external view returns (bool) {
        PeripheryStorage storage $ = _getStorage();
        IPool pool_ = $.pool;

        uint256 balance = IERC20(pool_.asset()).balanceOf(address(pool_));
        uint256 maxPortfolioDelegationSize_ = pool_.maxPortfolioDelegationSize();
        // check if enough time has passed since last delegation
        bool overTimeThrottle = block.timestamp >= pool_.lastTimeStampCheckpoint() + pool_.delegationThrottleSeconds();
        // if the balance is over the max delegation size, we can bypass the time throttle
        bool shouldByPassThrottle = balance >= maxPortfolioDelegationSize_;

        return balance >= pool_.minPortfolioDelegationSize() && (overTimeThrottle || shouldByPassThrottle);
    }

    function shouldInitializeRewardClaims() external view returns (bool) {
        PeripheryStorage storage $ = _getStorage();
        IICNProtocolMini icnp_ = $.icnp;
        IPool pool_ = $.pool;

        IPool.DelegationPosition[] memory positions = _getPositionsToInitialize(icnp_, pool_);

        return positions.length > 0;
    }

    function initializeRewardClaims() external {
        PeripheryStorage storage $ = _getStorage();
        IICNProtocolMini icnp_ = $.icnp;
        IPool pool_ = $.pool;

        IPool.DelegationPosition[] memory positions = _getPositionsToInitialize(icnp_, pool_);

        if (positions.length > 0) {
            pool_.initializeRewardClaims(positions);
        }
    }

    function shouldClaimRewards() external view returns (bool) {
        PeripheryStorage storage $ = _getStorage();
        IICNProtocolMini icnp_ = $.icnp;
        IPool pool_ = $.pool;

        uint256[] memory rewardIdxs = _getRewardIdxsToClaim(icnp_, pool_);

        return rewardIdxs.length > 0;
    }

    function claimRewards() external {
        PeripheryStorage storage $ = _getStorage();
        IICNProtocolMini icnp_ = $.icnp;
        IPool pool_ = $.pool;

        uint256[] memory rewardIdxs = _getRewardIdxsToClaim(icnp_, pool_);

        if (rewardIdxs.length > 0) {
            pool_.claimRewards(rewardIdxs);
        }
    }

    function _getRewardIdxsToClaim(IICNProtocolMini icnp_, IPool pool_) internal view returns (uint256[] memory) {
        IICNProtocolMini.PendingUserRewardClaims[] memory pendingDelegatorRewardsClaims =
            icnp_.getPendingDelegatorRewardsClaims(address(pool_));

        uint256 totalRewardClaims = pendingDelegatorRewardsClaims.length;

        int256[] memory idxsClaimMap = new int256[](totalRewardClaims);
        uint256 rewardIdxsToClaimCount = 0;
        for (uint256 i = 0; i < totalRewardClaims; i++) {
            if (block.timestamp > pendingDelegatorRewardsClaims[i].unlockTimestamp) {
                idxsClaimMap[i] = int256(i);
                rewardIdxsToClaimCount++;
            } else {
                idxsClaimMap[i] = -1;
            }
        }

        uint256[] memory rewardIdxs = new uint256[](rewardIdxsToClaimCount);
        for (uint256 i = 0; i < idxsClaimMap.length; i++) {
            if (idxsClaimMap[i] != -1) {
                rewardIdxs[uint256(idxsClaimMap[i])] = i;
            }
        }

        return rewardIdxs;
    }

    function _getPositionsToInitialize(IICNProtocolMini icnp_, IPool pool_)
        internal
        view
        returns (IPool.DelegationPosition[] memory)
    {
        uint256 totalPositions = pool_.totalPositions();
        int256[] memory positionsToIntialize = new int256[](totalPositions);
        uint256 positionsToIntializeCount = 0;
        bool shouldInitialize = false;
        for (uint256 i = 0; i < totalPositions; i++) {
            uint256 unclaimedRewards = icnp_.unclaimedDelegationRewards(address(pool_), i, 0);
            if (unclaimedRewards >= pool_.triggerInitiateRewardClaimAbs()) {
                positionsToIntialize[i] = int256(i);
                positionsToIntializeCount++;
                if (!shouldInitialize) {
                    shouldInitialize = true;
                }
            } else {
                positionsToIntialize[i] = -1;
            }
        }

        IPool.DelegationPosition[] memory positions = new IPool.DelegationPosition[](positionsToIntializeCount);
        for (uint256 i = 0; i < positionsToIntialize.length; i++) {
            if (positionsToIntialize[i] != -1) {
                positions[uint256(positionsToIntialize[i])] =
                    IPool.DelegationPosition({userDelegationIndex: i, nodeDelegationIndex: 0});
            }
        }

        return positions;
    }

    /// @dev Returns the APY for a given delegation position
    /// @return The calculated APY as a percentage (1e18 = 100%)
    function apy() external view returns (uint256) {
        PeripheryStorage storage $ = _getStorage();
        IICNProtocolMini icnp_ = $.icnp;
        IPool pool_ = $.pool;

        uint256 totalDelegatedICNT = icnp_.getTotalDelegatedICNT();
        uint256 collateralizationRatio = totalDelegatedICNT * 1e18 / ICNT_TOTAL_SUPPLY;

        uint256 maxAPY = icnp_.calculateMaxApy(collateralizationRatio);

        IICNProtocolMini.UserDelegation[] memory delegations = icnp_.getDelegations(address(pool_));

        uint256 delegationsLength = delegations.length;
        if (delegationsLength == 0) {
            return 0;
        }

        IICNProtocolMini.UserDelegation memory delegation;
        // Track weighted sum and total weight in a single pass
        uint256 weightedSum = 0;
        uint256 totalWeight = 0;
        for (uint256 i = 0; i < delegationsLength; i++) {
            delegation = delegations[i];
            uint256 delegationAmount = delegation.nodeDelegations[0].amount;
            uint256 scalingFactor = delegation.apyScalingFactor;

            uint256 positionAPY = maxAPY.mulWadDown(scalingFactor);

            // Add to weighted sum: positionAPY * delegationAmount
            weightedSum += positionAPY * delegationAmount;

            // Add to total weight
            totalWeight += delegationAmount;
        }

        return weightedSum / totalWeight;
    }
}
