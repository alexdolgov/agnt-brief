// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {AbstractAssetOracle} from "./AbstractAssetOracle.sol";

import {SafeCast} from "./dependencies/openzeppelin/SafeCast.sol";

import {IAerodromePortfolioOracle} from "./interfaces/IAerodromePortfolioOracle.sol";
import {IAerodromeNonFungiblePositionManager} from "./interfaces/aerodrome/IAerodromeNonFungiblePositionManager.sol";
import {IAerodromeSugarHelper} from "./interfaces/aerodrome/IAerodromeSugarHelper.sol";
import {ICLFactory} from "./interfaces/aerodrome/ICLFactory.sol";
import {ICLGauge} from "./interfaces/aerodrome/ICLGauge.sol";
import {ICLPool} from "./interfaces/aerodrome/ICLPool.sol";
import {IGauge} from "./interfaces/aerodrome/IGauge.sol";
import {IPool} from "./interfaces/aerodrome/IPool.sol";
import {IReward} from "./interfaces/aerodrome/IReward.sol";
import {IRewardsDistributor} from "./interfaces/aerodrome/IRewardsDistributor.sol";
import {IVoter} from "./interfaces/aerodrome/IVoter.sol";
import {IVotingEscrow} from "./interfaces/aerodrome/IVotingEscrow.sol";

import {IERC20Metadata} from "@openzeppelin/IERC20Metadata.sol";
import {Ownable} from "@openzeppelin/Ownable.sol";

import {IAssetRegistry} from "src/v2/interfaces/IAssetRegistry.sol";
import {IVault} from "src/v2/interfaces/IVault.sol";

