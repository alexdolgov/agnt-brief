// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {IVoter} from "./interfaces/IVoter.sol";
import {ISigmaGauge} from "./interfaces/ISigmaGauge.sol";
import {IXShadow} from "./interfaces/IXShadow.sol";

/// @notice Gauges are used to incentivize pools, they emit reward tokens over 7 days for staked LP tokens
contract Gauge is ISigmaGauge, ReentrancyGuard {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @notice the LP token that needs to be staked for rewards
    address public immutable stake;
    /// @notice the address of the voter contract
    address public immutable voter;
    /// @dev rewards in the array
    address[] internal rewards;
    /// @notice total supply of LP tokens staked
    uint256 public totalSupply;

    /// @dev rewards are released over 7 days
    uint256 internal constant DURATION = 7 days;
    /// @dev 1e18 precision
    uint256 internal constant PRECISION = 10 ** 18;

    IXShadow public immutable xShadow;

    mapping(address user => uint256) public balanceOf;
    mapping(address user => mapping(address token => uint256 rewardPerToken))
        public userRewardPerTokenStored;
    mapping(address user => mapping(address token => uint256 reward))
        public storedRewardsPerUser;
    mapping(address token => bool _isReward) public isReward;

    mapping(address token => Reward) internal _rewardData;

    EnumerableSet.AddressSet tokenWhitelists;

    /**
     * @notice Constructs the SigmaGauge contract
     * @dev Unlike Gauge, this only whitelists shadow and xShadow (no pool tokens)
     * @param _stake Address of the LP token to stake
     * @param _voter Address of the voter contract
     */
    constructor(address _stake, address _voter) {
        require(_stake != address(0), TOKEN_ERROR(_stake));
        require(_voter != address(0), TOKEN_ERROR(_voter));

        stake = _stake;
        voter = _voter;

        /// @dev temporary voter interface
        IVoter tempVoter = IVoter(voter);
        xShadow = IXShadow(tempVoter.xShadow());

        /// @dev add initial rewards of emissions (shadow/xshadow) - no pool tokens for SigmaGauge
        tokenWhitelists.add(tempVoter.shadow());
        tokenWhitelists.add(tempVoter.xShadow());
    }

    /// @dev compiled with via-ir, caching is less efficient
    modifier updateReward(address account) {
        for (uint256 i; i < rewards.length; i++) {
            _rewardData[rewards[i]].rewardPerTokenStored = rewardPerToken(
                rewards[i]
            );
            _rewardData[rewards[i]].lastUpdateTime = lastTimeRewardApplicable(
                rewards[i]
            );
            if (account != address(0)) {
                storedRewardsPerUser[account][rewards[i]] = earned(
                    rewards[i],
                    account
                );
                userRewardPerTokenStored[account][rewards[i]] = _rewardData[
                    rewards[i]
                ].rewardPerTokenStored;
            }
        }
        _;
    }

    /// @inheritdoc ISigmaGauge
    function rewardsList() external view returns (address[] memory _rewards) {
        _rewards = rewards;
    }

    /// @inheritdoc ISigmaGauge
    function rewardsListLength() external view returns (uint256 _length) {
        _length = rewards.length;
    }

    /// @inheritdoc ISigmaGauge
    function lastTimeRewardApplicable(
        address token
    ) public view returns (uint256) {
        return Math.min(block.timestamp, _rewardData[token].periodFinish);
    }

    /// @inheritdoc ISigmaGauge
    function rewardData(
        address token
    ) external view override returns (Reward memory data) {
        data = _rewardData[token];
    }

    /// @inheritdoc ISigmaGauge
    function earned(
        address token,
        address account
    ) public view returns (uint256 _reward) {
        _reward =
            ((balanceOf[account] *
                (rewardPerToken(token) -
                    userRewardPerTokenStored[account][token])) / PRECISION) +
            storedRewardsPerUser[account][token];
    }

    /// @inheritdoc ISigmaGauge
    function rewardPerToken(address token) public view returns (uint256) {
        if (totalSupply == 0) {
            return _rewardData[token].rewardPerTokenStored;
        }
        return
            _rewardData[token].rewardPerTokenStored +
            ((lastTimeRewardApplicable(token) -
                _rewardData[token].lastUpdateTime) *
                _rewardData[token].rewardRate) /
            totalSupply;
    }

    /// @inheritdoc ISigmaGauge
    function left(address token) public view returns (uint256) {
        if (block.timestamp >= _rewardData[token].periodFinish) return 0;
        uint256 _remaining = _rewardData[token].periodFinish - block.timestamp;
        return (_remaining * _rewardData[token].rewardRate) / PRECISION;
    }

    function isWhitelisted(address token) public view returns (bool) {
        return tokenWhitelists.contains(token);
    }

    /// @inheritdoc ISigmaGauge
    function getReward(
        address account,
        address[] calldata tokens
    ) public updateReward(account) nonReentrant {
        require(msg.sender == account || msg.sender == voter, NOT_AUTHORIZED());
        for (uint256 i; i < tokens.length; i++) {
            uint256 _reward = storedRewardsPerUser[account][tokens[i]];
            if (_reward > 0) {
                storedRewardsPerUser[account][tokens[i]] = 0;
                _safeTransfer(tokens[i], account, _reward);
                emit ClaimRewards(account, tokens[i], _reward);
            }
        }
    }

    /// @inheritdoc ISigmaGauge
    function getRewardAndExit(
        address account,
        address[] calldata tokens
    ) public updateReward(account) nonReentrant {
        require(msg.sender == account || msg.sender == voter, NOT_AUTHORIZED());
        for (uint256 i; i < tokens.length; i++) {
            uint256 _reward = storedRewardsPerUser[account][tokens[i]];
            if (_reward > 0) {
                storedRewardsPerUser[account][tokens[i]] = 0;
                _safeTransfer(tokens[i], account, _reward);
                emit ClaimRewards(account, tokens[i], _reward);
            }
        }
    }

    /// @inheritdoc ISigmaGauge
    function depositAll() external {
        deposit(IERC20(stake).balanceOf(msg.sender));
    }

    /// @inheritdoc ISigmaGauge
    function depositFor(
        address recipient,
        uint256 amount
    ) public updateReward(recipient) nonReentrant {
        require(amount != 0, ZERO_AMOUNT());
        _safeTransferFrom(stake, msg.sender, address(this), amount);
        totalSupply += amount;
        balanceOf[recipient] += amount;
        emit Deposit(recipient, amount);
    }

    /// @inheritdoc ISigmaGauge
    function deposit(uint256 amount) public {
        depositFor(msg.sender, amount);
    }

    /// @inheritdoc ISigmaGauge
    function withdrawAll() external {
        withdraw(balanceOf[msg.sender]);
    }

    /// @inheritdoc ISigmaGauge
    function withdraw(
        uint256 amount
    ) public updateReward(msg.sender) nonReentrant {
        require(amount != 0, ZERO_AMOUNT());
        totalSupply -= amount;
        balanceOf[msg.sender] -= amount;
        _safeTransfer(stake, msg.sender, amount);
        emit Withdraw(msg.sender, amount);
    }

    /// @inheritdoc ISigmaGauge
    function whitelistReward(address _reward) external {
        require(msg.sender == voter, NOT_AUTHORIZED());
        tokenWhitelists.add(_reward);
        emit RewardWhitelisted(_reward, true);
    }

    /// @inheritdoc ISigmaGauge
    function removeRewardWhitelist(address _reward) external {
        require(msg.sender == voter, NOT_AUTHORIZED());
        tokenWhitelists.remove(_reward);
        emit RewardWhitelisted(_reward, false);
    }

    /// @inheritdoc ISigmaGauge
    /**
     * @notice amount must be greater than left() for the token, this is to prevent griefing attacks
     * @notice notifying rewards is completely permissionless
     * @notice if nobody registers for a newly added reward for the period it will remain in the contract indefinitely
     */
    function notifyRewardAmount(
        address token,
        uint256 amount
    ) external updateReward(address(0)) nonReentrant {
        require(token != stake, CANT_NOTIFY_STAKE());
        require(amount != 0, ZERO_AMOUNT());
        require(tokenWhitelists.contains(token), NOT_WHITELISTED());

        _rewardData[token].rewardPerTokenStored = rewardPerToken(token);

        if (!isReward[token]) {
            rewards.push(token);
            isReward[token] = true;
        }

        uint256 balanceBefore = IERC20(token).balanceOf(address(this));
        _safeTransferFrom(token, msg.sender, address(this), amount);
        uint256 balanceAfter = IERC20(token).balanceOf(address(this));
        amount = balanceAfter - balanceBefore;

        if (block.timestamp >= _rewardData[token].periodFinish) {
            _rewardData[token].rewardRate = (amount * PRECISION) / DURATION;
        } else {
            uint256 remaining = _rewardData[token].periodFinish -
                block.timestamp;
            uint256 _left = remaining * _rewardData[token].rewardRate;
            require(
                amount * PRECISION > _left,
                NOT_GREATER_THAN_REMAINING(amount * PRECISION, _left)
            );
            _rewardData[token].rewardRate =
                (amount * PRECISION + _left) /
                DURATION;
        }
        _rewardData[token].lastUpdateTime = block.timestamp;
        _rewardData[token].periodFinish = block.timestamp + DURATION;
        uint256 balance = IERC20(token).balanceOf(address(this));

        require(
            _rewardData[token].rewardRate <= (balance * PRECISION) / DURATION,
            REWARD_TOO_HIGH()
        );

        emit NotifyReward(msg.sender, token, amount);
    }

    /// @dev Internal safe transfer function
    function _safeTransfer(address token, address to, uint256 value) internal {
        require(token.code.length > 0, TOKEN_ERROR(token));
        (bool success, bytes memory data) = token.call(
            abi.encodeWithSelector(IERC20.transfer.selector, to, value)
        );
        require(
            success && (data.length == 0 || abi.decode(data, (bool))),
            TOKEN_ERROR(token)
        );
    }

    function _safeTransferFrom(
        address token,
        address from,
        address to,
        uint256 value
    ) internal {
        require(token.code.length > 0, TOKEN_ERROR(token));
        (bool success, bytes memory data) = token.call(
            abi.encodeWithSelector(
                IERC20.transferFrom.selector,
                from,
                to,
                value
            )
        );
        require(
            success && (data.length == 0 || abi.decode(data, (bool))),
            TOKEN_ERROR(token)
        );
    }
}
