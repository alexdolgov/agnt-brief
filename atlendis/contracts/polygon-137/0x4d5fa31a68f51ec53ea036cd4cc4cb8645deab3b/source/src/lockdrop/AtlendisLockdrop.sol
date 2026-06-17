// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./BaseLockdrop.sol";
import "../external/IPoolsController.sol";
import "../external/IPositionManager.sol";

/**
 * @title AtlendisLockdrop
 * @notice Lockdrop contract designed to rewards users that lock their Atlendis
 * positions for a given duration with a corresponding amount of tokens
 **/
contract AtlendisLockdrop is BaseLockdrop {
    using SafeERC20 for ERC20;

    ////////////
    // EVENTS //
    ////////////

    event LockdropCreated(
        address poolsContract,
        address positionsContract,
        bytes32 poolHash,
        uint256 maxMultiplier,
        uint256 minLockingPeriod,
        uint256 maxLockingPeriod,
        uint256 minPositionAmount
    );
    event RateUpdated(uint256 tokenId, address from, uint256 newRate);

    /////////////
    // STORAGE //
    /////////////

    bytes32 private immutable poolHash; // a lockdrop is specific to an Atlendis pool
    uint256 private immutable minPositionAmount; // positions must have a minimum underlying token value
    address private immutable poolsController; // address of Atlendis' pools contract

    /////////////////
    // CONSTRUCTOR //
    /////////////////

    constructor(
        address _poolsController,
        address _positionManager,
        bytes32 _poolHash,
        uint256 _maxMultiplier,
        uint256 _minLockingPeriod,
        uint256 _maxLockingPeriod,
        uint256 _minPositionAmount
    )
        BaseLockdrop(
            _positionManager,
            _maxMultiplier,
            _minLockingPeriod,
            _maxLockingPeriod
        )
    {
        require(_poolHash != "", "Wrong pool input");

        poolHash = _poolHash;
        minPositionAmount = _minPositionAmount;
        poolsController = _poolsController;

        (address underlyingToken, , , , , , , , , , ) = IPoolsController(
            poolsController
        ).getPoolParameters(poolHash);
        require(underlyingToken != address(0), "Target pool does not exist");

        emit LockdropCreated(
            _poolsController,
            _positionManager,
            _poolHash,
            _maxMultiplier,
            _minLockingPeriod,
            _maxLockingPeriod,
            _minPositionAmount
        );
    }

    /////////////////////////
    // POSITION MANAGEMENT //
    /////////////////////////

    /**
     * @notice Update the rate of the underlying Atlendis position
     **/
    function updateRate(uint256 tokenId, uint256 newRate)
        external
        isLockOwner(tokenId)
    {
        IPositionManager(nft).updateRate(uint128(tokenId), uint128(newRate));

        emit RateUpdated(tokenId, _msgSender(), newRate);
    }

    ///////////////
    // OVERRIDES //
    ///////////////

    /**
     * @notice Get back remaining rewards
     * Owner can get back remaining rewards
     * Rescueing rewards lets users claim their pending rewards
     * Users won't be able to use lock positions anymore
     **/
    function rescueRewards(address to) external override onlyOwner {
        uint256[] memory toRescue = new uint256[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            toRescue[i] =
                ERC20(tokens[i]).balanceOf(address(this)) -
                pendingRewards[tokens[i]];
            ERC20(tokens[i]).safeTransfer(_msgSender(), toRescue[i]);
        }

        emit RewardsRescued(to, toRescue);
    }

    /**
     * @notice Locking logic
     * Implementation of _lock function to take into account Atlendis' specific use case
     * Verifies that the position complies with the lockdrop conditions
     * Computes the rewards and transfers the nft to the lockdrop contract
     **/
    function _lock(
        uint256 tokenId,
        uint256[] memory baseAllocations,
        uint256 lockingDuration
    ) internal override {
        (
            uint128 bondsQuantity,
            uint128 normalizedDepositedAmount
        ) = IPositionManager(nft).getPositionRepartition(uint128(tokenId));
        require(
            (bondsQuantity + normalizedDepositedAmount) > minPositionAmount,
            "Unsufficient position size"
        );
        (bytes32 _poolHash, , , , , , ) = IPositionManager(nft).position(
            uint128(tokenId)
        );
        require(_poolHash == poolHash, "Wrong pool hash");
        currentLocks[tokenId].owner = _msgSender();
        currentLocks[tokenId].endDate = block.timestamp + lockingDuration;
        uint256[] memory rewards = new uint256[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            uint256 reward = _getRewardsAmount(
                baseAllocations[i],
                lockingDuration,
                tokenId,
                tokens[i]
            );
            require(
                ERC20(tokens[i]).balanceOf(address(this)) >=
                    (pendingRewards[tokens[i]] + reward),
                "Not enough rewards left to distribute"
            );
            pendingRewards[tokens[i]] += reward;
            currentLocks[tokenId].rewards[tokens[i]] = reward;
            rewards[i] = reward;
        }
        ERC721(nft).transferFrom(_msgSender(), address(this), tokenId);
        emit Locked(
            tokenId,
            bondsQuantity + normalizedDepositedAmount,
            lockingDuration,
            _msgSender(),
            baseAllocations,
            rewards
        );
    }

    /**
     * @notice Computes token rewards amount
     * Implementation to comply with Atlendis' specific use case
     **/
    function _getRewardsAmount(
        uint256 baseAmount,
        uint256 lockingDuration,
        uint256 tokenId,
        address token
    ) internal view override returns (uint256) {
        (
            uint128 bondsQuantity,
            uint128 normalizedDepositedAmount
        ) = IPositionManager(nft).getPositionRepartition(uint128(tokenId));
        uint256 positionAmount = uint256(
            bondsQuantity + normalizedDepositedAmount
        );
        uint256 multiplier = _getMultiplier(lockingDuration, tokenId);
        uint256 baseAllocation = (baseAmount * multiplier) / baseMultiplier;
        uint256 rewardsAmount = (positionAmount *
            tokenParameters[token].rate * // rate is in token per second and inherits its precision
            lockingDuration *
            multiplier) /
            baseMultiplier /
            1e18; // getPositionRepartition always returns wad precision
        return baseAllocation + rewardsAmount;
    }

    /**
     * @notice Computes token rewards multiplier
     * Implementation to comply with Atlendis' specific use case
     * the longer the lock, the bigger the reward
     **/
    function _getMultiplier(uint256 lockingDuration, uint256)
        internal
        view
        override
        returns (uint256 multiplier)
    {
        return
            baseMultiplier +
            ((maxMultiplier - baseMultiplier) *
                (lockingDuration - minLockingPeriod)) /
            (maxLockingPeriod - minLockingPeriod);
    }
}
