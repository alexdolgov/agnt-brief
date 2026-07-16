// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

import {IVotingEscrow} from "./interfaces/IVotingEscrow.sol";
import {IVesting} from "./interfaces/IVesting.sol";
import {IMinter} from "./interfaces/IMinter.sol";
import {IMasterchef} from "./interfaces/IMasterchef.sol";
import {Constants} from "./libraries/Constants.sol";

contract MasterChef is Ownable, IMasterchef {
    using SafeERC20 for IERC20;

    struct UserInfo {
        uint256 amount;
        uint256 rewardDebt;
        uint256 rewardDebtExtra;
        uint256[] tokenIds;
        mapping(uint256 => uint256) tokenIndices;
    }

    /// @notice Address of reward token contract.
    IERC20 public TOKEN;
    /// @notice Address of the NFT token for each MCV2 pool.
    IERC721 public NFT;

    uint256 public constant LOCK_DURATION = 2 * 365 * 86400;
    uint256 public constant PERCENT_PRECISION = 10_000;

    uint256 public veShare;
    address public votingEscrow;
    address public vesting;

    address public minter;

    /// @notice Info of each MCV2 pool.
    PoolInfo public poolInfo;

    /// @notice Mapping from token ID to owner address
    mapping(uint256 => address) public tokenOwner;

    /// @notice Info of each user that stakes nft tokens.
    mapping(address => UserInfo) public userInfo;

    /// @notice Keeper register. Return true if 'address' is a keeper.
    mapping(address => bool) public isKeeper;

    uint256 private _totalRewards;
    uint256 private _totalRewardsExtra;

    uint256 public rewardPerSecond;
    uint256 public rewardPerSecondExtra;
    uint256 private ACC_TOKEN_PRECISION;

    uint256 public distributePeriod;
    uint256 public lastDistributedTime;
    uint256 public lastDistributedTimeExtra;

    event VeShareChanged(uint256 newValue);
    event Deposit(address indexed user, uint256[] tokenIds, address indexed to);
    event Withdraw(
        address indexed user,
        uint256[] tokenIds,
        address indexed to
    );
    event Harvest(address indexed user, uint256 amount);
    event HarvestExtra(address indexed user, uint256 amount);
    event LogUpdatePool(
        uint256 lastRewardTime,
        uint256 nftSupply,
        uint256 accRewardPerShare,
        uint256 accRewardPerShareExtra
    );
    event LogRewardPerSecond(uint256 rewardPerSecond);
    event LogRewardPerSecondExtra(uint256 rewardPerSecond);
    event EmergencyWithdraw(address indexed user, uint256[] tokenIds, address indexed to);

    modifier onlyKeeper() {
        require(msg.sender == owner() || isKeeper[msg.sender], "not keeper");
        _;
    }

    constructor(
        IERC20 _TOKEN,
        IERC721 _NFT,
        address _minter,
        address _vesting,
        address _votingEscrow,
        uint256 _veShare
    ) {
        require(_veShare <= PERCENT_PRECISION, "bad percent");

        TOKEN = _TOKEN;
        NFT = _NFT;

        veShare = _veShare;
        vesting = _vesting;
        votingEscrow = _votingEscrow;

        minter = _minter;

        distributePeriod = Constants.EPOCH_LENGTH;
        ACC_TOKEN_PRECISION = 1e12;
        poolInfo = PoolInfo({
            lastRewardTime: block.timestamp,
            accRewardPerShare: 0,
            accRewardPerShareExtra: 0
        });

        emit VeShareChanged(_veShare);
    }

    /// @notice change VE reward share
    /// @param newValue new share value
    function setVestingEscrowShare(uint256 newValue) external onlyOwner {
        require(newValue <= PERCENT_PRECISION, "bad percent");

        veShare = newValue;

        emit VeShareChanged(newValue);
    }

    /// @notice add keepers
    function addKeeper(address[] calldata _keepers) external onlyOwner {
        uint256 i = 0;
        uint256 len = _keepers.length;

        for (i; i < len; i++) {
            address _keeper = _keepers[i];
            if (!isKeeper[_keeper]) {
                isKeeper[_keeper] = true;
            }
        }
    }

    /// @notice remove keepers
    function removeKeeper(address[] calldata _keepers) external onlyOwner {
        uint256 i = 0;
        uint256 len = _keepers.length;

        for (i; i < len; i++) {
            address _keeper = _keepers[i];
            if (isKeeper[_keeper]) {
                isKeeper[_keeper] = false;
            }
        }
    }

    /// @notice Sets the reward per second to be distributed. Can only be called by the owner.
    /// @param _rewardPerSecond The amount of Reward to be distributed per second.
    function setRewardPerSecond(uint256 _rewardPerSecond) public onlyOwner {
        updatePool();
        if (lastDistributedTime > block.timestamp) {
            uint256 notDistributed = rewardPerSecond *
                (lastDistributedTime - block.timestamp);
            lastDistributedTime =
                block.timestamp +
                notDistributed /
                _rewardPerSecond;
        }
        rewardPerSecond = _rewardPerSecond;
        emit LogRewardPerSecond(_rewardPerSecond);
    }

    /// @notice Sets the extra-reward per second to be distributed. Can only be called by the owner.
    /// @param _rewardPerSecondExtra The amount of extra-Reward to be distributed per second.
    function setRewardPerSecondExtra(uint256 _rewardPerSecondExtra) public onlyOwner {
        updatePool();
        if (lastDistributedTimeExtra > block.timestamp) {
            uint256 notDistributed = rewardPerSecondExtra *
                (lastDistributedTimeExtra - block.timestamp);
            lastDistributedTimeExtra =
                block.timestamp +
                notDistributed /
                _rewardPerSecondExtra;
        }
        rewardPerSecondExtra = _rewardPerSecondExtra;
        emit LogRewardPerSecondExtra(_rewardPerSecondExtra);
    }

    /// @notice add rewards to the pool
    /// @param amount of rewards
    function setDistributionRate(uint256 amount) public onlyKeeper {
        updatePool();
        uint256 notDistributed;
        if (lastDistributedTime > 0 && block.timestamp < lastDistributedTime) {
            notDistributed =
                rewardPerSecond *
                (lastDistributedTime - block.timestamp);
        }

        amount = amount + notDistributed;
        uint256 _rewardPerSecond = amount / distributePeriod;
        rewardPerSecond = _rewardPerSecond;
        lastDistributedTime = block.timestamp + distributePeriod;
        emit LogRewardPerSecond(_rewardPerSecond);
    }

    /// @notice add extra-rewards to the pool
    /// @param amount of extra-rewards
    function setDistributionRateExtra(uint256 amount) public onlyKeeper {
        updatePool();
        uint256 notDistributed;
        if (lastDistributedTimeExtra > 0 && block.timestamp < lastDistributedTimeExtra) {
            notDistributed =
                rewardPerSecondExtra *
                (lastDistributedTimeExtra - block.timestamp);
        }

        amount = amount + notDistributed;
        uint256 _rewardPerSecondExtra = amount / distributePeriod;
        rewardPerSecondExtra = _rewardPerSecondExtra;
        lastDistributedTimeExtra = block.timestamp + distributePeriod;
        emit LogRewardPerSecondExtra(_rewardPerSecondExtra);
    }

    /// @notice View function to see pending TOKEN on frontend.
    /// @param _user Address of user.
    /// @return pending TOKEN reward for a given user.
    function pendingReward(
        address _user
    ) external view returns (uint256 pending) {
        PoolInfo memory pool = poolInfo;
        UserInfo storage user = userInfo[_user];
        uint256 accRewardPerShare = pool.accRewardPerShare;
        uint256 nftSupply = NFT.balanceOf(address(this));
        if (
            block.timestamp > pool.lastRewardTime &&
            nftSupply != 0 &&
            lastDistributedTime > 0 &&
            getRightBoarder() > pool.lastRewardTime
        ) {
            uint256 time = getRightBoarder() - pool.lastRewardTime;
            uint256 reward = time * rewardPerSecond;
            accRewardPerShare =
                accRewardPerShare +
                ((reward * ACC_TOKEN_PRECISION) / nftSupply);
        }
        uint256 accumulatedReward = 
            (user.amount * accRewardPerShare) / ACC_TOKEN_PRECISION;
        return accumulatedReward - user.rewardDebt;
    }

    /// @notice View function to see pending extra TOKEN reward on frontend.
    /// @param _user Address of user.
    /// @return pending TOKEN extra reward for a given user.
    function pendingRewardExtra(
        address _user
    ) external view returns (uint256 pending) {
        PoolInfo memory pool = poolInfo;
        UserInfo storage user = userInfo[_user];
        uint256 accRewardPerShareExtra = pool.accRewardPerShareExtra;
        uint256 nftSupply = NFT.balanceOf(address(this));
        if (
            block.timestamp > pool.lastRewardTime &&
            nftSupply != 0 &&
            lastDistributedTimeExtra > 0 &&
            getRightBoarderExtra() > pool.lastRewardTime
        ) {
            uint256 time = getRightBoarderExtra() - pool.lastRewardTime;
            uint256 reward = time * rewardPerSecondExtra;
            accRewardPerShareExtra =
                accRewardPerShareExtra +
                ((reward * ACC_TOKEN_PRECISION) / nftSupply);
        }
        uint256 accumulatedReward = 
            (user.amount * accRewardPerShareExtra) / ACC_TOKEN_PRECISION;
        return accumulatedReward - user.rewardDebtExtra;
    }

    /// @dev Check the end of period to limit rewards distribution
    function getRightBoarder() public view returns (uint256) {
        return Math.min(block.timestamp, lastDistributedTime);
    }

    /// @dev Check the end of period to limit extra rewards distribution
    function getRightBoarderExtra() public view returns (uint256) {
        return Math.min(block.timestamp, lastDistributedTimeExtra);
    }

    /// @notice View function to see TOKEN Ids on frontend.
    /// @param _user Address of user.
    /// @return tokenIds Staked Token Ids for a given user.
    function stakedTokenIds(
        address _user
    ) external view returns (uint256[] memory tokenIds) {
        tokenIds = userInfo[_user].tokenIds;
    }

    /// @notice Update reward variables of the given pool.
    /// @return pool Returns the pool that was updated.
    function updatePool() public returns (PoolInfo memory pool) {
        pool = poolInfo;
        if (block.timestamp > pool.lastRewardTime) {
            uint256 nftSupply = NFT.balanceOf(address(this));

            if (lastDistributedTime > 0) {
                uint256 rightBoarder = getRightBoarder();
                uint256 time = rightBoarder > pool.lastRewardTime
                    ? rightBoarder - pool.lastRewardTime
                    : 0;
                if (nftSupply > 0 && time > 0) {
                    uint256 reward = time * rewardPerSecond;
                    pool.accRewardPerShare =
                        pool.accRewardPerShare +
                        (reward * ACC_TOKEN_PRECISION) /
                        nftSupply;

                    _totalRewards += reward;
                } else lastDistributedTime += time;
            }

            if (lastDistributedTimeExtra > 0) {
                uint256 rightBoarder = getRightBoarderExtra();
                uint256 time = rightBoarder > pool.lastRewardTime
                    ? rightBoarder - pool.lastRewardTime
                    : 0;
                if (nftSupply > 0 && time > 0) {
                    uint256 reward = time * rewardPerSecondExtra;
                    pool.accRewardPerShareExtra =
                        pool.accRewardPerShareExtra +
                        (reward * ACC_TOKEN_PRECISION) /
                        nftSupply;

                    _totalRewardsExtra += reward;

                } else lastDistributedTimeExtra += time;
            }

            pool.lastRewardTime = block.timestamp;
            poolInfo = pool;

            emit LogUpdatePool(
                pool.lastRewardTime,
                nftSupply,
                pool.accRewardPerShare,
                pool.accRewardPerShareExtra
            );
        }
    }

    function totalRewards() external view returns(uint256) {
        uint256 rightBoarder = getRightBoarder();
        uint256 time = rightBoarder > poolInfo.lastRewardTime
            ? rightBoarder - poolInfo.lastRewardTime
            : 0;
        uint256 reward = time * rewardPerSecond;

        return _totalRewards + reward;
    }

    function totalRewardsExtra() external view returns(uint256) {
        uint256 rightBoarder = getRightBoarderExtra();
        uint256 time = rightBoarder > poolInfo.lastRewardTime
            ? rightBoarder - poolInfo.lastRewardTime
            : 0;
        uint256 reward = time * rewardPerSecondExtra;

        return _totalRewardsExtra + reward;
    }

    /// @notice Deposit nft tokens to MCV2 for token allocation.
    /// @param tokenIds NFT tokenIds to deposit.
    function deposit(uint256[] calldata tokenIds) public {
        PoolInfo memory pool = updatePool();
        UserInfo storage user = userInfo[msg.sender];

        if(user.amount > 0) {
            // calculate & transfer main rewards
            uint256 pending = user.amount * pool.accRewardPerShare / ACC_TOKEN_PRECISION - user.rewardDebt;
            if(pending > 0) TOKEN.safeTransfer(msg.sender, pending);

            // calculate & transfer extra rewards
            pending = user.amount * pool.accRewardPerShareExtra / ACC_TOKEN_PRECISION - user.rewardDebtExtra;
            _sendExtraRewards(msg.sender, pending);
        }

        // Effects
        for (uint256 i = 0; i < tokenIds.length; i++) {
            require(NFT.ownerOf(tokenIds[i]) == msg.sender, "CHEF: !NFT Owner");

            user.tokenIndices[tokenIds[i]] = user.tokenIds.length;
            user.tokenIds.push(tokenIds[i]);
            tokenOwner[tokenIds[i]] = msg.sender;

            NFT.transferFrom(msg.sender, address(this), tokenIds[i]);
        }

        user.amount = user.amount + tokenIds.length;
        user.rewardDebt = user.amount * pool.accRewardPerShare / ACC_TOKEN_PRECISION;
        user.rewardDebtExtra = user.amount * pool.accRewardPerShareExtra / ACC_TOKEN_PRECISION;

        emit Deposit(msg.sender, tokenIds, msg.sender);
    }

    /// @notice Withdraw NFT tokens from MCV2.
    /// @param tokenIds NFT token ids to withdraw.
    function withdraw(uint256[] calldata tokenIds) public {
        PoolInfo memory pool = updatePool();
        UserInfo storage user = userInfo[msg.sender];

        if(user.amount > 0) {
            // calculate & transfer main rewards
            uint256 pending = user.amount * pool.accRewardPerShare / ACC_TOKEN_PRECISION - user.rewardDebt;
            if(pending > 0) TOKEN.safeTransfer(msg.sender, pending);

            // calculate & transfer extra rewards
            pending = user.amount * pool.accRewardPerShareExtra / ACC_TOKEN_PRECISION - user.rewardDebtExtra;
            _sendExtraRewards(msg.sender, pending);
        }

        // Effects
        require(user.amount >= tokenIds.length);
        user.amount = user.amount - tokenIds.length;
        user.rewardDebt = user.amount * pool.accRewardPerShare / ACC_TOKEN_PRECISION;
        user.rewardDebtExtra = user.amount * pool.accRewardPerShareExtra / ACC_TOKEN_PRECISION;

        for (uint256 i = 0; i < tokenIds.length; i++) {
            require(tokenOwner[tokenIds[i]] == msg.sender, "CHEF: !NFT Owner");
            NFT.transferFrom(address(this), msg.sender, tokenIds[i]);
            uint256 lastTokenId = user.tokenIds[user.tokenIds.length - 1];
            user.tokenIds[user.tokenIndices[tokenIds[i]]] = lastTokenId;
            user.tokenIndices[lastTokenId] = user.tokenIndices[tokenIds[i]];
            user.tokenIds.pop();
            delete user.tokenIndices[tokenIds[i]];
            delete tokenOwner[tokenIds[i]];
        }

        emit Withdraw(msg.sender, tokenIds, msg.sender);
    }

    /// @notice Harvest proceeds for transaction sender.
    function harvest() public {
        PoolInfo memory pool = updatePool();
        UserInfo storage user = userInfo[msg.sender];
        uint256 accumulatedReward =
            (user.amount * (pool.accRewardPerShare)) / ACC_TOKEN_PRECISION;
        uint256 _pendingReward = accumulatedReward - user.rewardDebt;

        // Effects
        user.rewardDebt = accumulatedReward;

        // Interactions
        TOKEN.safeTransfer(msg.sender, _pendingReward);

        emit Harvest(msg.sender, _pendingReward);
    }

    /// @notice Harvest proceeds for transaction sender.
    function harvestExtra() public {
        PoolInfo memory pool = updatePool();
        UserInfo storage user = userInfo[msg.sender];
        uint256 accumulatedReward = 
            (user.amount * (pool.accRewardPerShareExtra)) / ACC_TOKEN_PRECISION;
        uint256 _pendingReward = accumulatedReward - user.rewardDebtExtra;

        // Effects
        user.rewardDebtExtra = accumulatedReward;

        _sendExtraRewards(msg.sender, _pendingReward);
    }

    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) external pure returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    function emergencyWithdraw() external {
        uint256[] memory tokenIds = userInfo[msg.sender].tokenIds;

        delete(userInfo[msg.sender]);

        for (uint256 i = 0; i < tokenIds.length; i++) {
            delete tokenOwner[tokenIds[i]];
            delete userInfo[msg.sender].tokenIndices[tokenIds[i]];
            NFT.transferFrom(address(this), msg.sender, tokenIds[i]);
        }

        emit EmergencyWithdraw(msg.sender, tokenIds, msg.sender);
    }

    function _sendExtraRewards(address user, uint256 pending) internal {
        // Interactions
        if (pending != 0) {
            uint256 veShareAmount = (veShare * pending) /
                PERCENT_PRECISION;
            if (veShareAmount > 0) {
                TOKEN.safeApprove(votingEscrow, 0);
                TOKEN.safeApprove(votingEscrow, veShareAmount);

                IVotingEscrow(votingEscrow).create_lock_for(
                    veShareAmount,
                    LOCK_DURATION,
                    user
                );
            }

            uint256 vestingAmount = pending - veShareAmount;
            if (vestingAmount > 0) {
                TOKEN.safeApprove(vesting, vestingAmount);

                IVesting(vesting).vestTokensFor(user, vestingAmount);
            }
        }

        emit HarvestExtra(user, pending);
    }
}
