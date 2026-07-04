// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {
    ReentrancyGuardUpgradeable
} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {
    OwnableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "./WithdrawalBufferStorage.sol";
import "../../Errors/Errors.sol";

contract WithdrawalBuffer is
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    WithdrawalBufferStorageV1
{
    using SafeERC20 for IERC20;

    uint256 public constant BASIS_POINTS = 10000; // BASIS_POINTS used for percentage (10000 basis points equal 100%)

    event InstantWithdrawalCompleted(
        address user,
        uint256 vaultTokenAmount,
        uint256 underlyingAmount,
        uint256 feeAmount
    );

    event Paused(bool paused);
    event PauserUpdated(address oldPauser, address newPauser);

    /// @dev Only allows deposit and withdraw when not paused
    modifier whenNotPaused() {
        _checkIfPaused();
        _;
    }

    /// @dev Only allowed pauser and owner to change pause state
    modifier onlyOwnerOrPauser() {
        if (msg.sender != owner() && msg.sender != pauser) revert NotPauser();
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        uint256 _instantWithdrawalFeeBps,
        uint256 _withdrawBufferTarget,
        address _feeDestination,
        address _owner,
        IEzRVault _ezRVault
    ) external initializer {
        __ReentrancyGuard_init();

        // Check for zero values
        if (
            _instantWithdrawalFeeBps == 0 ||
            _feeDestination == address(0) ||
            _withdrawBufferTarget == 0 ||
            _owner == address(0) ||
            address(_ezRVault) == address(0)
        ) revert InvalidZeroInput();

        // Verify instant withdrawal fee is within valid range
        if (_instantWithdrawalFeeBps > BASIS_POINTS) revert InvalidFee();

        instantWithdrawalFeeBps = _instantWithdrawalFeeBps;
        feeDestination = _feeDestination;
        withdrawBufferTarget = _withdrawBufferTarget;
        ezRVault = _ezRVault;

        _transferOwnership(_owner);
    }

    /**
     * @notice  Function to set the whitelisted users for instant withdrawals.
     * @dev     Permissioned call (onlyOwner)
     * @param   _users  list of user addresses to be whitelisted or removed from whitelist
     * @param   _isWhitelisted  list of boolean values indicating whether the user should be whitelisted or not
     */
    function setWhitelisted(
        address[] calldata _users,
        bool[] calldata _isWhitelisted
    ) external onlyOwner {
        if (_users.length == 0) revert InvalidZeroInput();
        if (_users.length != _isWhitelisted.length) revert MismatchedArrayLengths();

        for (uint256 i = 0; i < _users.length; ) {
            if (_users[i] == address(0)) revert InvalidZeroInput();
            isWhitelisted[_users[i]] = _isWhitelisted[i];
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice  Pause the withdrawal buffer
     * @dev     permissioned call (onlyPuaser)
     */
    function pause() external onlyOwnerOrPauser {
        paused = true;
        emit Paused(true);
    }

    /**
     * @notice  UnPause the withdrawal buffer
     * @dev     permissioned call (onlyOwner)
     */
    function unpause() external onlyOwner {
        paused = false;
        emit Paused(false);
    }

    /**
     * @notice  Update pauser address
     * @dev     permissioned call (onlyOwner)
     * @param   _pauser  new pauser address
     */
    function setPauser(address _pauser) external onlyOwner {
        if (_pauser == address(0)) revert InvalidZeroInput();
        emit PauserUpdated(pauser, _pauser);
        pauser = _pauser;
    }

    /**
     * @notice  Updates the withdrawal buffer target amount
     * @dev     permissioned call (onlyOwner)
     * @param   _withdrawBufferTarget  new target amount for the withdrawal buffer
     */
    function updateWithdrawBufferConfig(
        uint256 _withdrawBufferTarget,
        uint256 _instantWithdrawalFeeBps,
        address _feeDestination
    ) external onlyOwner {
        if (
            _withdrawBufferTarget == 0 ||
            _instantWithdrawalFeeBps == 0 ||
            _feeDestination == address(0)
        ) revert InvalidZeroInput();

        // Verify instant withdrawal fee is within valid range
        if (_instantWithdrawalFeeBps > BASIS_POINTS) revert InvalidFee();

        // Update the withdrawal buffer target amount
        withdrawBufferTarget = _withdrawBufferTarget;
        // Update the instant withdrawal fee basis points
        instantWithdrawalFeeBps = _instantWithdrawalFeeBps;
        // Update the fee destination address
        feeDestination = _feeDestination;
    }

    /**
     * @notice  Instantly withdraws a specified amount of LP tokens from the EzRVault
     * @dev     This function allows users to withdraw their LP tokens instantly with a fee and burns their LP tokens instantly
     * @dev     Whitelisted users do not incur any fees.
     * @param   _amount amount of LP tokens to withdraw
     */
    function withdraw(uint256 _amount) external nonReentrant whenNotPaused {
        if (_amount == 0) revert InvalidZeroInput();

        IERC20 underlyingToken = ezRVault.underlying();

        // Calculate the amountToRedeem
        uint256 underlyingAmount = (_amount * ezRVault.getRate()) / ezRVault.scaleFactor();

        // Check if the withdrawal buffer has enough balance
        if (underlyingToken.balanceOf(address(this)) < underlyingAmount)
            revert NotEnoughLiquidity();

        // Calculate the fee amount
        // If user is whitelisted, no fee is charged
        uint256 feeAmount = isWhitelisted[msg.sender]
            ? 0
            : (underlyingAmount * instantWithdrawalFeeBps) / BASIS_POINTS;

        // Transfer the fee to the fee destination
        if (feeAmount > 0) {
            underlyingToken.safeTransfer(feeDestination, feeAmount);
        }

        // Calculate the amount to withdraw after deducting the fee
        uint256 amountToWithdraw = underlyingAmount - feeAmount;

        // Transfer the remaining amount to the user
        underlyingToken.safeTransfer(msg.sender, amountToWithdraw);

        // Burn the LP tokens
        ezRVault.burnByInstantWithdrawal(msg.sender, _amount);

        // Emit the event for successful withdrawal
        emit InstantWithdrawalCompleted(msg.sender, _amount, amountToWithdraw, feeAmount);
    }

    /**
     * @notice  Get the current underlying deficit in the withdrawal buffer.
     * @return  uint256 amount of underlying tokens needed to reach the target withdrawal buffer.
     */
    function getBufferDeficit() external view returns (uint256) {
        // Calculate the deficit in the withdrawal buffer
        uint256 currentBalance = ezRVault.underlying().balanceOf(address(this));

        // Return 0 if the current balance is greater than or equal to the target
        if (currentBalance >= withdrawBufferTarget) return 0;

        // return the difference between the target and current balance
        return withdrawBufferTarget - currentBalance;
    }

    function _checkIfPaused() internal view {
        if (paused) revert InstantWithdrawPaused();
    }
}
