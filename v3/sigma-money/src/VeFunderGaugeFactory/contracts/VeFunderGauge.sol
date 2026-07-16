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
    /// @dev 1e18 precision
    uint256 internal constant PRECISION = 10 ** 18;

    /// @notice the max emission of the gauge
    uint256 public immutable maxEmission;

    /// @notice the emission of the gauge
    uint256 public emission;

    /// @notice the xShadow token contract
    address public immutable xShadow;

    /// @notice the shadow token contract
    address public immutable shadow;

    mapping(address token => bool _isReward) public isReward;

    mapping(address token => Reward) internal _rewardData;

    EnumerableSet.AddressSet tokenWhitelists;

    /**
     * @notice Constructs the VeFunderGauge contract
     * @param _voter Address of the voter contract
     * @param _receiver Address of the receiver of the rewards
     * @param _maxEmission Maximum emission amount
     */
    constructor(address _voter, address _receiver, uint256 _maxEmission) {
        require(_voter != address(0), NOT_AUTHORIZED());
        require(_receiver != address(0), NOT_AUTHORIZED());

        voter = _voter;
        receiver = _receiver;
        maxEmission = _maxEmission;

        /// @dev temporary voter interface
        IVoter tempVoter = IVoter(voter);
        xShadow = tempVoter.xShadow();
        shadow = tempVoter.shadow();

        /// @dev add initial rewards of emissions (shadow/xshadow)
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
        require(msg.sender == account || msg.sender == voter, NOT_AUTHORIZED());
        uint256 remainReward = maxEmission - emission;
        for (uint256 i; i < tokens.length; i++) {
            uint256 _reward = IERC20(tokens[i]).balanceOf(address(this));
            if (tokens[i] == xShadow || tokens[i] == shadow) {
                _reward = Math.min(_reward, remainReward);
                remainReward -= _reward;
            }
            if (_reward > 0) {
                _safeTransfer(tokens[i], receiver, _reward);
                emit ClaimRewards(receiver, tokens[i], _reward);
            }
        }
    }

    /// @inheritdoc IVeFunderGauge
    /// @dev Always returns 0 since tokens are forwarded directly to receiver
    function left(address) public pure returns (uint256) {
        return 0;
    }

    /// @inheritdoc IVeFunderGauge
    function whitelistReward(address _reward) external {
        require(msg.sender == voter, NOT_AUTHORIZED());
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
    /// @notice Transfers tokens directly to the receiver instead of accumulating
    /// @dev For shadow/xShadow tokens, enforces maxEmission cap
    function notifyRewardAmount(
        address token,
        uint256 amount
    ) external nonReentrant {
        require(amount != 0, ZERO_AMOUNT());
        require(tokenWhitelists.contains(token), NOT_WHITELISTED());

        if (!isReward[token]) {
            rewards.push(token);
            isReward[token] = true;
        }

        /// @dev pull tokens from caller
        uint256 balanceBefore = IERC20(token).balanceOf(address(this));
        _safeTransferFrom(token, msg.sender, address(this), amount);
        uint256 balanceAfter = IERC20(token).balanceOf(address(this));
        amount = balanceAfter - balanceBefore;

        /// @dev enforce maxEmission for emission tokens
        if (token == shadow || token == xShadow) {
            require(emission + amount <= maxEmission, REWARD_TOO_HIGH());
            emission += amount;
        }

        /// @dev forward directly to receiver
        _safeTransfer(token, receiver, amount);

        emit NotifyReward(msg.sender, token, amount);
    }

    function isWhitelisted(address token) public view returns (bool) {
        return tokenWhitelists.contains(token);
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
