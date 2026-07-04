// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20BurnableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {FixedPointMathLib} from "@solmate/utils/FixedPointMathLib.sol";
import {DelegatedPositionManager} from "@src/Utils/DelegatedPositionManager.sol";
import {PoolStore} from "@src/Pool/PoolStore.sol";

import {IICNProtocolMini} from "@src/Interfaces/IICNProtocolMini.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IRewardHandler} from "@src/Interfaces/IRewardHandler.sol";
import {IPool} from "@src/Interfaces/IPool.sol";

import {MIN_DEPOSIT_AMOUNT, SECONDS_IN_DAY, ICNT_TOTAL_SUPPLY} from "@src/Utils/Constants.sol";

//    GGGGGGGGGGGGG       LLLLLLL                IIIIII         FFFFFFFFFFFFFFFFFFFFFF
//   GGG::::::::::::G     L:::::L                I::::I         F::::::::::::::::::::F
// G:::::GGGGGGGG::::G    L:::::L                I::::I         FF::::::FFFFFFFFF::::F
// G:::::G       GGGGGG   L:::::L                I::::I         F:::::F       FFFFFF
// G:::::G                L:::::L                I::::I         F:::::F
// G:::::G                L:::::L                I::::I         F::::::FFFFFFFFFF
// G:::::G    GGGGGGGGGG  L:::::L                I::::I         F:::::::::::::::F
// G:::::G    G::::::::G  L:::::L                I::::I         F:::::::::::::::F
// G:::::G    GGGGG::::G  L:::::L                I::::I         F::::::FFFFFFFFFF
// G:::::G        G::::G  L:::::L                I::::I         F:::::F
//  G:::::G       G::::G  L:::::L                I::::I         F:::::F
//   G:::::GGGGGGGG::::G  L:::::L                I::::I         F:::::F
//    GG:::::::::::::::G  L:::::L                I::::I         F:::::F
//      GGG::::::GGG:::G  LLLLLLLLLLLLLLLLLLL    I::::I         F:::::F
//         GGGGGG   GGGG  LLLLLLLLLLLLLLLLLLL    IIIIII         FFFFFFF
//
//                                    ++++++
//                                    ++++++
//                                ++++++++++++++
//                                ++++++++++++++
//                                    ++++++
//                                    ++++++
//
//            IIIIIIIIII     CCCCCCCCCCCCC     NNNNNNNN        NNNNNNNN
//           I::::::::I  CC:::::::::::::::C  N::::::::N      N::::::N
//          II::::::II C:::::CCCCCCCC::::C N:::::::::N     N::::::N
//            I::::I C:::::C       CCCCCC N::::::::::N    N::::::N
//            I::::I C:::::C              N:::::::::::N   N::::::N
//            I::::I C:::::C              N:::::::N::::N  N::::::N
//            I::::I C:::::C              N::::::N N::::N N::::::N
//            I::::I C:::::C              N::::::N  N::::N:::::::N
//            I::::I C:::::C              N::::::N   N:::::::::::N
//            I::::I C:::::C              N::::::N    N::::::::::N
//            I::::I C:::::C       CCCCCC N::::::N     N:::::::::N
//            I::::I C:::::CCCCCCCC::::C N::::::N      N::::::::N
//           I::::I CC:::::::::::::::C N::::::N       N:::::::N
//          I::::I   CCC::::::::::::C N::::::N        N::::::N
//         IIIIIIIIII    CCCCCCCCCCCCC NNNNNNNN         NNNNNNN

