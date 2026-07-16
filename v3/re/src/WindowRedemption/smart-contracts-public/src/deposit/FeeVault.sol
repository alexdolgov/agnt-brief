// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {AccessManaged} from "@openzeppelin/contracts/access/manager/AccessManaged.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title FeeVault
 * @notice Tracks and manages protocol fees for a specific product (Deposits or Redemptions).
 * @dev A dedicated instance is deployed per product. Exactly one contract (the "recorder") is
 *      authorized to record fees via {recordFee}. Admins can later claim the accumulated fees.
 */
contract FeeVault is AccessManaged, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ============ State Variables ============

    /// @notice Total fees accumulated per token
    mapping(address => uint256) public totalFees;

    /// @notice Total fees claimed per token
    mapping(address => uint256) public claimedFees;

    /// @notice Address authorized to call {recordFee} for this vault (e.g., DepositProcessor, InstantRedemption, WindowRedemption)
    address public immutable recorder;

    // ============ Events ============

    event FeeRecorded(address indexed token, uint256 amount);
    event FeesClaimed(address indexed token, address indexed recipient, uint256 amount);

    // ============ Errors ============

    error OnlyRecorder();
    error NoFeesToClaim();
    error InvalidRecipient();
    error InvalidAddress();
    error InvalidAmount();

    // ============ Modifiers ============

    modifier onlyRecorder() {
        if (msg.sender != recorder) revert OnlyRecorder();
        _;
    }

    // ============ Constructor ============

    /**
     * @param _accessManager AccessManager for admin gating of claims
     * @param _recorder The single contract allowed to record fees
     */
    constructor(address _accessManager, address _recorder) AccessManaged(_accessManager) {
        if (_accessManager == address(0)) revert InvalidAddress();
        if (_recorder == address(0)) revert InvalidAddress();
        recorder = _recorder;
    }

    // ============ External Functions ============

    /**
     * @notice Record fee collection (only callable by the authorized recorder)
     * @param token The token fees were collected in
     * @param amount The amount of fees collected
     */
    function recordFee(address token, uint256 amount) external onlyRecorder {
        if (amount == 0) revert InvalidAmount();
        totalFees[token] += amount;
        emit FeeRecorded(token, amount);
    }

    /**
     * @notice Claim accumulated fees
     * @param token The token to claim fees for
     * @param recipient The address to receive the fees
     * @return claimable The amount of fees claimed
     */
    function claimFees(address token, address recipient)
        external
        restricted
        nonReentrant
        returns (uint256 claimable)
    {
        if (recipient == address(0)) revert InvalidRecipient();

        claimable = totalFees[token] - claimedFees[token];
        if (claimable == 0) revert NoFeesToClaim();

        claimedFees[token] = totalFees[token];

        IERC20(token).safeTransfer(recipient, claimable);

        emit FeesClaimed(token, recipient, claimable);
    }

    // ============ View Functions ============

    /**
     * @notice Get the amount of claimable fees for a token
     * @param token The token to check
     * @return The amount of fees that can be claimed
     */
    function getClaimableFees(address token) external view returns (uint256) {
        return totalFees[token] - claimedFees[token];
    }
}
