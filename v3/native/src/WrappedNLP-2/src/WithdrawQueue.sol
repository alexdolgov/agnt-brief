// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {IERC20Metadata as IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {WrappedNLP} from "./WrappedNLP.sol";
import {SafeERC20} from "./libraries/SafeERC20.sol";
import {ErrorsLib} from "./libraries/ErrorsLib.sol";
import {ReentrancyGuardTransient} from "./libraries/ReentrancyGuardTransient.sol";

/**
 * @title WithdrawQueue - Queue-based withdrawal system for WrappedNLP
 * @dev Manages withdrawal requests with time windows to prevent JIT attacks
 */
contract WithdrawQueue is Ownable2Step, Pausable, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;

    struct WithdrawalRequest {
        uint256 wNLPAmount; // Amount of wNLP tokens to withdraw
        uint256 claimableTime; // When the request becomes claimable
        uint256 underlyingSnapshot; // Underlying snapshot amount at request, no rebasing yield after claimableTime to encourage timely claims
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Name of the queue
    string public name;

    /// @notice The WrappedNLP contract
    WrappedNLP public immutable wrappedNLP;

    /// @notice The underlying token of the WrappedNLP
    IERC20 public immutable underlying;

    /// @notice The fee recipient address
    address public feeRecipient;

    /// @notice Minimum withdrawal amount
    uint256 public constant MIN_WITHDRAWAL_AMOUNT = 1000;

    /// @notice Maximum withdrawal window that can be set
    uint256 public constant MAX_WITHDRAWAL_WINDOW = 14 days;

    /// @notice Default withdrawal window in seconds
    uint256 public withdrawalWindow = 8 hours;

    /// @notice Total unclaimed wNLP amount in the queue
    uint256 public totalUnclaimedAmount;

    /// @notice Mapping from user address to their withdrawal request
    mapping(address => WithdrawalRequest) public withdrawalRequests;

    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a withdrawal request is created
    event WithdrawalRequested(address indexed user, uint256 wNLPAmount, uint256 claimableTime);

    /// @notice Emitted when a withdrawal is claimed
    event WithdrawalClaimed(address indexed user, address indexed to, uint256 wNLPAmount, uint256 underlyingAmount);

    /// @notice Emitted when a withdrawal request is cancelled
    event WithdrawalCancelled(address indexed user, uint256 wNLPAmount);

    /// @notice Emitted when withdrawal window is updated
    event WithdrawalWindowUpdated(uint256 oldWindow, uint256 newWindow);

    /// @notice Emitted when fee recipient is updated
    event FeeRecipientUpdated(address indexed oldRecipient, address indexed newRecipient);

    /// @notice Emitted when excess yield is collected from delayed claim
    event YieldCollected(address indexed user, uint256 yieldAmount);

    constructor(
        WrappedNLP _wrappedNLP
    ) {
        wrappedNLP = _wrappedNLP;
        underlying = _wrappedNLP.underlying();
        feeRecipient = msg.sender;

        name = string.concat(_wrappedNLP.symbol(), "-Queue");
    }

    /// @notice Request a withdrawal of wNLP tokens
    /// @param wNLPAmount Amount of wNLP tokens to withdraw
    function requestWithdrawal(
        uint256 wNLPAmount
    ) external nonReentrant whenNotPaused {
        require(wNLPAmount >= MIN_WITHDRAWAL_AMOUNT, "Below minimum withdrawal amount");
        require(withdrawalRequests[msg.sender].wNLPAmount == 0, "Pending request exists");

        // Transfer wNLP tokens for escrow
        IERC20(wrappedNLP).safeTransferFrom(msg.sender, address(this), wNLPAmount);

        uint256 claimableTime = block.timestamp + withdrawalWindow;

        // Snapshot the underlying amount for this wNLPAmount - user won't get future rebasing yield
        uint256 underlyingSnapshot = wrappedNLP.getNlpByWnlp(wNLPAmount);

        withdrawalRequests[msg.sender] = WithdrawalRequest({
            wNLPAmount: wNLPAmount,
            claimableTime: claimableTime,
            underlyingSnapshot: underlyingSnapshot
        });

        // Update total unclaimed amount
        totalUnclaimedAmount += wNLPAmount;

        emit WithdrawalRequested(msg.sender, wNLPAmount, claimableTime);
    }

    /// @notice Claim a withdrawal request to the caller's address
    /// @return underlyingAmount Amount of underlying tokens received
    function claimWithdrawal() external nonReentrant returns (uint256 underlyingAmount) {
        return _claimWithdrawal(msg.sender, msg.sender);
    }

    /// @notice Claim a withdrawal request to a specified address
    /// @param to Address to receive the underlying tokens
    /// @return underlyingAmount Amount of underlying tokens received
    function claimWithdrawalTo(
        address to
    ) external nonReentrant returns (uint256 underlyingAmount) {
        require(to != address(0), ErrorsLib.ZeroAddress());
        return _claimWithdrawal(msg.sender, to);
    }

    /// @notice Cancel a withdrawal request and return the wNLP tokens to the caller
    /// @dev Users can cancel at any time (even after claimableTime) to maintain flexibility and user autonomy
    /// @return wNLPAmount Amount of wNLP tokens returned to the user
    function cancelWithdrawal() external nonReentrant returns (uint256 wNLPAmount) {
        WithdrawalRequest storage request = withdrawalRequests[msg.sender];

        require(request.wNLPAmount > 0, "No pending request");

        wNLPAmount = request.wNLPAmount;

        delete withdrawalRequests[msg.sender];

        // Update total unclaimed amount
        totalUnclaimedAmount -= wNLPAmount;

        // Return wNLP tokens to the user
        IERC20(wrappedNLP).safeTransfer(msg.sender, wNLPAmount);

        emit WithdrawalCancelled(msg.sender, wNLPAmount);
    }

    /// @notice Pause new withdrawal requests
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpause withdrawal requests
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @notice Set the withdrawal window
    /// @param newWindow New window duration in seconds
    function setWithdrawalWindow(
        uint256 newWindow
    ) external onlyOwner {
        require(newWindow <= MAX_WITHDRAWAL_WINDOW, ErrorsLib.InvalidAmount());

        uint256 oldWindow = withdrawalWindow;
        withdrawalWindow = newWindow;

        emit WithdrawalWindowUpdated(oldWindow, newWindow);
    }

    /// @notice Set the fee recipient address
    /// @param newFeeRecipient New fee recipient address
    function setFeeRecipient(
        address newFeeRecipient
    ) external onlyOwner {
        require(newFeeRecipient != address(0), ErrorsLib.ZeroAddress());

        address oldRecipient = feeRecipient;
        feeRecipient = newFeeRecipient;

        emit FeeRecipientUpdated(oldRecipient, newFeeRecipient);
    }

    /// @notice Get withdrawal request details for a user
    /// @param user The user address
    /// @return request The withdrawal request struct
    function getWithdrawalRequest(
        address user
    ) external view returns (WithdrawalRequest memory request) {
        return withdrawalRequests[user];
    }

    function _claimWithdrawal(address user, address to) internal returns (uint256 underlyingAmount) {
        WithdrawalRequest storage request = withdrawalRequests[user];

        require(request.wNLPAmount > 0, ErrorsLib.ZeroAmount());
        require(block.timestamp >= request.claimableTime, "Not claimable");

        uint256 wNLPAmount = request.wNLPAmount;
        underlyingAmount = request.underlyingSnapshot;

        delete withdrawalRequests[user];

        // Update total unclaimed amount
        totalUnclaimedAmount -= wNLPAmount;

        // Execute withdrawal through WrappedNLP to this contract first
        uint256 redeemedAmount = wrappedNLP.unwrapAndRedeem(wNLPAmount, address(this));

        // Transfer snapshot amount to user
        underlying.safeTransfer(to, underlyingAmount);

        // If there's excess yield due to rebasing, transfer to feeRecipient
        if (redeemedAmount > underlyingAmount) {
            require(feeRecipient != address(0), ErrorsLib.ZeroAddress());
            uint256 excessYield = redeemedAmount - underlyingAmount;

            underlying.safeTransfer(feeRecipient, excessYield);
            emit YieldCollected(user, excessYield);
        }

        emit WithdrawalClaimed(user, to, wNLPAmount, underlyingAmount);
    }
}
