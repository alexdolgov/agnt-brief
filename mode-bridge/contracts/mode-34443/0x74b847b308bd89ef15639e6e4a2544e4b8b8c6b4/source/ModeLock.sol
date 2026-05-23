// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

import {IModeStaking} from "src/IModeStaking.sol";

contract ModeLock is Ownable, IModeStaking {
    using SafeERC20 for IERC20;

    /// @dev Maximum cooldown duration for contract
    uint96 public constant MAX_COOLDOWN_DURATION = 90 days;

    /// @dev MODE token
    IERC20 public immutable mode;

    /// @inheritdoc IModeStaking
    uint96 public cooldownDuration;

    /// @notice Existing cooldowns for users
    mapping(address user => UserPosition position) public positions;

    /// @param _owner Address of the initial owner of the contract
    /// @param _modeToken Address of the MODE token
    constructor(address _owner, address _modeToken, uint96 _cooldown) {
        _transferOwnership(_owner);
        mode = IERC20(_modeToken);
        if (_cooldown > MAX_COOLDOWN_DURATION) {
            revert InvalidCooldown();
        }
        cooldownDuration = _cooldown;
    }

    /// @inheritdoc IModeStaking
    function lock(uint256 amount) external {
        if (amount == 0) revert InvalidAmount();

        positions[msg.sender].amount += amount;
        mode.safeTransferFrom(msg.sender, address(this), amount);

        emit Locked(msg.sender, amount);
    }

    /// @inheritdoc IModeStaking
    function unlock() external {
        UserPosition memory position = positions[msg.sender];
        if (position.lockEnd == 0) revert NotAvailableToWithdraw();
        if (position.lockEnd > block.timestamp) {
            revert LockPeriodNotEnded(position.lockEnd);
        }

        uint224 withdrawable = position.withdrawable;

        position.amount -= withdrawable;
        position.withdrawable = 0;
        position.lockEnd = 0;

        positions[msg.sender] = position;

        mode.safeTransfer(msg.sender, withdrawable);

        emit Unlocked(msg.sender, withdrawable);
    }

    /// @inheritdoc IModeStaking
    function cooldownAssets(uint224 amount) external {
        if (amount == 0) revert InvalidAmount();

        UserPosition memory position = positions[msg.sender];

        if (uint256(amount + position.withdrawable) > position.amount) {
            revert InsufficientAmount();
        }

        position.withdrawable += amount;
        position.lockEnd = uint32(block.timestamp + cooldownDuration);

        positions[msg.sender] = position;

        emit CooldownStarted(
            msg.sender,
            position.withdrawable,
            position.lockEnd
        );
    }

    /// @inheritdoc IModeStaking
    function rescueTokens(
        address token,
        uint256 amount,
        address to
    ) external onlyOwner {
        if (token == address(mode)) revert InvalidToken();
        IERC20(token).safeTransfer(to, amount);

        emit RescuedTokens(token, to, amount);
    }

    /// @inheritdoc IModeStaking
    function setCooldownDuration(uint96 duration) external onlyOwner {
        if (duration > MAX_COOLDOWN_DURATION) {
            revert InvalidCooldown();
        }

        uint96 previousDuration = cooldownDuration;
        cooldownDuration = duration;
        emit CooldownDurationUpdated(previousDuration, cooldownDuration);
    }
}
