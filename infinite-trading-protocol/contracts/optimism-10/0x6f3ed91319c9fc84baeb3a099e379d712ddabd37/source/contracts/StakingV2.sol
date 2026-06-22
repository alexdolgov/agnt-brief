// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract StakingV2 is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.UintSet;

    // Events
    event Deposit(
        address caller,
        uint256 tokenId,
        uint256 amount,
        uint256 rewards,
        uint256 initialLockTime,
        uint256 unlockTime
    );
    event Withdraw(address caller, uint256 amount);
    event EarlyWithdraw(address caller, uint256 amount, uint256 penaltyAmount);
    event ExtendLock(
        address caller,
        uint256 amount,
        uint256 rewards,
        uint256 initialLockTime,
        uint256 unlockTime
    );
    event DepositRewards(address caller, uint256 amount, uint256 rewardsLeft);
    event WithdrawRewards(address caller, uint256 amount, uint256 rewardsLeft);
    event WithdrawPenalty(address caller, uint256 amount, uint256 totalPenalty);
    event SetRewardsRateBps(address caller, uint256 bps);
    event SetPenaltyRateBps(address caller, uint256 bps);
    event BurnPenalty(
        address caller,
        uint256 amount,
        uint256 totalPenalty,
        uint256 totalBurned
    );
    event ConvertPenaltyIntoRewards(
        address caller,
        uint256 amount,
        uint256 totalPenalty,
        uint256 rewardsLeft
    );

    // Errors
    error InvalidAmount(uint256 amount);
    error InvalidEarlyWithdraw(uint256 unlockTime);
    error InvalidLockExtension(uint256 lockDuration);
    error InvalidLockMultiplier(uint256 lockMultiplier);
    error InsufficientRewards(uint256 rewardsLeft);
    error InsufficientPenalty(uint256 penalty);
    error InvalidUnlockTime(
        uint256 tokenId,
        uint256 amount,
        uint256 unlockTime
    );
    error InvalidTokenId(uint256 tokenId);
    error InvalidBps(uint256 bps);

    uint256 public constant MAX_LOCK_DURATION = 10 * 365 days;
    uint256 public constant MAX_PENALTY_RATE_BPS = 2000;

    uint256 private _tokenId;

    IERC20 public immutable stakedToken;
    uint256 public lockDuration;
    uint256 public interestRateBps = 1500; //15%
    uint256 public penaltyRateBps = 2000; //20%
    uint256 public rewardsLeft;
    uint256 public totalStaked;
    uint256 public totalPenalty;
    uint256 public totalBurned;

    // Storage

    // Mapping (user => tokenIds) to keep pool related information for each user and tokenIds
    mapping(address => EnumerableSet.UintSet) private _stakes;

    // Mapping (tokenId => StakeInfo) to keep pool related information for each tokenId
    mapping(uint256 => StakeInfo) private _stakeInfo;

    // Struct to represent a staked position
    struct StakeInfo {
        uint256 tokenId;
        uint256 depositAmount;
        uint256 rewardsAmount;
        uint256 initialLockTime;
        uint256 unlockTime;
    }

    constructor(
        address initialOwner,
        IERC20 token,
        uint256 lockTimeDuration
    ) Ownable(initialOwner) {
        stakedToken = token;
        lockDuration = lockTimeDuration;
    }

    function getStakeInfo()
        external
        view
        returns (StakeInfo[] memory stakeInfo)
    {
        uint256 length = _stakes[msg.sender].length();
        stakeInfo = new StakeInfo[](length);

        for (uint256 i = 0; i < length; i++) {
            uint256 tokenId = _stakes[msg.sender].at(i);
            stakeInfo[i] = _stakeInfo[tokenId];
        }
    }

    function getVaultInfo()
        external
        view
        returns (
            uint256 totalAmountStaked,
            uint256 totalRewardsAmountLeft,
            uint256 totalAmountPenalty,
            uint256 totalAmountBurned,
            uint256 interestBps,
            uint256 penaltyBps
        )
    {
        totalAmountStaked = totalStaked;
        totalRewardsAmountLeft = rewardsLeft;
        totalAmountPenalty = totalPenalty;
        totalAmountBurned = totalBurned;
        interestBps = interestRateBps;
        penaltyBps = penaltyRateBps;
    }

    function getPenaltyPreview(
        uint256 tokenId
    ) external view returns (uint256 penaltyAmount) {
        _validateUserTokenId(msg.sender, tokenId);

        penaltyAmount = _calculatePenalty(
            _stakeInfo[tokenId].depositAmount,
            _stakeInfo[tokenId].initialLockTime,
            _stakeInfo[tokenId].unlockTime,
            block.timestamp
        );
    }

    function deposit(
        uint256 amount,
        uint256 lockMultiplier
    ) external nonReentrant {
        _validateAmount(amount);
        _validateLockMultiplier(lockMultiplier);

        uint256 rewardAmountToPay = _calculateRewards(amount, lockMultiplier);
        _validateRewards(rewardAmountToPay);

        stakedToken.safeTransferFrom(msg.sender, address(this), amount);

        uint256 tokenId = ++_tokenId;
        uint256 unlockTime = block.timestamp +
            _calculateLockDuration(lockMultiplier);

        _stakes[msg.sender].add(tokenId);
        _stakeInfo[tokenId] = StakeInfo(
            tokenId,
            amount,
            rewardAmountToPay,
            block.timestamp,
            unlockTime
        );

        rewardsLeft -= rewardAmountToPay;
        totalStaked += amount + rewardAmountToPay;

        emit Deposit(
            msg.sender,
            tokenId,
            amount,
            rewardAmountToPay,
            block.timestamp,
            unlockTime
        );
    }

    function withdraw(uint256[] memory tokenIds) external nonReentrant {
        uint256 totalAmount;

        for (uint256 i = 0; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];

            _validateUserTokenId(msg.sender, tokenId);
            _validateUnlockTime(tokenId);

            totalAmount +=
                _stakeInfo[tokenId].depositAmount +
                _stakeInfo[tokenId].rewardsAmount;

            delete _stakeInfo[tokenId];
            _stakes[msg.sender].remove(tokenId);
        }

        totalStaked -= totalAmount;
        stakedToken.safeTransfer(msg.sender, totalAmount);

        emit Withdraw(msg.sender, totalAmount);
    }

    function earlyWithdraw(uint256 tokenId) external nonReentrant {
        _validateUserTokenId(msg.sender, tokenId);
        _validateEarlyWithdraw(tokenId);

        uint256 penaltyAmount = _calculatePenalty(
            _stakeInfo[tokenId].depositAmount,
            _stakeInfo[tokenId].initialLockTime,
            _stakeInfo[tokenId].unlockTime,
            block.timestamp
        );

        uint256 totalAmountToWithdraw = _stakeInfo[tokenId].depositAmount -
            penaltyAmount;

        totalPenalty += penaltyAmount;
        rewardsLeft += _stakeInfo[tokenId].rewardsAmount;
        totalStaked -=
            _stakeInfo[tokenId].depositAmount +
            _stakeInfo[tokenId].rewardsAmount;

        delete _stakeInfo[tokenId];
        _stakes[msg.sender].remove(tokenId);

        stakedToken.safeTransfer(msg.sender, totalAmountToWithdraw);

        emit EarlyWithdraw(msg.sender, totalAmountToWithdraw, penaltyAmount);
    }

    function extendLock(
        uint256 tokenId,
        uint256 lockMultiplier
    ) external nonReentrant {
        _validateUserTokenId(msg.sender, tokenId);
        _validateLockMultiplier(lockMultiplier);

        uint256 amount = _stakeInfo[tokenId].depositAmount +
            _stakeInfo[tokenId].rewardsAmount;
        uint256 rewardAmountToPay = _calculateRewards(amount, lockMultiplier);
        _validateRewards(rewardAmountToPay);

        uint256 lockExtensionDuration = _calculateLockDuration(lockMultiplier);
        if (_stakeInfo[tokenId].unlockTime > block.timestamp) {
            _validateLockExtension(
                _stakeInfo[tokenId].unlockTime,
                lockExtensionDuration
            );
            _stakeInfo[tokenId].unlockTime += lockExtensionDuration;
        } else {
            // Reset the initialLockTime for unlocked stakes
            _stakeInfo[tokenId].initialLockTime = block.timestamp;
            _stakeInfo[tokenId].unlockTime =
                block.timestamp +
                lockExtensionDuration;
        }

        _stakeInfo[tokenId].rewardsAmount += rewardAmountToPay;

        rewardsLeft -= rewardAmountToPay;
        totalStaked += rewardAmountToPay;

        emit ExtendLock(
            msg.sender,
            amount,
            rewardAmountToPay,
            _stakeInfo[tokenId].initialLockTime,
            _stakeInfo[tokenId].unlockTime
        );
    }

    // onlyOwner
    function depositRewards(uint256 amount) external onlyOwner nonReentrant {
        _validateAmount(amount);

        stakedToken.safeTransferFrom(msg.sender, address(this), amount);
        rewardsLeft += amount;

        emit DepositRewards(msg.sender, amount, rewardsLeft);
    }

    function withdrawRewards(uint256 amount) external onlyOwner nonReentrant {
        _validateAmount(amount);
        _validateRewards(amount);

        stakedToken.safeTransfer(msg.sender, amount);
        rewardsLeft -= amount;

        emit WithdrawRewards(msg.sender, amount, rewardsLeft);
    }

    function withdrawPenalty(uint256 amount) external onlyOwner nonReentrant {
        _validateAmount(amount);
        _validatePenalty(amount);

        stakedToken.safeTransfer(msg.sender, amount);
        totalPenalty -= amount;

        emit WithdrawPenalty(msg.sender, amount, totalPenalty);
    }

    function setRewardsRateBps(uint256 bps) external onlyOwner {
        _validateRewardsRateBps(bps);

        interestRateBps = bps;

        emit SetRewardsRateBps(msg.sender, interestRateBps);
    }

    function setPenaltyRateBps(uint256 bps) external onlyOwner {
        _validatePenaltyRateBps(bps);

        penaltyRateBps = bps;

        emit SetPenaltyRateBps(msg.sender, penaltyRateBps);
    }

    function burnPenalty(uint256 amount) external onlyOwner nonReentrant {
        _validateAmount(amount);
        _validatePenalty(amount);

        ERC20Burnable(address(stakedToken)).burn(amount);

        totalBurned += amount;
        totalPenalty -= amount;

        emit BurnPenalty(msg.sender, amount, totalPenalty, totalBurned);
    }

    function convertPenaltyIntoRewards(uint256 amount) external onlyOwner {
        _validateAmount(amount);
        _validatePenalty(amount);

        totalPenalty -= amount;
        rewardsLeft += amount;

        emit ConvertPenaltyIntoRewards(
            msg.sender,
            amount,
            totalPenalty,
            rewardsLeft
        );
    }

    // Helpers
    function _calculateLockDuration(
        uint256 lockMultiplier
    ) private view returns (uint256) {
        return lockMultiplier * lockDuration;
    }

    function _calculatePenalty(
        uint256 amount,
        uint256 initialLockTime,
        uint256 unlockTime,
        uint256 currentTime
    ) private view returns (uint256) {
        if (currentTime >= unlockTime) {
            return 0;
        }

        if (initialLockTime >= unlockTime) {
            return 0;
        }

        if (penaltyRateBps == 0) {
            return 0;
        }

        uint256 numerator = unlockTime - currentTime;
        uint256 denominator = unlockTime - initialLockTime;
        uint256 unlockTimeDelta = (numerator * 10000) / denominator;
        uint256 penalty = (penaltyRateBps * unlockTimeDelta) / 10000;

        return (amount * penalty) / 10000;
    }

    function _calculateRewards(
        uint256 amount,
        uint256 lockMultiplier
    ) private view returns (uint256) {
        // compound rewards
        uint256 totalRewards;
        for (uint256 i = 0; i < lockMultiplier; i++) {
            if (i == 0) {
                totalRewards = (amount * interestRateBps) / 10000;
            } else {
                totalRewards += (totalRewards * interestRateBps) / 10000;
            }
        }

        return totalRewards;
    }

    // Validators
    function _validateAmount(uint256 amount) private pure {
        if (amount == 0) {
            revert InvalidAmount(amount);
        }
    }

    function _validatePenaltyRateBps(uint256 bps) private pure {
        if (bps > MAX_PENALTY_RATE_BPS) {
            revert InvalidBps(bps);
        }
    }

    function _validateRewardsRateBps(uint256 bps) private pure {
        if (bps > 10000) {
            revert InvalidBps(bps);
        }
    }

    function _validateEarlyWithdraw(uint256 tokenId) private view {
        if (_stakeInfo[tokenId].unlockTime <= block.timestamp) {
            revert InvalidEarlyWithdraw(_stakeInfo[tokenId].unlockTime);
        }
    }

    function _validateLockExtension(
        uint256 unlockTime,
        uint256 lockExtension
    ) private view {
        uint256 lockDurationLeft = unlockTime - block.timestamp;
        uint256 newLockDuration = lockDurationLeft + lockExtension;

        if (newLockDuration > MAX_LOCK_DURATION) {
            revert InvalidLockExtension(newLockDuration);
        }
    }

    function _validateLockMultiplier(uint256 lockMultiplier) private pure {
        if (lockMultiplier < 1 || lockMultiplier > 10) {
            revert InvalidLockMultiplier(lockMultiplier);
        }
    }

    function _validateUserTokenId(address user, uint256 tokenId) private view {
        if (_stakes[user].contains(tokenId) == false) {
            revert InvalidTokenId(tokenId);
        }
    }

    function _validateRewards(uint256 amount) private view {
        if (amount > rewardsLeft) {
            revert InsufficientRewards(rewardsLeft);
        }
    }

    function _validatePenalty(uint256 amount) private view {
        if (amount > totalPenalty) {
            revert InsufficientPenalty(rewardsLeft);
        }
    }

    function _validateUnlockTime(uint256 tokenId) private view {
        if (_stakeInfo[tokenId].unlockTime > block.timestamp) {
            revert InvalidUnlockTime(
                tokenId,
                _stakeInfo[tokenId].depositAmount,
                _stakeInfo[tokenId].unlockTime
            );
        }
    }
}