/// @title AerodromePortfolioOracle.
/// @notice Oracle for Aerodrome portfolio. Used as a phantom asset to represent the value of Aerodrome positions in the vault.
/// @dev Implements price feed functionality for Aerodrome LP positions, veAERO holdings and fees, and incentives.
contract AerodromePortfolioOracle is IAerodromePortfolioOracle, AbstractAssetOracle {
    using SafeCast for int128;

    /// CONSTANTS ///

    /// @notice The name of the oracle token.
    /// @dev Used for ERC20 compatibility.
    string private constant _NAME = "AerodromePortfolioOracle";

    /// @notice The symbol of the oracle token.
    /// @dev Used for ERC20 compatibility.
    string private constant _SYMBOL = "APO";

    /// @notice Duration of one week in seconds.
    /// @dev Used for epoch calculations in reward distribution.
    uint256 private constant _WEEK = 7 days;

    /// @notice Decimal scalar for V2 pool calculations.
    /// @dev Used to normalize calculations involving pool reserves and balances.
    uint256 private constant _POOL_V2_DECIMALS_SCALAR = 1e18;

    /// @notice Sentinel value to represent zero rewards.
    /// @dev Used to differentiate between unobserved and zero rewards.
    uint256 private constant _ZERO_REWARDS_SENTINEL = type(uint256).max;

    /// IMMUTABLES ///

    /// @notice Reference to Aerodrome's Voter contract.
    /// @dev Used for gauge and reward management.
    IVoter public immutable voter;

    /// @notice Reference to Aerodrome's SugarHelper contract.
    /// @dev Provides utility functions for position calculations.
    IAerodromeSugarHelper public immutable sugarHelper;

    /// @notice Reference to Aerodrome's NonFungiblePositionManager.
    /// @dev Manages concentrated liquidity positions.
    IAerodromeNonFungiblePositionManager public immutable positionManager;

    /// @notice Reference to the vault's asset registry.
    /// @dev Used for asset pricing and validation.
    IAssetRegistry public immutable assetRegistry;

    /// @notice Reference to Aerodrome's Concentrated Liquidity Pool Factory.
    /// @dev Used to get CL pool addresses.
    ICLFactory public immutable clPoolFactory;

    /// @notice Reference to Aerodrome's VotingEscrow contract.
    /// @dev Used to get veAERO balance.
    IVotingEscrow public immutable votingEscrow;

    /// @notice Reference to Aerodrome's RewardsDistributor contract.
    /// @dev Handles distribution of protocol rewards.
    IRewardsDistributor public immutable rewardsDistributor;

    /// @notice Address of the AERO token.
    /// @dev Protocol's governance and reward token.
    address public immutable aero;

    /// STORAGE ///

    /// @notice Array of tracked pool information.
    /// @dev Stores pool addresses and their types (CL or V2).
    PoolInfo[] public pools;

    /// @notice Array of tracked bribe token addresses.
    /// @dev Used to track incentives.
    address[] public bribeTokens;

    /// MODIFIERS ///

    modifier onlyVaultOwner() {
        // Requirements: check that the caller is the vault owner.
        if (msg.sender != Ownable(_vault).owner()) {
            revert AeraPeriphery__CallerIsNotVaultOwner();
        }
        _;
    }

    /// FUNCTIONS ///

    /// @notice Constructor initializes the oracle with required Aerodrome protocol addresses.
    /// @param vault_ Address of the vault this oracle serves.
    /// @param voter_ Address of Aerodrome's Voter contract.
    /// @param sugarHelper_ Address of Aerodrome's SugarHelper contract.
    /// @param positionManager_ Address of Aerodrome's NonFungiblePositionManager.
    /// @param clPoolFactory_ Address of Aerodrome's Concentrated Liquidity Pool Factory.
    /// @param rewardsDistributor_ Address of Aerodrome's RewardsDistributor.
    /// @param aero_ Address of the AERO token.
    /// @param votingEscrow_ Address of Aerodrome's VotingEscrow contract.
    constructor(
        address vault_,
        address voter_,
        address sugarHelper_,
        address positionManager_,
        address clPoolFactory_,
        address rewardsDistributor_,
        address aero_,
        address votingEscrow_
    ) AbstractAssetOracle(vault_) {
        // Requirements: check that the Voter address is not zero.
        if (voter_ == address(0)) {
            revert AeraPeriphery__VoterIsZeroAddress();
        }
        // Requirements: check that the SugarHelper address is not zero.
        if (sugarHelper_ == address(0)) {
            revert AeraPeriphery__SugarHelperIsZeroAddress();
        }
        // Requirements: check that the PositionManager address is not zero.
        if (positionManager_ == address(0)) {
            revert AeraPeriphery__PositionManagerIsZeroAddress();
        }
        // Requirements: check that the CLPoolFactory address is not zero.
        if (clPoolFactory_ == address(0)) {
            revert AeraPeriphery__CLPoolFactoryIsZeroAddress();
        }
        // Requirements: check that the RewardsDistributor address is not zero.
        if (rewardsDistributor_ == address(0)) {
            revert AeraPeriphery__RewardsDistributorIsZeroAddress();
        }
        // Requirements: check that the AERO token address is not zero.
        if (aero_ == address(0)) {
            revert AeraPeriphery__AeroIsZeroAddress();
        }
        // Requirements: check that the AERO token complies with ERC20Metadata interface.
        IERC20Metadata(aero_).decimals();
        // Requirements: check that the VotingEscrow address is not zero.
        if (votingEscrow_ == address(0)) {
            revert AeraPeriphery__VotingEscrowIsZeroAddress();
        }

        assetRegistry = IVault(vault_).assetRegistry();
        voter = IVoter(voter_);
        sugarHelper = IAerodromeSugarHelper(sugarHelper_);
        positionManager = IAerodromeNonFungiblePositionManager(payable(positionManager_));
        clPoolFactory = ICLFactory(clPoolFactory_);
        rewardsDistributor = IRewardsDistributor(rewardsDistributor_);
        aero = aero_;
        votingEscrow = IVotingEscrow(votingEscrow_);
    }

    /// @inheritdoc AbstractAssetOracle
    function name() external pure override returns (string memory) {
        return _NAME;
    }

    /// @inheritdoc AbstractAssetOracle
    function symbol() external pure override returns (string memory) {
        return _SYMBOL;
    }

    /// @notice Adds a new pool to track for value calculation.
    /// @param pool Address of the Aerodrome pool to add.
    /// @param isClPool Boolean indicating if this is a Concentrated Liquidity pool.
    /// @dev Only callable by vault owner. Reverts if pool already exists.
    function addPool(address pool, bool isClPool) external onlyVaultOwner {
        // Requirements: check that the pool is not already added.
        uint256 length = pools.length;
        for (uint256 i; i < length; ++i) {
            if (pools[i].pool == pool) revert AeraPeriphery__PoolAlreadyAdded(i);
        }

        // Requirements: verify the pool is valid by checking its interface.
        if (isClPool) {
            ICLPool(pool).tickSpacing();
        } else {
            IPool(pool).tokens();
        }

        // Effects: add new pool to tracking array.
        pools.push(PoolInfo({isClPool: isClPool, pool: pool}));

        // Log that the pool was added.
        emit AddedPool(pool, isClPool);
    }

    /// @notice Removes a pool from tracking at the specified index.
    /// @param index Array index of the pool to remove.
    /// @dev Only callable by vault owner. Moves last element to removed position.
    function removePool(uint256 index) external onlyVaultOwner {
        PoolInfo storage poolInfo = pools[index];
        address pool = poolInfo.pool;
        (uint256 amount0, uint256 amount1, uint256 emissions) =
            poolInfo.isClPool ? _processStakedCLPool(pool) : _processV2Pool(pool);
        // Requirements: check that the pool has no value.
        if (amount0 != 0 || amount1 != 0 || emissions != 0) {
            revert AeraPeriphery__PoolHasValue(amount0, amount1, emissions);
        }

        // Effects: Replace element under given index with the last element of the array, and pops from array.
        poolInfo = pools[pools.length - 1];
        pools.pop();

        // Log that the pool was removed.
        emit RemovedPool(pool);
    }

    /// @notice Adds a new token to track for bribe rewards.
    /// @param token Address of the bribe token to track.
    /// @dev Only callable by vault owner. Reverts if token already exists.
    function addBribeToken(address token) external onlyVaultOwner {
        // Requirements: check that the token is not already added.
        uint256 length = bribeTokens.length;
        for (uint256 i; i < length; ++i) {
            if (bribeTokens[i] == token) revert AeraPeriphery__BribeTokenAlreadyAdded(i);
        }

        // Requirements: check that the token is valid.
        IERC20Metadata(token).decimals();

        // Effects: add new token to bribe tokens array.
        bribeTokens.push(token);

        // Log that the bribe token was added.
        emit AddedBribeToken(token);
    }

    /// @notice Removes a bribe token from tracking at the specified index.
    /// @param index Array index of the bribe token to remove.
    /// @dev Only callable by vault owner. Moves last element to removed position.
    function removeBribeToken(uint256 index) external onlyVaultOwner {
        address token = bribeTokens[index];

        bribeTokens[index] = bribeTokens[bribeTokens.length - 1];
        bribeTokens.pop();

        // Log that the bribe token was removed.
        emit RemovedBribeToken(token);
    }

    /// @notice Records the current bribe rewards for a pool and token combination.
    /// @param pool Address of the pool to observe.
    /// @param token Address of the bribe token to observe.
    /// @dev Updates transient storage with current reward state.
    /// @dev Uses max uint256 to distinguish between unobserved and zero rewards.
    /// @dev Expected to be called by the guardian in a submit sequence to permit bribing veAERO voters.
    function observePoolBribes(address pool, address token) external {
        address gauge = voter.gauges(pool);
        // Requirements: check if pool has an associated gauge.
        if (gauge == address(0)) return;

        address bribeReward = voter.gaugeToBribe(gauge);
        // Requirements: check that bribeReward is not zero address.
        if (bribeReward == address(0)) return;

        uint256 currentRewards = IReward(bribeReward).tokenRewardsPerEpoch(token, _epochStart(block.timestamp));
        // Effects: update transient storage with current reward state.
        _tstorePoolRewards(pool, token, currentRewards == 0 ? _ZERO_REWARDS_SENTINEL : currentRewards);
    }

    /// @inheritdoc IAerodromePortfolioOracle
    function getAllPools() external view returns (PoolInfo[] memory) {
        return pools;
    }

    /// @inheritdoc IAerodromePortfolioOracle
    function getAllBribeTokens() external view returns (address[] memory) {
        return bribeTokens;
    }

    /// @inheritdoc AbstractAssetOracle
    /// @dev Aggregates value from pools, veAERO holdings, and incentives.
    function _getValue() internal view override returns (uint256) {
        IAssetRegistry.AssetInformation[] memory assets = assetRegistry.assets();

        (uint256 poolsValue, uint256 poolsAeroEarned) = _processPools(assets);

        (uint256 veAeroUnderlying, uint256 feesValue) = _processVeAero(assets);

        return poolsValue + feesValue + _processIncentives(assets)
            + _processTokenAmount(assets, aero, poolsAeroEarned + veAeroUnderlying) + _processUnstakedCLPositions(assets);
    }

    /// @notice Calculates value of pending incentive rewards.
    /// @param assets Array of asset information from registry.
    /// @return value Total numeraire value of incentives.
    /// @dev To differentiate between no rewards and rewards that are 0, we use max uint256 to represent rewards that are 0.
    function _processIncentives(IAssetRegistry.AssetInformation[] memory assets)
        internal
        view
        returns (uint256 value)
    {
        uint256 bribesLength = bribeTokens.length;
        uint256 poolsLength = pools.length;
        for (uint256 i; i < bribesLength; ++i) {
            address token = bribeTokens[i];
            for (uint256 j; j < poolsLength; ++j) {
                address pool = pools[j].pool;

                uint256 lastRewards = _tloadPoolRewards(pool, token);
                if (lastRewards == 0) continue;

                // If max uint256 is stored, it means that rewards were observed to be 0
                if (lastRewards == _ZERO_REWARDS_SENTINEL) {
                    lastRewards = 0;
                }

                address gauge = voter.gauges(pool);
                if (gauge == address(0)) continue;

                address bribeReward = voter.gaugeToBribe(gauge);
                if (bribeReward == address(0)) continue;

                uint256 currentRewards = IReward(bribeReward).tokenRewardsPerEpoch(token, _epochStart(block.timestamp));
                if (currentRewards != lastRewards) {
                    value += _processTokenAmount(assets, token, currentRewards - lastRewards);
                }
            }
        }
    }

    /// @notice Calculates start of current epoch.
    /// @param timestamp Current timestamp to calculate epoch for.
    /// @return Timestamp of current epoch start.
    function _epochStart(uint256 timestamp) internal pure returns (uint256) {
        unchecked {
            // slither-disable-next-line weak-prng
            return timestamp - (timestamp % _WEEK);
        }
    }

    /// @notice Processes veAERO positions and associated rewards.
    /// @param assets Array of asset information from registry.
    /// @return totalAero Amount of AERO tokens from locked positions and rewards.
    /// @return value Total numeraire value of fees earned from voting.
    function _processVeAero(IAssetRegistry.AssetInformation[] memory assets)
        internal
        view
        returns (uint256 totalAero, uint256 value)
    {
        uint256 totalTokens = votingEscrow.balanceOf(_vault);

        for (uint256 i; i < totalTokens; ++i) {
            uint256 tokenId = votingEscrow.ownerToNFTokenIdList(_vault, i);

            IVotingEscrow.LockedBalance memory lockedInfo = votingEscrow.locked(tokenId);

            totalAero += lockedInfo.amount.toUint256() + rewardsDistributor.claimable(tokenId);

            uint256 voteIndex;
            while (true) {
                // IVoter doesn't implement poolVote.length function, so we call with incrementing voteIndex until it fails.
                try voter.poolVote(tokenId, voteIndex) returns (address pool) {
                    address gauge = voter.gauges(pool);
                    if (gauge == address(0)) continue;

                    address feesReward = voter.gaugeToFees(gauge);
                    if (feesReward == address(0)) continue;

                    address token0 = IPool(pool).token0();
                    value += _processTokenAmount(assets, token0, IReward(feesReward).earned(token0, tokenId));

                    address token1 = IPool(pool).token1();
                    value += _processTokenAmount(assets, token1, IReward(feesReward).earned(token1, tokenId));
                } catch {
                    break;
                }

                ++voteIndex;
            }
        }
    }

    /// @notice Processes all tracked pool positions.
    /// @param assets Array of asset information from registry.
    /// @return value Total numeraire value of pool positions.
    /// @return totalEarnedAero Total AERO rewards earned from pools.
    function _processPools(IAssetRegistry.AssetInformation[] memory assets)
        internal
        view
        returns (uint256 value, uint256 totalEarnedAero)
    {
        uint256 length = pools.length;

        PoolInfo storage poolInfo;
        uint256 amount0;
        uint256 amount1;
        uint256 emissions;
        address pool;
        for (uint256 i; i < length; ++i) {
            poolInfo = pools[i];
            pool = poolInfo.pool;

            (amount0, amount1, emissions) = poolInfo.isClPool ? _processStakedCLPool(pool) : _processV2Pool(pool);

            value += _processTokenAmount(assets, ICLPool(pool).token0(), amount0);
            value += _processTokenAmount(assets, ICLPool(pool).token1(), amount1);

            totalEarnedAero += emissions;
        }
    }

    /// @notice Processes unstaked Concentrated Liquidity positions.
    /// @param assets Array of asset information from registry.
    /// @return value Total numeraire value of unstaked positions.
    function _processUnstakedCLPositions(IAssetRegistry.AssetInformation[] memory assets)
        internal
        view
        returns (uint256 value)
    {
        uint256 unstakedPositionsCount = positionManager.balanceOf(_vault);
        for (uint256 i; i < unstakedPositionsCount; ++i) {
            uint256 positionId = positionManager.tokenOfOwnerByIndex(_vault, i);
            (,, address token0, address token1, int24 tickSpacing,,,,,,,) = positionManager.positions(positionId);
            address pool = clPoolFactory.getPool(token0, token1, tickSpacing);

            (uint160 sqrtPriceX96,,,,,) = ICLPool(pool).slot0();
            (uint256 amount0, uint256 amount1) =
                sugarHelper.principal(address(positionManager), positionId, sqrtPriceX96);
            (uint256 fees0, uint256 fees1) = sugarHelper.fees(address(positionManager), positionId);
            value += _processTokenAmount(assets, ICLPool(pool).token0(), amount0 + fees0)
                + _processTokenAmount(assets, ICLPool(pool).token1(), amount1 + fees1);
        }
    }

    /// @notice Converts token amount to numeraire value using asset registry.
    /// @param assets Array of asset information from registry.
    /// @param token Address of token to price.
    /// @param amount Amount of tokens to convert.
    /// @return numeraire value of token amount.
    function _processTokenAmount(IAssetRegistry.AssetInformation[] memory assets, address token, uint256 amount)
        internal
        view
        returns (uint256)
    {
        if (amount == 0) return 0;

        // Assumes the token has 18 decimals at most
        uint256 upscaleFactor = 10 ** (18 - IERC20Metadata(token).decimals());

        IAssetRegistry.AssetInformation memory assetInfo;
        uint256 length = assets.length;
        for (uint256 i; i < length; ++i) {
            assetInfo = assets[i];
            if (address(assetInfo.asset) == token) {
                if (assetInfo.isERC4626) revert AeraPeriphery__ERC4626NotAllowed();
                address oracle = address(assetInfo.oracle);
                if (oracle == address(0)) return amount;

                return amount * _getPrice(oracle) * upscaleFactor / 10 ** IERC20Metadata(oracle).decimals();
            }
        }

        revert AeraPeriphery__CantPriceAsset(token);
    }

    /// @notice Processes staked Concentrated Liquidity pool positions.
    /// @param pool Address of the CL pool.
    /// @return amount0 Amount of token0 in position.
    /// @return amount1 Amount of token1 in position.
    /// @return emissions Amount of AERO emissions earned.
    function _processStakedCLPool(address pool)
        internal
        view
        returns (uint256 amount0, uint256 amount1, uint256 emissions)
    {
        address gauge = voter.gauges(pool);
        if (gauge == address(0)) {
            return (0, 0, 0);
        }

        uint256[] memory positionIds = ICLGauge(gauge).stakedValues(_vault);
        uint256 positionsLength = positionIds.length;
        if (positionsLength == 0) {
            return (0, 0, 0);
        }

        (uint160 sqrtPriceX96,,,,,) = ICLPool(pool).slot0();
        uint256 positionId;
        for (uint256 i; i < positionsLength; ++i) {
            positionId = positionIds[i];
            (uint256 posAmount0, uint256 posAmount1) =
                sugarHelper.principal(address(positionManager), positionId, sqrtPriceX96);
            amount0 += posAmount0;
            amount1 += posAmount1;

            emissions += ICLGauge(gauge).earned(_vault, positionId) + ICLGauge(gauge).rewards(positionId);
        }
    }

    /// @notice Stores pool rewards in transient storage.
    /// @param pool Address of the pool.
    /// @param token Address of the reward token.
    /// @param rewards Amount of rewards.
    function _tstorePoolRewards(address pool, address token, uint256 rewards) internal {
        bytes32 slot = keccak256(abi.encode(pool, token));
        // slither-disable-next-line assembly
        assembly {
            tstore(slot, rewards)
        }
    }

    /// @notice Loads pool rewards from transient storage.
    /// @param pool Address of the pool.
    /// @param token Address of the reward token.
    /// @return value Amount of rewards stored.
    function _tloadPoolRewards(address pool, address token) internal view returns (uint256 value) {
        bytes32 slot = keccak256(abi.encode(pool, token));
        // slither-disable-next-line assembly
        assembly {
            value := tload(slot)
        }
    }

    /// @notice Processes V2 pool positions.
    /// @param pool Address of the V2 pool.
    /// @return amount0 Amount of token0 in position.
    /// @return amount1 Amount of token1 in position.
    /// @return emissions Amount of AERO emissions earned.
    function _processV2Pool(address pool) internal view returns (uint256 amount0, uint256 amount1, uint256 emissions) {
        uint256 liquidity = IPool(pool).balanceOf(_vault);
        if (liquidity != 0) {
            amount0 = IPool(pool).claimable0(_vault);
            amount1 = IPool(pool).claimable1(_vault);

            uint256 claimableDelta0 = IPool(pool).index0() - IPool(pool).supplyIndex0(_vault);
            if (claimableDelta0 > 0) {
                amount0 += liquidity * claimableDelta0 / _POOL_V2_DECIMALS_SCALAR;
            }

            uint256 claimableDelta1 = IPool(pool).index1() - IPool(pool).supplyIndex1(_vault);
            if (claimableDelta1 > 0) {
                amount1 += liquidity * claimableDelta1 / _POOL_V2_DECIMALS_SCALAR;
            }

            uint256 poolTotalSupply = IPool(pool).totalSupply();

            amount0 += IPool(pool).reserve0() * liquidity / poolTotalSupply;
            amount1 += IPool(pool).reserve1() * liquidity / poolTotalSupply;
        }

        address gauge = voter.gauges(pool);
        if (gauge != address(0)) {
            liquidity = IGauge(gauge).balanceOf(_vault);
            if (liquidity != 0) {
                uint256 poolTotalSupply = IPool(pool).totalSupply();

                amount0 += IPool(pool).reserve0() * liquidity / poolTotalSupply;
                amount1 += IPool(pool).reserve1() * liquidity / poolTotalSupply;
                emissions = IGauge(gauge).earned(_vault);
            }
        }
    }
}