/// @title Pool
/// @notice The Pool contract is an ERC4626 compliant pool that manages deposits, delegations, and rewards
contract Pool is
    Initializable,
    PoolStore,
    ERC20Upgradeable,
    ERC20BurnableUpgradeable,
    Ownable2StepUpgradeable,
    PausableUpgradeable,
    UUPSUpgradeable,
    IPool
{
    using SafeERC20 for IERC20;
    using FixedPointMathLib for uint256;
    using DelegatedPositionManager for IICNProtocolMini;

    /*//////////////////////////////////////////////////////////////
                                 MODIFIERS
    //////////////////////////////////////////////////////////////*/

    modifier validReceiver(address receiver) {
        if (receiver == address(0)) revert InvalidParams();
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IPool
    function initialize(
        address _initialOwner,
        string memory _name,
        string memory _symbol,
        IERC20 _asset,
        IICNProtocolMini _icnp,
        address _treasury,
        uint256[] memory _nodeIDs,
        VaultConfig[] memory _portfolioVaultConfigs,
        uint256 _minPortfolioDelegationAmt,
        uint256 _maxPortfolioDelegationAmt
    ) public initializer {
        if (_initialOwner == address(0)) revert InvalidParams();
        if (bytes(_name).length == 0) revert InvalidParams();
        if (bytes(_symbol).length == 0) revert InvalidParams();
        if (address(_asset) == address(0)) revert InvalidParams();
        if (_icnp == IICNProtocolMini(address(0))) revert InvalidParams();
        if (_treasury == address(0)) revert InvalidParams();
        if (_nodeIDs.length == 0) revert InvalidParams();
        if (_portfolioVaultConfigs.length == 0) revert InvalidParams();
        if (_minPortfolioDelegationAmt == 0) revert InvalidParams();
        if (_maxPortfolioDelegationAmt == 0) revert InvalidParams();

        __ERC20_init(_name, _symbol);
        __ERC20Burnable_init();
        __Ownable2Step_init();
        __Ownable_init(_initialOwner);
        __Pausable_init();
        __UUPSUpgradeable_init();

        // Initialize storage variables
        PoolStorage storage $ = _getStorage();

        $.icnp = _icnp;
        $.asset = _asset;
        $.treasury = _treasury;
        $.scalarNodeIDs = _nodeIDs;
        _setPortfolioConfig(_portfolioVaultConfigs);

        $.minPortfolioDelegationSize = _minPortfolioDelegationAmt;
        $.maxPortfolioDelegationSize = _maxPortfolioDelegationAmt;
        $.delegationThrottleSeconds = SECONDS_IN_DAY;
        $.triggerInitiateRewardClaimAbs = 1e18;
        $.maxOutstandingRewardClaims = 50_000;
        // 10% take rate
        $.treasuryFee = 1e17;
        // to begin, 100% is restaked
        $.restakePercentage = 1e18;
    }

    /*//////////////////////////////////////////////////////////////
                        DEPOSIT/WITHDRAWAL LOGIC
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IPool
    function deposit(uint256 assets, address receiver) public validReceiver(receiver) whenNotPaused returns (uint256 shares) {
        if (assets < MIN_DEPOSIT_AMOUNT || (shares = previewDeposit(assets)) == 0) {
            revert DepositTooSmall(assets, MIN_DEPOSIT_AMOUNT);
        }

        // Need to transfer before minting or ERC777s could reenter.
        _getStorage().asset.safeTransferFrom(msg.sender, address(this), assets);

        _mint(receiver, shares);

        emit Deposit(msg.sender, receiver, assets, shares);
    }

    /// @inheritdoc IPool
    function mint(uint256 shares, address receiver) public validReceiver(receiver) whenNotPaused returns (uint256 assets) {
        if (shares == 0 || (assets = previewMint(shares)) < MIN_DEPOSIT_AMOUNT) {
            revert DepositTooSmall(assets, MIN_DEPOSIT_AMOUNT);
        }

        // Need to transfer before minting or ERC777s could reenter.
        _getStorage().asset.safeTransferFrom(msg.sender, address(this), assets);

        _mint(receiver, shares);

        emit Deposit(msg.sender, receiver, assets, shares);
    }

    /// @inheritdoc IPool
    function withdraw(uint256, address, address) public pure returns (uint256) {
        revert LockedFunction();
    }

    /// @inheritdoc IPool
    function redeem(uint256, address, address) public pure returns (uint256) {
        revert LockedFunction();
    }

    /*//////////////////////////////////////////////////////////////
              ERC4626 DEPOSIT/WITHDRAWAL ACCOUNTING VIEWS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IPool
    function totalAssets() public view returns (uint256) {
        PoolStorage storage $ = _getStorage();

        uint256 assetBalance = $.asset.balanceOf(address(this));
        uint256 delegatedAssets_ = $._delegatedAssets;
        uint256 pendingLPRewards_ = $._pendingLPRewards;
        uint256 emergencyWithdrawnAssets_ = $._emergencyWithdrawnAssets;

        uint256 rewardHandlerAssets = 0;
        address rewardHandlerAddr = address($.rewardHandler);
        if (rewardHandlerAddr != address(0)) {
            rewardHandlerAssets = IRewardHandler(rewardHandlerAddr).totalAssets();
        }

        return assetBalance + delegatedAssets_ + pendingLPRewards_ + emergencyWithdrawnAssets_ + rewardHandlerAssets;
    }

    /// @inheritdoc IPool
    function convertToShares(uint256 assets) public view returns (uint256) {
        uint256 supply = totalSupply(); // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? assets : (assets * supply) / totalAssets();
    }

    /// @inheritdoc IPool
    function convertToAssets(uint256 shares) public view returns (uint256) {
        uint256 supply = totalSupply(); // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? shares : (shares * totalAssets()) / supply;
    }

    /// @inheritdoc IPool
    function previewDeposit(uint256 assets) public view whenNotPaused returns (uint256) {
        return convertToShares(assets);
    }

    /// @inheritdoc IPool
    function previewMint(uint256 shares) public view whenNotPaused returns (uint256) {
        uint256 supply = totalSupply(); // Saves an extra SLOAD if totalSupply is non-zero.

        // here we explicitly do not use convertToAssets because convertToAssets rounds down,
        // round in favor of the protocol here by rounding up
        return supply == 0 ? shares : shares.mulDivUp(totalAssets(), supply);
    }

    /// @inheritdoc IPool
    function previewWithdraw(uint256) public pure returns (uint256) {
        revert LockedFunction();
    }

    /// @inheritdoc IPool
    function previewRedeem(uint256) public pure returns (uint256) {
        revert LockedFunction();
    }

    /// @inheritdoc IPool
    function maxDeposit(address) public pure returns (uint256) {
        return ICNT_TOTAL_SUPPLY;
    }

    /// @inheritdoc IPool
    function maxMint(address user) public view returns (uint256) {
        return convertToShares(maxDeposit(user));
    }

    /// @inheritdoc IPool
    function maxWithdraw(address) public pure returns (uint256) {
        return 0;
    }

    /// @inheritdoc IPool
    function maxRedeem(address) public pure returns (uint256) {
        return 0;
    }

    /*//////////////////////////////////////////////////////////////
                          STAKING LOGIC
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IPool
    function flushDeposits() external whenNotPaused {
        PoolStorage storage $ = _getStorage();

        uint256 balance = $.asset.balanceOf(address(this));
        if (balance >= $.minPortfolioDelegationSize) {
            uint256 maxPortfolioDelegationSize_ = $.maxPortfolioDelegationSize;
            // check if enough time has passed since last delegation
            bool overTimeThrottle = block.timestamp >= $._lastTimeStampCheckpoint + $.delegationThrottleSeconds;
            // if the balance is over the max delegation size, we can bypass the time throttle
            bool shouldByPassThrottle = balance >= maxPortfolioDelegationSize_;

            if (overTimeThrottle || shouldByPassThrottle) {
                $._lastTimeStampCheckpoint = block.timestamp;

                _delegatePortfolio($, balance, maxPortfolioDelegationSize_);
            }
        }
    }

    /// @inheritdoc IPool
    function claimRewards(uint256[] calldata rewardIdxs) external {
        PoolStorage storage $ = _getStorage();

        _claimRewards($, rewardIdxs);
    }

    /// @inheritdoc IPool
    function initializeRewardClaims(DelegationPosition[] calldata positions) external {
        PoolStorage storage $ = _getStorage();

        if (positions.length + $._totalOutstandingRewardClaims > $.maxOutstandingRewardClaims) {
            revert RewardsClaimLimitExceeded(positions.length + $._totalOutstandingRewardClaims, $.maxOutstandingRewardClaims);
        }

        DelegationPosition memory position;
        IICNProtocolMini icnp_ = $.icnp;
        uint256 treasuryFeePercentage = $.treasuryFee;
        uint256 triggerInitiateRewardClaimAbs_ = $.triggerInitiateRewardClaimAbs;
        uint256 totalLpRewards = 0;
        uint256 totalRewardClaimsCreated = 0;
        // saved outside the loop to save on stack space
        uint256 unclaimedPositionRewards;
        for (uint256 i = 0; i < positions.length; i++) {
            position = positions[i];
            unclaimedPositionRewards =
                icnp_.unclaimedDelegationRewards(address(this), position.userDelegationIndex, position.nodeDelegationIndex);
            if (unclaimedPositionRewards < triggerInitiateRewardClaimAbs_) {
                revert UnclaimedRewardsTooSmall(unclaimedPositionRewards, triggerInitiateRewardClaimAbs_);
            }
            totalLpRewards += _initializeRewardClaim(
                icnp_, position.userDelegationIndex, position.nodeDelegationIndex, unclaimedPositionRewards, treasuryFeePercentage
            );
            totalRewardClaimsCreated++;
        }

        $._pendingLPRewards += totalLpRewards;
        $._totalOutstandingRewardClaims += totalRewardClaimsCreated;
    }

    /*//////////////////////////////////////////////////////////////
                          UPGRADE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @dev Function that should revert when msg.sender is not authorized to upgrade the contract
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /*//////////////////////////////////////////////////////////////
                          INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @dev Calculates the number of positions to create based on the amount of collateral to delegate, note this will always return a number divisible by the number of vault configs
    /// @param portfolioConfigLength The length of the portfolio vault config array
    /// @param amount The amount of collateral to delegate
    /// @param maxPortfolioDelegationAmount The maximum amount of collateral that can be delegated to a single portfolio of positions (an amount across all vaults)
    /// @param totalNodes The total number of nodes in the network to delegate to
    /// @return The number of positions to create
    function _calculateNumPositions(
        uint256 portfolioConfigLength,
        uint256 amount,
        uint256 maxPortfolioDelegationAmount,
        uint256 totalNodes
    ) internal pure returns (uint256) {
        if (amount <= maxPortfolioDelegationAmount) {
            return portfolioConfigLength;
        } else {
            uint256 portfolios = amount.divWadUp(maxPortfolioDelegationAmount * FixedPointMathLib.WAD);
            uint256 positions = portfolios * portfolioConfigLength;
            // if our portfolios of vault configs would result in more individual positions than nodes, we cap at the number of nodes
            if (positions >= totalNodes) {
                // ensure we return a number divisible by the number of vault configs
                uint256 remainder = totalNodes % portfolioConfigLength;
                return totalNodes - remainder;
            }
            return positions;
        }
    }

    /// @dev Delegates a portfolio of positions to the nodes
    /// @param $ The storage pointer to the pool store
    /// @param amount The amount of collateral to delegate
    /// @param maxPortfolioDelegationSize_ The maximum amount of collateral that can be delegated to a single portfolio of positions (an amount across all vaults)
    function _delegatePortfolio(PoolStorage storage $, uint256 amount, uint256 maxPortfolioDelegationSize_) internal {
        // create a memory struct to save from reading from storage in loops and avoid stack too deep compiler errors
        DelegationVars memory vars;
        vars.icnp = $.icnp;
        vars.asset = $.asset;
        vars.portfolioConfig = $.portfolioConfig;
        vars.scalarNodeIDs = $.scalarNodeIDs;
        vars.totalNodes = vars.scalarNodeIDs.length;
        vars.totalPositions = $._totalPositions;
        vars.portfolioWeight = $._totalPortfolioWeight;
        vars.portfolioConfigLength = $.portfolioConfig.length;

        // get the number of complete portfolios we can compute, this rounds down, note this is always divisible by the number of vault configs, otherwise rounded down, which is OK for less total vaults
        uint256 numCompletePortfolios = _calculateNumPositions(
            vars.portfolioConfigLength, amount, maxPortfolioDelegationSize_, vars.totalNodes
        ) / vars.portfolioConfigLength;

        uint256 portfolioAmount = amount.divWadDown(numCompletePortfolios * FixedPointMathLib.WAD);

        uint256 totalAmount = 0;
        uint256 createdPositions = 0;
        // vars saved outside the loop to save on stack space
        VaultConfig memory vaultConfig;
        uint256 delegatedAmount;
        uint256 currentNodeIndex = $._nextNodeIndexToDelegateTo;
        if (currentNodeIndex == vars.totalNodes) {
            currentNodeIndex = 0;
        }

        // approve the asset to be spent by the ICNProtocol
        vars.asset.approve(address(vars.icnp), amount);

        uint256 nodeID;
        for (uint256 i = 0; i < numCompletePortfolios; i++) {
            for (uint256 j = 0; j < vars.portfolioConfigLength; j++) {
                vaultConfig = vars.portfolioConfig[j];
                nodeID = vars.scalarNodeIDs[currentNodeIndex];
                delegatedAmount = portfolioAmount * vaultConfig.weight / vars.portfolioWeight;

                vars.icnp.delegateCollateral(nodeID, delegatedAmount, vaultConfig.lockupDuration);

                emit CreatedPosition(
                    vars.totalPositions + createdPositions + 1, nodeID, delegatedAmount, vaultConfig.lockupDuration
                );

                totalAmount += delegatedAmount;
                createdPositions++;
                currentNodeIndex++;
                if (currentNodeIndex == vars.totalNodes) {
                    currentNodeIndex = 0;
                }
            }
        }

        $._totalPositions += createdPositions;
        $._delegatedAssets += totalAmount;
        $._nextNodeIndexToDelegateTo = currentNodeIndex;

        // reset the approval
        vars.asset.approve(address(vars.icnp), 0);
    }

    /**
     * @dev Claims rewards for the given reward indices
     * @param $ The storage pointer to the pool store
     * @param rewardIdxs The indices of the rewards to claim
     */
    function _claimRewards(PoolStorage storage $, uint256[] memory rewardIdxs) internal {
        IERC20 asset_ = $.asset;
        IICNProtocolMini icnp_ = $.icnp;
        uint256 treasuryFee_ = $.treasuryFee;

        if (rewardIdxs.length > $._totalOutstandingRewardClaims) {
            revert InvalidParams();
        }

        uint256 totalTreasuryRewards = 0;
        uint256 totalLpRewards = 0;
        uint256 treasuryRewards;
        uint256 lpRewards;
        uint256 rewardClaimsCleared = 0;
        // here we loop backwards because the underlying lib uses pop and replace strategy,
        // so it's important that we keep indexes in place before claiming them to maintain precision in which index we claim
        // its not dangerous if we end up claiming the wrong index, as it simply clears out the reward claims queue anyways
        // however, this can result in errors
        for (uint256 i = rewardIdxs.length; i > 0; i--) {
            (treasuryRewards, lpRewards) = _claimReward(icnp_, asset_, treasuryFee_, rewardIdxs[i - 1]);

            totalTreasuryRewards += treasuryRewards;
            totalLpRewards += lpRewards;
            rewardClaimsCleared++;
        }

        // decrease the number of outstanding reward claims
        $._totalOutstandingRewardClaims -= rewardClaimsCleared;
        // decrease the amount of rewards that we expect to be in pending LP rewards
        $._pendingLPRewards -= totalLpRewards;
        // increase the amount of rewards that we have claimed
        $._claimedLPRewards += totalLpRewards;

        // if there is a reward handler and we are not restaking 100% of the rewards, calculate how many rewards to restake
        address rewardHandler_ = address($.rewardHandler);
        uint256 restakePercentage_ = $.restakePercentage;
        if (rewardHandler_ != address(0) && restakePercentage_ < 1e18) {
            uint256 forwardAmount = totalLpRewards.mulWadDown(1e18 - restakePercentage_);
            asset_.approve(rewardHandler_, forwardAmount);
            IRewardHandler(rewardHandler_).pullRewards(forwardAmount);
        }

        // otherwise, if we are restaking 100% of the rewards, we can just leave the rewards in the contract

        asset_.safeTransfer($.treasury, totalTreasuryRewards);
    }

    /**
     * @dev Claims rewards for the given reward index from the pending reward claims array in ICNProtocol
     * @param icnp_ The ICN protocol contract
     * @param asset_ The asset token
     * @param treasuryFee_ The treasury fee
     * @param rewardIdx The index of the reward to claim
     * @return treasuryRewards - the treasury rewards
     * @return lpRewards - the LP rewards
     */
    function _claimReward(IICNProtocolMini icnp_, IERC20 asset_, uint256 treasuryFee_, uint256 rewardIdx)
        internal
        returns (uint256 treasuryRewards, uint256 lpRewards)
    {
        uint256 totalRewardsClaimed = icnp_._claimRewards(asset_, rewardIdx);

        (treasuryRewards, lpRewards) = _calcRewardSplit(totalRewardsClaimed, treasuryFee_);

        emit ClaimedRewards(rewardIdx, totalRewardsClaimed);
    }

    /**
     * @dev Initializes a reward claim for the given user delegation index and node delegation index
     * @param icnp_ The ICN protocol contract
     * @param userDelegationIndex The index of the user delegation
     * @param nodeDelegationIndex The index of the node delegation
     * @param unclaimedRewards The unclaimed rewards for the given user delegation index and node delegation index
     * @param treasuryFeePercentage The treasury fee percentage
     * @return lpRewards The LP rewards
     */
    function _initializeRewardClaim(
        IICNProtocolMini icnp_,
        uint256 userDelegationIndex,
        uint256 nodeDelegationIndex,
        uint256 unclaimedRewards,
        uint256 treasuryFeePercentage
    ) internal returns (uint256 lpRewards) {
        (, lpRewards) = _calcRewardSplit(unclaimedRewards, treasuryFeePercentage);

        icnp_.initiateDelegationRewardsClaim(userDelegationIndex, nodeDelegationIndex);

        emit InitializedRewardClaim(userDelegationIndex, nodeDelegationIndex, unclaimedRewards);
    }

    /**
     * @dev Calculates the reward split between the treasury and the LP for a given amount
     * @param unclaimedRewards The unclaimed rewards
     * @param treasuryFeePercentage The treasury fee percentage
     * @return treasuryRewards The treasury rewards
     * @return lpRewards The LP rewards
     */
    function _calcRewardSplit(uint256 unclaimedRewards, uint256 treasuryFeePercentage)
        internal
        pure
        returns (uint256 treasuryRewards, uint256 lpRewards)
    {
        treasuryRewards = unclaimedRewards.mulWadDown(treasuryFeePercentage);
        lpRewards = unclaimedRewards - treasuryRewards;
    }

    // The following functions are overrides required by Solidity.
    function _update(address from, address to, uint256 value) internal override (ERC20Upgradeable) whenNotPaused {
        super._update(from, to, value);
    }

    /*//////////////////////////////////////////////////////////////
                          STORAGE VIEW GETTERS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IPool
    function icnp() external view returns (IICNProtocolMini) {
        PoolStorage storage $ = _getStorage();
        return $.icnp;
    }

    /// @inheritdoc IPool
    function asset() external view virtual returns (address) {
        PoolStorage storage $ = _getStorage();
        return address($.asset);
    }

    /// @inheritdoc IPool
    function rewardHandler() external view returns (address) {
        PoolStorage storage $ = _getStorage();
        return address($.rewardHandler);
    }

    /// @inheritdoc IPool
    function portfolioConfig() external view returns (IPool.VaultConfig[] memory) {
        PoolStorage storage $ = _getStorage();
        return $.portfolioConfig;
    }

    /// @inheritdoc IPool
    function scalarNodeIDs() external view returns (uint256[] memory) {
        PoolStorage storage $ = _getStorage();
        return $.scalarNodeIDs;
    }

    /// @inheritdoc IPool
    function treasury() external view returns (address) {
        PoolStorage storage $ = _getStorage();
        return $.treasury;
    }

    /// @inheritdoc IPool
    function totalPositions() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $._totalPositions;
    }

    /// @inheritdoc IPool
    function totalOutstandingRewardClaims() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $._totalOutstandingRewardClaims;
    }

    /// @inheritdoc IPool
    function maxOutstandingRewardClaims() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $.maxOutstandingRewardClaims;
    }

    /// @inheritdoc IPool
    function minPortfolioDelegationSize() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $.minPortfolioDelegationSize;
    }

    /// @inheritdoc IPool
    function maxPortfolioDelegationSize() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $.maxPortfolioDelegationSize;
    }

    /// @inheritdoc IPool
    function triggerInitiateRewardClaimAbs() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $.triggerInitiateRewardClaimAbs;
    }

    /// @inheritdoc IPool
    function delegatedAssets() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $._delegatedAssets;
    }

    /// @inheritdoc IPool
    function pendingLPRewards() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $._pendingLPRewards;
    }

    /// @inheritdoc IPool
    function claimedLPRewards() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $._claimedLPRewards;
    }

    /// @inheritdoc IPool
    function emergencyWithdrawnAssets() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $._emergencyWithdrawnAssets;
    }

    /// @inheritdoc IPool
    function lastTimeStampCheckpoint() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $._lastTimeStampCheckpoint;
    }

    /// @inheritdoc IPool
    function delegationThrottleSeconds() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $.delegationThrottleSeconds;
    }

    /// @inheritdoc IPool
    function treasuryFee() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $.treasuryFee;
    }

    /// @inheritdoc IPool
    function restakePercentage() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $.restakePercentage;
    }

    /// @inheritdoc IPool
    function nextNodeIndexToDelegateTo() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $._nextNodeIndexToDelegateTo;
    }

    /// @inheritdoc IPool
    function totalPortfolioWeight() external view returns (uint256) {
        PoolStorage storage $ = _getStorage();
        return $._totalPortfolioWeight;
    }

    /// @inheritdoc IPool
    function version() external pure returns (uint64) {
        return 1;
    }

    /*//////////////////////////////////////////////////////////////
                          OWNER METHODS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IPool
    function setIcnp(IICNProtocolMini newIcnp) external onlyOwner {
        if (address(newIcnp) == address(0)) revert InvalidParams();
        PoolStorage storage $ = _getStorage();
        address oldIcnp = address($.icnp);
        $.icnp = newIcnp;
        emit IcnpUpdated(oldIcnp, address(newIcnp));
    }

    /// @inheritdoc IPool
    function setRewardHandler(IRewardHandler newRewardHandler) external onlyOwner {
        PoolStorage storage $ = _getStorage();
        address oldRewardHandler = address($.rewardHandler);
        $.rewardHandler = newRewardHandler;
        emit RewardHandlerUpdated(oldRewardHandler, address(newRewardHandler));
    }

    /// @inheritdoc IPool
    function setTreasury(address newTreasury) external onlyOwner {
        if (newTreasury == address(0)) revert InvalidParams();
        PoolStorage storage $ = _getStorage();
        address oldTreasury = $.treasury;
        $.treasury = newTreasury;
        emit TreasuryUpdated(oldTreasury, newTreasury);
    }

    /// @inheritdoc IPool
    function setPortfolioConfig(VaultConfig[] memory newPortfolioConfig) external onlyOwner {
        _setPortfolioConfig(newPortfolioConfig);
    }

    function _setPortfolioConfig(VaultConfig[] memory newPortfolioConfig) internal {
        if (newPortfolioConfig.length == 0) revert InvalidParams();
        PoolStorage storage $ = _getStorage();

        if (newPortfolioConfig.length > $.scalarNodeIDs.length) {
            revert InvalidParams();
        }

        uint256 oldTotalWeight = $._totalPortfolioWeight;
        uint256 oldConfigLength = $.portfolioConfig.length;

        // clear the existing portfolio config
        delete $.portfolioConfig;

        uint256 totalWeight = 0;
        for (uint256 i = 0; i < newPortfolioConfig.length; i++) {
            totalWeight += newPortfolioConfig[i].weight;
            $.portfolioConfig.push(newPortfolioConfig[i]);
        }

        if (totalWeight == 0) revert InvalidParams();

        $._totalPortfolioWeight = totalWeight;
        emit PortfolioConfigUpdated(oldTotalWeight, totalWeight, oldConfigLength, newPortfolioConfig.length);
    }

    /// @notice Updates the scalar node IDs
    /// @param newScalarNodeIDs The new scalar node IDs array
    function setScalarNodeIDs(uint256[] memory newScalarNodeIDs) external onlyOwner {
        if (newScalarNodeIDs.length == 0) revert InvalidParams();
        PoolStorage storage $ = _getStorage();

        if (newScalarNodeIDs.length < $.portfolioConfig.length) {
            revert InvalidParams();
        }

        uint256 oldNodeCount = $.scalarNodeIDs.length;
        $.scalarNodeIDs = newScalarNodeIDs;
        $._nextNodeIndexToDelegateTo = 0;
        emit ScalarNodeIDsUpdated(oldNodeCount, newScalarNodeIDs.length);
    }

    /// @inheritdoc IPool
    function setMinPortfolioDelegationSize(uint256 newMinPortfolioDelegationSize) external onlyOwner {
        PoolStorage storage $ = _getStorage();
        uint256 oldMinSize = $.minPortfolioDelegationSize;
        $.minPortfolioDelegationSize = newMinPortfolioDelegationSize;
        emit MinPortfolioDelegationSizeUpdated(oldMinSize, newMinPortfolioDelegationSize);
    }

    /// @inheritdoc IPool
    function setMaxPortfolioDelegationSize(uint256 newMaxPortfolioDelegationSize) external onlyOwner {
        if (newMaxPortfolioDelegationSize == 0) revert InvalidParams();
        PoolStorage storage $ = _getStorage();
        uint256 oldMaxSize = $.maxPortfolioDelegationSize;
        $.maxPortfolioDelegationSize = newMaxPortfolioDelegationSize;
        emit MaxPortfolioDelegationSizeUpdated(oldMaxSize, newMaxPortfolioDelegationSize);
    }

    /// @inheritdoc IPool
    function setDelegationThrottleSeconds(uint256 newDelegationThrottleSeconds) external onlyOwner {
        PoolStorage storage $ = _getStorage();
        uint256 oldThrottleSeconds = $.delegationThrottleSeconds;
        $.delegationThrottleSeconds = newDelegationThrottleSeconds;
        emit DelegationThrottleSecondsUpdated(oldThrottleSeconds, newDelegationThrottleSeconds);
    }

    /// @inheritdoc IPool
    function setTriggerInitiateRewardClaimAbs(uint256 newTriggerInitiateRewardClaimAbs) external onlyOwner {
        PoolStorage storage $ = _getStorage();
        uint256 oldTriggerValue = $.triggerInitiateRewardClaimAbs;
        $.triggerInitiateRewardClaimAbs = newTriggerInitiateRewardClaimAbs;
        emit TriggerInitiateRewardClaimAbsUpdated(oldTriggerValue, newTriggerInitiateRewardClaimAbs);
    }

    /// @inheritdoc IPool
    function setMaxOutstandingRewardClaims(uint256 newMaxOutstandingRewardClaims) external onlyOwner {
        if (newMaxOutstandingRewardClaims == 0) revert InvalidParams();
        PoolStorage storage $ = _getStorage();
        uint256 oldMaxClaims = $.maxOutstandingRewardClaims;
        $.maxOutstandingRewardClaims = newMaxOutstandingRewardClaims;
        emit MaxOutstandingRewardClaimsUpdated(oldMaxClaims, newMaxOutstandingRewardClaims);
    }

    /// @inheritdoc IPool
    function setRestakePercentage(uint256 newRestakePercentage) external onlyOwner {
        if (newRestakePercentage > 1e18) revert InvalidParams();
        PoolStorage storage $ = _getStorage();
        uint256 oldRestakePercentage = $.restakePercentage;
        $.restakePercentage = newRestakePercentage;
        emit RestakePercentageUpdated(oldRestakePercentage, newRestakePercentage);
    }

    /// @inheritdoc IPool
    function setTreasuryFee(uint256 newTreasuryFee) external onlyOwner {
        if (newTreasuryFee > 1e18) revert InvalidParams();
        PoolStorage storage $ = _getStorage();
        if ($._totalOutstandingRewardClaims > 0) revert OutstandingRewardClaims();

        uint256 oldTreasuryFee = $.treasuryFee;
        $.treasuryFee = newTreasuryFee;
        emit TreasuryFeeUpdated(oldTreasuryFee, newTreasuryFee);
    }

    /*//////////////////////////////////////////////////////////////
                         ADMIN/EMERGENCY METHODS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IPool
    function undelegateCollateral(DelegationPosition[] calldata positions) external onlyOwner {
        PoolStorage storage $ = _getStorage();
        IICNProtocolMini icnp_ = $.icnp;
        uint256 treasuryFee_ = $.treasuryFee;

        // vars saved outside the loop to save on stack space
        DelegationPosition memory position;
        uint256 lpRewardsTotal;
        uint256 addtlRewardClaimsTotal;
        for (uint256 i = 0; i < positions.length; i++) {
            position = positions[i];

            // get the unclaimed rewards to see if this will trigger another reward claim
            uint256 unclaimedRewards =
                icnp_.unclaimedDelegationRewards(address(this), position.userDelegationIndex, position.nodeDelegationIndex);
            if (unclaimedRewards > 0) {
                (, uint256 lpRewards) = _calcRewardSplit(unclaimedRewards, treasuryFee_);
                lpRewardsTotal += lpRewards;
                addtlRewardClaimsTotal++;

                emit InitializedRewardClaim(position.userDelegationIndex, position.nodeDelegationIndex, unclaimedRewards);
            }

            icnp_.undelegateCollateral(position.userDelegationIndex, position.nodeDelegationIndex);

            emit UndelegatedCollateral(position.userDelegationIndex, position.nodeDelegationIndex, unclaimedRewards);
        }

        $._pendingLPRewards += lpRewardsTotal;
        $._totalOutstandingRewardClaims += addtlRewardClaimsTotal;
    }

    /// @inheritdoc IPool
    function delegateLockedTokens(DelegationPosition[] calldata positions, uint256[] calldata delegateToNodeIds)
        external
        onlyOwner
    {
        if (positions.length != delegateToNodeIds.length) {
            revert InvalidParams();
        }

        PoolStorage storage $ = _getStorage();
        IICNProtocolMini icnp_ = $.icnp;

        DelegationPosition memory position;
        uint256 nodeId;
        uint256 availableLockedTokens;
        for (uint256 i = 0; i < positions.length; i++) {
            position = positions[i];
            nodeId = delegateToNodeIds[i];

            icnp_.reclaimUndelegatedCollateral(position.userDelegationIndex, position.nodeDelegationIndex);

            availableLockedTokens = icnp_.getDelegation(address(this), position.userDelegationIndex).availableLockedTokens;

            icnp_.delegateLockedCollateral(delegateToNodeIds[i], availableLockedTokens, position.userDelegationIndex);

            emit DelegateLockedTokens(
                position.userDelegationIndex, delegateToNodeIds[i], position.nodeDelegationIndex, availableLockedTokens
            );
        }
    }

    /// @inheritdoc IPool
    function withdrawUnlockedDelegatedTokens(DelegationPosition[] calldata positions) external onlyOwner {
        PoolStorage storage $ = _getStorage();
        IICNProtocolMini icnp_ = $.icnp;

        if ($._totalPositions < positions.length) {
            revert InvalidParams();
        }

        $._totalPositions -= positions.length;

        DelegationPosition memory position;
        uint256 undelegatedAssetsTotal;
        uint256 availableLockedTokens;
        // here we loop backwards because the underlying lib uses pop and replace strategy,
        // so it's important that we keep indexes in place before reclaiming them to maintain precision in which index we reclaim
        // its not dangerous if we end up reclaiming the wrong index, as it requires the position to already have been undelegated first
        // however, this can result in errors
        for (uint256 i = positions.length; i > 0; i--) {
            position = positions[i - 1];
            // shift the tokens in the userDelegationIndex to become "availableLockedTokens"
            icnp_.reclaimUndelegatedCollateral(position.userDelegationIndex, position.nodeDelegationIndex);

            availableLockedTokens = icnp_.getDelegation(address(this), position.userDelegationIndex).availableLockedTokens;

            undelegatedAssetsTotal += availableLockedTokens;
            // withdraw the unlocked tokens back to this contract
            icnp_.withdrawUnlockedDelegatedTokens(position.userDelegationIndex, availableLockedTokens);

            emit ReclaimedUndelegatedCollateral(position.userDelegationIndex, position.nodeDelegationIndex, availableLockedTokens);
        }
        // decrement the delegated assets by the amount of unlocked tokens
        $._delegatedAssets -= undelegatedAssetsTotal;
    }

    /// @notice Pauses the contract
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpauses the contract
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @inheritdoc IPool
    function emergencyWithdraw() external onlyOwner whenPaused {
        PoolStorage storage $ = _getStorage();
        IERC20 asset_ = $.asset;
        uint256 balance = asset_.balanceOf(address(this));
        $._emergencyWithdrawnAssets += balance;
        asset_.safeTransfer(owner(), balance);

        emit EmergencyWithdrawal(balance);
    }
}
