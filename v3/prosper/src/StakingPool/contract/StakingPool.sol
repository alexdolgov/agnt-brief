// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.25;

import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { SafeERC20 } from "@oz/token/ERC20/utils/SafeERC20.sol";
import { MerkleProof } from "@oz/utils/cryptography/MerkleProof.sol";
import { Math } from "@oz/utils/math/Math.sol";

import { AccessControlUpgradeable } from
    "@oz-upgradeable/access/AccessControlUpgradeable.sol";
import { ERC20Upgradeable } from
    "@oz-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { PausableUpgradeable } from
    "@oz-upgradeable/utils/PausableUpgradeable.sol";
import { UUPSUpgradeable } from
    "@oz-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import { IStakingPool } from "./interfaces/IStakingPool.sol";
import { StakingPoolStorage as Storage } from
    "./storage/StakingPoolStorage.sol";
import { Release, RewardData, UserData } from "./types/Types.sol";

contract StakingPool is
    IStakingPool,
    ERC20Upgradeable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    PausableUpgradeable
{
    using SafeERC20 for IERC20;
    using Math for uint256;

    /// @dev role which can provide rewards
    bytes32 public constant REWARD_PROVIDER_ROLE =
        keccak256("REWARD_PROVIDER_ROLE");
    /// @dev role which can change core staking parameters and upgrade the contract
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");
    /// @dev role which can update whitelist root
    bytes32 public constant WHITELIST_ROOT_SETTER_ROLE =
        keccak256("WHITELIST_ROOT_SETTER_ROLE");

    /// @dev address of the staked token
    address public immutable STAKE_TOKEN;
    /// @dev address of the reward token
    address public immutable REWARD_TOKEN;

    /// @dev value used to scale up/down for precision
    uint256 public constant SCALE = 10 ** 36;
    /// @dev value used to calculate percentages
    uint256 public constant BASIS_POINTS = 10000;

    constructor(
        address stakeTokenAddress,
        address rewardTokenAddress
    ) {
        if (
            stakeTokenAddress == address(0)
                || rewardTokenAddress == address(0)
        ) {
            revert Invalid_ZeroAddress();
        }
        if (stakeTokenAddress == rewardTokenAddress) {
            revert StakeAndRewardTokensIdentical();
        }
        _disableInitializers();
        STAKE_TOKEN = stakeTokenAddress;
        REWARD_TOKEN = rewardTokenAddress;
    }

    /// @inheritdoc UUPSUpgradeable
    function _authorizeUpgrade(address)
        internal
        override
        onlyRole(MANAGER_ROLE)
    { }

    /// @inheritdoc IStakingPool
    function __StakingPool_init(
        address admin,
        address feeWallet,
        address treasury,
        uint256 protocolFeeBP,
        string memory name,
        string memory symbol
    ) external initializer {
        if (feeWallet == address(0)) {
            revert Invalid_ZeroAddress();
        }
        if (treasury == address(0)) {
            revert Invalid_ZeroAddress();
        }
        _enforceBasis(protocolFeeBP);
        __ERC20_init(name, symbol);
        __Pausable_init();
        _grantRole(DEFAULT_ADMIN_ROLE, admin);

        Storage.Layout storage $ = Storage.layout();

        $.lastSupplyUpdate = block.timestamp;
        $.feeWallet = feeWallet;
        $.treasury = treasury;
        $.protocolFeeBP = protocolFeeBP;
        $.rewards.push(
            RewardData({
                timestamp: block.timestamp,
                scaledRate: 0,
                globalTS: 0
            })
        );
    }

    /// @inheritdoc IStakingPool
    function claim(bytes32[] memory proof) external whenNotPaused {
        Storage.Layout storage $ = Storage.layout();
        if ($.isWhitelistActive) {
            if (
                !MerkleProof.verify(
                    proof,
                    $.whitelistRoot,
                    keccak256(abi.encodePacked(_msgSender()))
                )
            ) {
                revert Claim__NotWhitelisted();
            }
        }

        _accrueRewards(_msgSender());

        UserData storage data = $.userData[_msgSender()];

        // calculate amount of rewards to transfer
        uint256 claimed = data.accruedRewards - data.claimedRewards;
        data.claimedRewards = data.accruedRewards;

        IERC20(REWARD_TOKEN).safeTransfer(_msgSender(), claimed);

        emit Claimed(_msgSender(), claimed);
    }

    /// @inheritdoc IStakingPool
    function claimReleases()
        external
        whenNotPaused
        returns (uint256 amount)
    {
        Storage.Layout storage $ = Storage.layout();

        uint256 lastReleaseIndex =
            $.userData[_msgSender()].lastReleaseIndex;
        Release[] memory releases = $.userReleases[_msgSender()];
        Release memory release;

        while (lastReleaseIndex < releases.length) {
            release = releases[lastReleaseIndex];

            if (release.releaseTime > block.timestamp) {
                break;
            }

            amount += release.amount;

            ++lastReleaseIndex;
        }

        $.userData[_msgSender()].lastReleaseIndex = lastReleaseIndex;

        IERC20(STAKE_TOKEN).safeTransfer(_msgSender(), amount);

        emit ClaimedReleases(_msgSender(), amount);
    }

    /// @inheritdoc IStakingPool
    function claimReleases(uint256 releasesToClaim)
        external
        returns (uint256 amount)
    {
        Storage.Layout storage $ = Storage.layout();

        uint256 lastReleaseIndex =
            $.userData[_msgSender()].lastReleaseIndex;

        uint256 finalIndex = lastReleaseIndex + releasesToClaim;
        Release[] memory releases = $.userReleases[_msgSender()];
        Release memory release;

        if (finalIndex > releases.length) {
            finalIndex = releases.length;
        }

        while (lastReleaseIndex < finalIndex) {
            release = releases[lastReleaseIndex];

            if (release.releaseTime > block.timestamp) {
                break;
            }

            ++lastReleaseIndex;

            amount += release.amount;
        }

        $.userData[_msgSender()].lastReleaseIndex = lastReleaseIndex;

        IERC20(STAKE_TOKEN).safeTransfer(_msgSender(), amount);

        emit ClaimedReleases(_msgSender(), amount);
    }

    /// @inheritdoc IStakingPool
    function pause() external whenNotPaused onlyRole(MANAGER_ROLE) {
        _pause();
    }

    /// @inheritdoc IStakingPool
    function provideRewards(uint256 amount)
        external
        whenNotPaused
        onlyRole(REWARD_PROVIDER_ROLE)
    {
        if (amount == 0) {
            revert ProvideRewards__ZeroAmount();
        }

        Storage.Layout storage $ = Storage.layout();

        _updateGlobalTS();

        uint256 rewardedTS =
            $.globalTS - $.rewards[$.rewards.length - 1].globalTS;

        if (rewardedTS == 0) {
            revert ProvideRewards__ZeroRewardedTS();
        }

        amount = _partitionRewards(amount);

        uint256 scaledRate = amount.mulDiv(SCALE, rewardedTS);

        $.rewards.push(
            RewardData({
                timestamp: block.timestamp,
                scaledRate: scaledRate,
                globalTS: $.globalTS
            })
        );

        IERC20(REWARD_TOKEN).safeTransferFrom(
            _msgSender(), address(this), amount
        );

        emit RewardsProvided(amount);
    }

    /// @inheritdoc IStakingPool
    function setFeeWallet(address feeWallet)
        external
        onlyRole(MANAGER_ROLE)
    {
        if (feeWallet == address(0)) {
            revert Invalid_ZeroAddress();
        }

        Storage.layout().feeWallet = feeWallet;

        emit FeeWalletSet(feeWallet);
    }

    /// @inheritdoc IStakingPool
    function setProtocolFeeBP(uint256 feeBP)
        external
        onlyRole(MANAGER_ROLE)
    {
        _enforceBasis(feeBP);

        Storage.layout().protocolFeeBP = feeBP;

        emit ProtocolFeeSet(feeBP);
    }

    /// @inheritdoc IStakingPool
    function setStakerShareBP(uint256 shareBP)
        external
        onlyRole(MANAGER_ROLE)
    {
        _enforceBasis(shareBP);

        Storage.layout().stakerShareBP = shareBP;

        emit StakerShareSet(shareBP);
    }

    /// @inheritdoc IStakingPool
    function setTreasury(address treasury)
        external
        onlyRole(MANAGER_ROLE)
    {
        if (treasury == address(0)) {
            revert Invalid_ZeroAddress();
        }
        Storage.layout().treasury = treasury;

        emit TreasurySet(treasury);
    }

    /// @inheritdoc IStakingPool
    function setUnbondingDuration(uint256 duration)
        external
        onlyRole(MANAGER_ROLE)
    {
        Storage.layout().unbondingDuration = duration;

        emit UnbondingDurationSet(duration);
    }

    /// @inheritdoc IStakingPool
    function setWhitelistRoot(bytes32 root)
        external
        onlyRole(WHITELIST_ROOT_SETTER_ROLE)
    {
        Storage.layout().whitelistRoot = root;

        emit WhitelistRootSet(root);
    }

    /// @inheritdoc IStakingPool
    function setWhitelistStatus(bool status)
        external
        onlyRole(MANAGER_ROLE)
    {
        Storage.layout().isWhitelistActive = status;
        emit WhitelistStatusSet(status);
    }

    /// @inheritdoc IStakingPool
    function stake(
        address onBehalfOf,
        uint256 amount,
        bytes32[] memory proof
    ) external whenNotPaused {
        Storage.Layout storage $ = Storage.layout();

        if (amount == 0) {
            revert Stake__ZeroAmount();
        }

        if ($.isWhitelistActive) {
            if (
                !MerkleProof.verify(
                    proof,
                    $.whitelistRoot,
                    keccak256(abi.encodePacked(onBehalfOf))
                )
            ) {
                revert Stake__NotWhitelisted();
            }
        }

        IERC20(STAKE_TOKEN).safeTransferFrom(
            _msgSender(), address(this), amount
        );

        _mint(onBehalfOf, amount);

        emit Staked(_msgSender(), onBehalfOf, amount);
    }

    /// @inheritdoc IStakingPool
    function unpause() external whenPaused onlyRole(MANAGER_ROLE) {
        _unpause();
    }

    /// @inheritdoc IStakingPool
    function unstake(uint256 amount) external whenNotPaused {
        _burn(_msgSender(), amount);

        Storage.Layout storage $ = Storage.layout();

        /// it is known that if users unstake multiple times in a single block
        /// they will be assigned the same release time but more than one release
        /// this is problematic mainly for protocols and it is known;
        /// this pool is not designed for protocols and should not integrated with
        if ($.unbondingDuration > 0) {
            $.userReleases[_msgSender()].push(
                Release({
                    amount: amount,
                    releaseTime: block.timestamp + $.unbondingDuration
                })
            );
        } else {
            IERC20(STAKE_TOKEN).safeTransfer(_msgSender(), amount);
        }

        emit Unstaked(_msgSender(), amount);
    }

    function getBoundReleaseAmount(address account)
        external
        view
        returns (uint256 amount)
    {
        Release[] memory releases = _getBoundReleases(account);

        for (uint256 i; i < releases.length; ++i) {
            amount += releases[i].amount;
        }
    }

    /// @inheritdoc IStakingPool
    function getBoundReleases(address account)
        external
        view
        returns (Release[] memory releases)
    {
        releases = _getBoundReleases(account);
    }

    function getClaimableReleaseAmount(address account)
        external
        view
        returns (uint256 amount)
    {
        Release[] memory releases = _getClaimableReleases(account);

        for (uint256 i; i < releases.length; ++i) {
            amount += releases[i].amount;
        }
    }

    /// @inheritdoc IStakingPool
    function getClaimableReleases(address account)
        external
        view
        returns (Release[] memory releases)
    {
        releases = _getClaimableReleases(account);
    }

    /// @inheritdoc IStakingPool
    function getFeeWallet()
        external
        view
        returns (address feeWallet)
    {
        feeWallet = Storage.layout().feeWallet;
    }

    /// @inheritdoc IStakingPool
    function getGlobalTS()
        external
        view
        returns (uint256 timestamp)
    {
        timestamp = Storage.layout().globalTS;
    }

    /// @inheritdoc IStakingPool
    function getLatestRewardIndex()
        external
        view
        returns (uint256 index)
    {
        index = Storage.layout().rewards.length - 1;
    }
    /// @inheritdoc IStakingPool

    function getProtocolFeeBP()
        external
        view
        returns (uint256 feeBP)
    {
        feeBP = Storage.layout().protocolFeeBP;
    }

    /// @inheritdoc IStakingPool
    function getReward(uint256 index)
        external
        view
        returns (RewardData memory data)
    {
        data = Storage.layout().rewards[index];
    }

    function getRewards()
        external
        view
        returns (RewardData[] memory rewards)
    {
        rewards = Storage.layout().rewards;
    }

    /// @inheritdoc IStakingPool
    function getStakerShareBP()
        external
        view
        returns (uint256 shareBP)
    {
        shareBP = Storage.layout().stakerShareBP;
    }

    /// @inheritdoc IStakingPool
    function getTreasury() external view returns (address treasury) {
        treasury = Storage.layout().treasury;
    }

    /// @inheritdoc IStakingPool
    function getUnbondingDuration()
        external
        view
        returns (uint256 duration)
    {
        duration = Storage.layout().unbondingDuration;
    }

    /// @inheritdoc IStakingPool
    function getUpdatedGlobalTS()
        external
        view
        returns (uint256 globalTS)
    {
        globalTS = totalSupply()
            * (block.timestamp - Storage.layout().lastSupplyUpdate);
    }

    /// @inheritdoc IStakingPool
    function getUpdatedUserData(address account)
        external
        view
        returns (UserData memory updatedData)
    {
        Storage.Layout storage $ = Storage.layout();
        UserData memory data = $.userData[account];

        uint256 currentIndex = $.rewards.length - 1;
        uint256 lastIndex = data.lastIndex;
        uint256 balance = balanceOf(account);

        RewardData memory rewardData;
        uint256 accruedTS;
        while (lastIndex != currentIndex) {
            ++lastIndex;

            rewardData = $.rewards[lastIndex];

            uint256 elapsed = rewardData.timestamp - data.lastUpdate;

            accruedTS = balance * elapsed;
            data.accruedTS += accruedTS;

            if (
                rewardData.scaledRate != 0
                    && data.accruedTS > data.deductionTS
            ) {
                data.accruedRewards += (
                    data.accruedTS - data.deductionTS
                ).mulDiv(rewardData.scaledRate, SCALE);
                data.deductionTS = data.accruedTS;
            }
            data.lastUpdate = rewardData.timestamp;
            data.lastIndex = lastIndex;
        }

        data.accruedTS +=
            balanceOf(account) * (block.timestamp - data.lastUpdate);
        data.lastUpdate = block.timestamp;
        updatedData = data;
    }

    /// @inheritdoc IStakingPool
    function getUserData(address account)
        external
        view
        returns (UserData memory data)
    {
        data = Storage.layout().userData[account];
    }

    /// @inheritdoc IStakingPool
    function getUserRewards(address account)
        external
        view
        returns (uint256 rewards)
    {
        Storage.Layout storage $ = Storage.layout();
        UserData memory data = $.userData[account];

        uint256 currentIndex = $.rewards.length - 1;
        uint256 lastIndex = data.lastIndex;
        uint256 balance = balanceOf(account);

        RewardData memory rewardData;
        uint256 accruedTS;
        while (lastIndex != currentIndex) {
            ++lastIndex;
            rewardData = $.rewards[lastIndex];

            uint256 elapsed = rewardData.timestamp - data.lastUpdate;

            accruedTS = balance * elapsed;
            data.accruedTS += accruedTS;

            if (data.accruedTS > data.deductionTS) {
                data.accruedRewards += (
                    data.accruedTS - data.deductionTS
                ).mulDiv(rewardData.scaledRate, SCALE);
                data.deductionTS = data.accruedTS;
            }
            data.lastUpdate = rewardData.timestamp;
            data.lastIndex = lastIndex;
        }

        rewards = data.accruedRewards - data.claimedRewards;
    }

    /// @inheritdoc IStakingPool
    function getWhitelistRoot()
        external
        view
        returns (bytes32 root)
    {
        root = Storage.layout().whitelistRoot;
    }

    /// @inheritdoc IStakingPool
    function getWhitelistStatus()
        external
        view
        returns (bool status)
    {
        status = Storage.layout().isWhitelistActive;
    }

    /// @notice Partitions rewards into protocol fees, staker rewards, and treasury allocation
    /// @param amount REWARD_TOKEN amount given as rewards
    /// @return stakerRewards amount of REWARD_TOKEN given to stakers
    function _partitionRewards(uint256 amount)
        internal
        returns (uint256 stakerRewards)
    {
        Storage.Layout storage $ = Storage.layout();

        uint256 fee = amount.mulDiv($.protocolFeeBP, BASIS_POINTS);
        amount -= fee;

        stakerRewards = amount.mulDiv($.stakerShareBP, BASIS_POINTS);

        IERC20(REWARD_TOKEN).safeTransferFrom(
            _msgSender(), $.feeWallet, fee
        );
        IERC20(REWARD_TOKEN).safeTransferFrom(
            _msgSender(), $.treasury, amount - stakerRewards
        );
    }

    /// NOTE: this may lead to OOG if user has been idle for a long time
    /// @notice accrues rewards for a user
    /// @param account address of user
    function _accrueRewards(address account) internal {
        Storage.Layout storage $ = Storage.layout();
        UserData memory data = $.userData[account];

        uint256 currentIndex = $.rewards.length - 1;
        uint256 lastIndex = data.lastIndex;
        uint256 balance = balanceOf(account);

        RewardData memory rewardData;
        uint256 accruedTS;
        while (lastIndex != currentIndex) {
            ++lastIndex;
            rewardData = $.rewards[lastIndex];

            uint256 elapsed = rewardData.timestamp - data.lastUpdate;

            accruedTS = balance * elapsed;
            data.accruedTS += accruedTS;

            if (data.accruedTS > data.deductionTS) {
                data.accruedRewards += (
                    data.accruedTS - data.deductionTS
                ).mulDiv(rewardData.scaledRate, SCALE);
                data.deductionTS = data.accruedTS;
            }
            data.lastUpdate = rewardData.timestamp;
            data.lastIndex = lastIndex;
        }

        $.userData[account] = data;
        _updateAccountTS(account);
    }

    /// @notice updates global token seconds
    function _updateGlobalTS() internal {
        Storage.Layout storage $ = Storage.layout();

        $.globalTS +=
            totalSupply() * (block.timestamp - $.lastSupplyUpdate);
        $.lastSupplyUpdate = block.timestamp;
    }

    /// @notice updates staked token seconds for a user
    /// @param account address of user
    function _updateAccountTS(address account) internal {
        UserData storage data = Storage.layout().userData[account];

        data.accruedTS +=
            balanceOf(account) * (block.timestamp - data.lastUpdate);
        data.lastUpdate = block.timestamp;
    }

    /// @inheritdoc ERC20Upgradeable
    /// @dev override internal function to update account states of senders and receivers if necessary
    function _update(address from, address to, uint256 value)
        internal
        virtual
        override
    {
        if (from == to) {
            revert Update__SelfUpdate();
        }

        if (from != address(0) || to != address(0)) {
            _updateGlobalTS();
        }

        if (from != address(0)) {
            _accrueRewards(from);
        }

        if (to != address(0)) {
            Storage.Layout storage $ = Storage.layout();

            // check if this is the first time user is receiving tokens
            // if so, set lastIndex to the last reward index to avoid
            // accruing rewards from all existing previous rewards
            if ($.userData[to].lastIndex == 0 && balanceOf(to) == 0) {
                $.userData[to].lastIndex = $.rewards.length - 1;
            }

            _accrueRewards(to);
        }

        super._update(from, to, value);
    }

    /// @notice returns all bound releases for a user
    /// @param account address of user
    /// @return releases array of bound releases
    function _getBoundReleases(address account)
        internal
        view
        returns (Release[] memory releases)
    {
        Storage.Layout storage $ = Storage.layout();

        Release[] memory rawReleases = $.userReleases[account];

        if (
            rawReleases.length == 0
                || rawReleases[rawReleases.length - 1].releaseTime
                    < block.timestamp
        ) {
            return releases;
        }

        uint256 startIndex = _getFirstBoundReleaseIndex(account);
        uint256 size = rawReleases.length - startIndex;

        Release[] memory processedReleases = new Release[](size);

        for (uint256 i; i < size; ++i) {
            processedReleases[i] = rawReleases[startIndex + i];
        }

        releases = processedReleases;
    }

    /// @notice returns all claimable releases for a user
    /// @param account address of user
    /// @return releases array of claimable releases
    function _getClaimableReleases(address account)
        internal
        view
        returns (Release[] memory releases)
    {
        Storage.Layout storage $ = Storage.layout();

        Release[] memory rawReleases = $.userReleases[account];

        uint256 startIndex = $.userData[account].lastReleaseIndex;

        if (
            rawReleases.length == 0
                || startIndex == rawReleases.length
                || rawReleases[startIndex].releaseTime > block.timestamp
        ) {
            return releases;
        }

        uint256 endIndex = _getFirstBoundReleaseIndex(account);

        uint256 size = endIndex - startIndex;

        Release[] memory processedReleases = new Release[](size);

        for (uint256 i; i < size; ++i) {
            processedReleases[i] = rawReleases[startIndex + i];
        }

        releases = processedReleases;
    }

    /// @notice returns the index of the first bound release for a user
    /// @param account address of user
    /// @return index index of first bound release
    function _getFirstBoundReleaseIndex(address account)
        internal
        view
        returns (uint256 index)
    {
        Storage.Layout storage $ = Storage.layout();

        Release[] memory releases = $.userReleases[account];
        index = $.userData[account].lastReleaseIndex;

        Release memory release;

        while (index < releases.length) {
            release = releases[index];
            if (release.releaseTime > block.timestamp) {
                break;
            }
            ++index;
        }
    }

    /// @notice enforces that a basis point value does not exceed BASIS_POINTS
    /// @param value value to check
    function _enforceBasis(uint256 value) internal pure {
        if (value > BASIS_POINTS) {
            revert Basis_Exceeded();
        }
    }
}
