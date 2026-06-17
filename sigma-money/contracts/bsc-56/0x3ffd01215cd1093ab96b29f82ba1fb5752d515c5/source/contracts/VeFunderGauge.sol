// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";

import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {IVoter} from "./interfaces/IVoter.sol";
import {IVeFunderGauge} from "./interfaces/IVeFunderGauge.sol";

import {IXShadow} from "./interfaces/IXShadow.sol";


/// @notice Gauges are used to incentivize pools, they emit reward tokens over 7 days for staked LP tokens
contract VeFunderGauge is IVeFunderGauge, ReentrancyGuard {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @notice the address of the voter contract
    address public immutable voter;

    /// @notice the address of the receiver of the rewards
    address public immutable receiver;

    /// @dev rewards in the array
    address[] internal rewards;

    /// @dev rewards are released over 7 days
    uint256 internal constant DURATION = 7 days;
    /// @dev 1e27 precision
    uint256 internal constant PRECISION = 10 ** 18;

    uint256 public maxEmission;

    uint256 public emission;

    address public xShadow;

    address public shadow;

    mapping(address token => bool _isReward) public isReward;

    mapping(address token => Reward) internal _rewardData;

    EnumerableSet.AddressSet tokenWhitelists;

    constructor(address _voter, address _receiver, uint256 _maxEmission) {
        voter = _voter;
        receiver = _receiver;
        maxEmission = _maxEmission;

        /// @dev temporary voter interface
        IVoter tempVoter = IVoter(voter);
        xShadow = tempVoter.xShadow();
        shadow = tempVoter.shadow();

        /// @dev add initial rewards of emissions (shadow/xshadow) and token0/token1
        tokenWhitelists.add(tempVoter.shadow());
        tokenWhitelists.add(tempVoter.xShadow());
    }

    /// @inheritdoc IVeFunderGauge
    function rewardsList() external view returns (address[] memory _rewards) {
        _rewards = rewards;
    }

    /// @inheritdoc IVeFunderGauge
    function rewardsListLength() external view returns (uint256 _length) {
        _length = rewards.length;
    }

    /// @inheritdoc IVeFunderGauge
    function lastTimeRewardApplicable(
        address token
    ) public view returns (uint256) {
        /// @dev returns the lesser of the current unix timestamp, and the timestamp for when the period finishes for the specified reward token
        return Math.min(block.timestamp, _rewardData[token].periodFinish);
    }

    /// @inheritdoc IVeFunderGauge
    function rewardData(
        address token
    ) external view override returns (Reward memory data) {
        data = _rewardData[token];
    }

    /// @inheritdoc IVeFunderGauge
    function getReward(
        address account,
        address[] calldata tokens
    ) public nonReentrant {
        /// @dev ensure calls from the account or the voter address
        require(msg.sender == account || msg.sender == voter, NOT_AUTHORIZED());
        /// @dev loop through the tokens
        uint256 remainReward = maxEmission - emission;
        for (uint256 i; i < tokens.length; i++) {
            /// @dev fetch the stored rewards for the user for current index's token
            uint256 _reward = IERC20(tokens[i]).balanceOf(address(this));
            if (tokens[i] == xShadow || tokens[i] == shadow) {
                _reward = Math.min(_reward, remainReward);
                remainReward -= _reward;
            }
            /// @dev if the stored rewards are greater than zero
            if (_reward > 0) {
                /// @dev transfer the expected rewards
                _safeTransfer(tokens[i], receiver, _reward);
                emit ClaimRewards(receiver, tokens[i], _reward);
            }
        }
    }


    /// @inheritdoc IVeFunderGauge
    function left(address token) public view returns (uint256) {
        /// @dev if we are at or past the periodFinish for the token, return 0
        if (block.timestamp >= _rewardData[token].periodFinish) return 0;
        /// @dev calculate the remaining time from periodFinish to current
        uint256 _remaining = _rewardData[token].periodFinish - block.timestamp;
        /// @dev return the remaining time, multiplied by the reward rate then scale to precision
        return (_remaining * _rewardData[token].rewardRate) / PRECISION;
    }

    /// @inheritdoc IVeFunderGauge
    function whitelistReward(address _reward) external {
        require(msg.sender == voter, NOT_AUTHORIZED());
        /// @dev voter checks for governance whitelist before allowing call
        tokenWhitelists.add(_reward);
        emit RewardWhitelisted(_reward, true);
    }

    /// @inheritdoc IVeFunderGauge
    function removeRewardWhitelist(address _reward) external {
        require(msg.sender == voter, NOT_AUTHORIZED());
        tokenWhitelists.remove(_reward);
        emit RewardWhitelisted(_reward, false);
    }

    /// @inheritdoc IVeFunderGauge
    /**
     * @notice amount must be greater than left() for the token, this is to prevent griefing attacks
     * @notice notifying rewards is completely permissionless
     * @notice if nobody registers for a newly added reward for the period it will remain in the contract indefinitely
     */
    function notifyRewardAmount(
        address token,
        uint256 amount
    ) external nonReentrant {
        /// @dev do not accept 0 amounts
        require(amount != 0, ZERO_AMOUNT());
        /// @dev ensure the token is whitelisted
        require(tokenWhitelists.contains(token), NOT_WHITELISTED());

        if (!isReward[token]) {
            rewards.push(token);
            isReward[token] = true;
        }

        /// @dev check actual amount transferred for compatibility with fee on transfer tokens.
        uint256 balanceBefore = IERC20(token).balanceOf(address(this));
        _safeTransferFrom(token, msg.sender, address(this), amount);
        uint256 balanceAfter = IERC20(token).balanceOf(address(this));
        amount = balanceAfter - balanceBefore;

        if (block.timestamp >= _rewardData[token].periodFinish) {
            _rewardData[token].rewardRate = (amount * PRECISION) / DURATION;
        } else {
            /// @dev calculate the remaining seconds based on the current timestamp
            uint256 remaining = _rewardData[token].periodFinish -
                block.timestamp;
            /// @dev calculate what is currently leftover until the reward period finishes
            uint256 _left = remaining * _rewardData[token].rewardRate;
            /// @dev block DoS
            require(
                amount * PRECISION > _left,
                NOT_GREATER_THAN_REMAINING(amount * PRECISION, _left)
            );
            /// @dev update the rewardRate to include the newly added amount
            _rewardData[token].rewardRate =
                (amount * PRECISION + _left) /
                DURATION;
        }
        /// @dev update the timestamps
        _rewardData[token].lastUpdateTime = block.timestamp;
        _rewardData[token].periodFinish = block.timestamp + DURATION;
        /// @dev check the token balance in this contract
        uint256 balance = IERC20(token).balanceOf(address(this));

        /// @dev ensure it isn't "over-emitting"
        require(
            _rewardData[token].rewardRate <= (balance * PRECISION) / DURATION,
            REWARD_TOO_HIGH()
        );

        emit NotifyReward(msg.sender, token, amount);
    }

    function isWhitelisted(address token) public view returns (bool) {
        return tokenWhitelists.contains(token);
    }

    /** internal safe transfer functions */
    function _safeTransfer(address token, address to, uint256 value) internal {
        require(
            token.code.length > 0,
            TOKEN_ERROR(
                token
            ) /* throw address of the token as a custom error to help with debugging */
        );
        (bool success, bytes memory data) = token.call(
            abi.encodeWithSelector(IERC20.transfer.selector, to, value)
        );
        require(
            success && (data.length == 0 || abi.decode(data, (bool))),
            TOKEN_ERROR(
                token
            ) /* throw address of the token as a custom error to help with debugging */
        );
    }

    function _safeTransferFrom(
        address token,
        address from,
        address to,
        uint256 value
    ) internal {
        require(
            token.code.length > 0,
            TOKEN_ERROR(
                token
            ) /* throw address of the token as a custom error to help with debugging */
        );
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
            TOKEN_ERROR(
                token
            ) /* throw address of the token as a custom error to help with debugging */
        );
    }
}
