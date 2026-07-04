// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SingleAdminAccessControl } from "./libraries/SingleAdminAccessControl.sol";
import { IXGLDExchangeRate } from "./interfaces/IXGLDExchangeRate.sol";
import { IXGLDToken } from "./interfaces/IXGLDToken.sol";

/// @notice Burns BSC XGLD and queues XAUT redemption at the shared exchange rate.
contract XGLDRedeemer is SingleAdminAccessControl, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    bytes32 public constant GATEKEEPER_ROLE = keccak256("GATEKEEPER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant REDEMPTION_DOMAIN = keccak256("XGLDRedeemer.redeem");
    uint256 public constant MAX_REDEMPTION_DELAY = 30 days;
    uint256 private constant RATE_PRECISION = 1_000_000;

    IXGLDToken public immutable xgld;
    IERC20 public immutable xaut;
    IXGLDExchangeRate public immutable exchangeRateProvider;

    uint256 public redemptionDelay = 7 days;
    uint256 public totalPendingXaut;
    uint256 public totalXgldBurned;
    uint256 public totalXautClaimed;
    uint256 public totalXautDeposited;
    uint256 public totalXautWithdrawn;
    uint256 public redemptionNonce;

    struct RedemptionRequest {
        address account;
        address recipient;
        uint256 xgldBurned;
        uint256 xautClaimable;
        uint64 claimableAt;
        bool claimed;
    }

    mapping(bytes32 => RedemptionRequest) public redemptionRequests;

    event RedemptionQueued(
        bytes32 indexed requestId,
        address indexed account,
        address indexed recipient,
        uint256 xgldBurned,
        uint256 xautClaimable,
        uint64 claimableAt
    );
    event Claimed(bytes32 indexed requestId, address indexed recipient, uint256 xautAmount);
    event ClaimRecipientOverridden(bytes32 indexed requestId, address indexed oldRecipient, address indexed newRecipient);
    event RedemptionDelayUpdated(uint256 oldDelay, uint256 newDelay);
    event XautDeposited(address indexed from, uint256 amount);
    event XautWithdrawn(address indexed to, uint256 amount);
    event EthRescued(address indexed to, uint256 amount);

    error DuplicateRequest(bytes32 requestId);
    error InvalidRequest();
    error AlreadyClaimed();
    error NotYetClaimable(uint64 claimableAt, uint256 currentTime);
    error InsufficientXautReserve(uint256 required, uint256 available);
    error InsufficientFreeReserve(uint256 requested, uint256 free);
    error ZeroAddress();
    error ZeroAmount();
    error DelayTooLong(uint256 requested, uint256 maximum);
    error TransferFailed();

    constructor(address _xgld, address _xaut, IXGLDExchangeRate _exchangeRateProvider, address _admin) {
        if (_xgld == address(0)) revert ZeroAddress();
        if (_xaut == address(0)) revert ZeroAddress();
        if (address(_exchangeRateProvider) == address(0)) revert ZeroAddress();
        if (_admin == address(0)) revert ZeroAddress();

        xgld = IXGLDToken(_xgld);
        xaut = IERC20(_xaut);
        exchangeRateProvider = _exchangeRateProvider;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    function redeem(uint256 xgldAmount, address recipient)
        external
        nonReentrant
        whenNotPaused
        returns (bytes32 requestId)
    {
        if (xgldAmount == 0) revert ZeroAmount();
        if (recipient == address(0)) revert ZeroAddress();

        uint256 nonce = ++redemptionNonce;
        requestId = keccak256(abi.encode(
            REDEMPTION_DOMAIN,
            block.chainid,
            address(this),
            nonce,
            msg.sender,
            recipient,
            xgldAmount
        ));

        IERC20(address(xgld)).safeTransferFrom(msg.sender, address(this), xgldAmount);
        _queueRedemption(requestId, msg.sender, xgldAmount, recipient);
    }

    function _queueRedemption(bytes32 requestId, address account, uint256 xgldAmount, address recipient) private {
        if (redemptionRequests[requestId].claimableAt != 0) revert DuplicateRequest(requestId);

        uint256 claimableAtTs = block.timestamp + redemptionDelay;
        // forge-lint: disable-next-line(unsafe-typecast)
        uint64 claimableAt = uint64(claimableAtTs);
        uint256 xautAmount = previewRedeem(xgldAmount);

        redemptionRequests[requestId] = RedemptionRequest({
            account: account,
            recipient: recipient,
            xgldBurned: xgldAmount,
            xautClaimable: xautAmount,
            claimableAt: claimableAt,
            claimed: false
        });

        totalPendingXaut += xautAmount;
        totalXgldBurned += xgldAmount;

        xgld.burn(xgldAmount);

        emit RedemptionQueued(requestId, account, recipient, xgldAmount, xautAmount, claimableAt);
    }


    function _netTrackedXaut() private view returns (uint256) {
        return totalXautDeposited > totalXautWithdrawn ? totalXautDeposited - totalXautWithdrawn : 0;
    }

    /// @notice Permissionless. Sends XAUT to req.recipient after delay.
    function claim(bytes32 requestId) external nonReentrant whenNotPaused {
        RedemptionRequest storage req = redemptionRequests[requestId];

        if (req.claimableAt == 0) revert InvalidRequest();
        if (req.claimed) revert AlreadyClaimed();
        if (block.timestamp < req.claimableAt) revert NotYetClaimable(req.claimableAt, block.timestamp);

        uint256 xautBalance = xaut.balanceOf(address(this));
        if (xautBalance < req.xautClaimable) {
            revert InsufficientXautReserve(req.xautClaimable, xautBalance);
        }

        req.claimed = true;
        totalPendingXaut -= req.xautClaimable;
        totalXautClaimed += req.xautClaimable;

        xaut.safeTransfer(req.recipient, req.xautClaimable);

        emit Claimed(requestId, req.recipient, req.xautClaimable);
    }

    function previewRedeem(uint256 xgldAmount) public view returns (uint256) {
        return xgldAmount * exchangeRateProvider.exchangeRate() / RATE_PRECISION;
    }

    /// @notice XAUT above pending obligations (safely withdrawable).
    function freeXautReserve() external view returns (uint256) {
        uint256 balance = xaut.balanceOf(address(this));
        return balance >= totalPendingXaut ? balance - totalPendingXaut : 0;
    }

    /// @notice XAUT shortfall to cover all unclaimed requests.
    function xautDeficit() external view returns (uint256) {
        uint256 balance = xaut.balanceOf(address(this));
        return balance >= totalPendingXaut ? 0 : totalPendingXaut - balance;
    }

    /// @notice Cumulative XAUT funded through depositXaut. Direct token transfers are not tracked.
    function totalXautReceived() external view returns (uint256) {
        return totalXautDeposited;
    }

    /// @notice Tracked XAUT surplus above paid and pending redemption obligations.
    function xautSurplus() public view returns (uint256) {
        uint256 netReceived = _netTrackedXaut();
        uint256 obligations = totalXautClaimed + totalPendingXaut;
        return netReceived > obligations ? netReceived - obligations : 0;
    }

    /// @notice Backward-compatible alias for xautSurplus().
    function xautYield() external view returns (uint256) {
        return xautSurplus();
    }

    /// @notice Average claim rate already paid or locked for burned XGLD.
    function impliedExchangeRate() external view returns (uint256) {
        if (totalXgldBurned == 0) return 0;
        return (totalXautClaimed + totalPendingXaut) * RATE_PRECISION / totalXgldBurned;
    }

    /// @notice Max 30 days. Applies to future requests only.
    function setRedemptionDelay(uint256 newDelay) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newDelay > MAX_REDEMPTION_DELAY) revert DelayTooLong(newDelay, MAX_REDEMPTION_DELAY);
        uint256 old = redemptionDelay;
        redemptionDelay = newDelay;
        emit RedemptionDelayUpdated(old, newDelay);
    }

    /// @notice Override recipient before claim (e.g. XAUT blacklist).
    function overridePendingClaimRecipient(bytes32 requestId, address newRecipient) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newRecipient == address(0)) revert ZeroAddress();
        RedemptionRequest storage req = redemptionRequests[requestId];
        if (req.claimableAt == 0) revert InvalidRequest();
        if (req.claimed) revert AlreadyClaimed();
        address old = req.recipient;
        req.recipient = newRecipient;
        emit ClaimRecipientOverridden(requestId, old, newRecipient);
    }

    /// @notice Permissionless, works when paused.
    function depositXaut(uint256 amount) external {
        if (amount == 0) revert ZeroAmount();
        uint256 balanceBefore = xaut.balanceOf(address(this));
        xaut.safeTransferFrom(msg.sender, address(this), amount);
        uint256 balanceAfter = xaut.balanceOf(address(this));
        if (balanceAfter < balanceBefore || balanceAfter - balanceBefore != amount) revert TransferFailed();
        totalXautDeposited += amount;
        emit XautDeposited(msg.sender, amount);
    }

    /// @notice Cannot reduce below totalPendingXaut.
    function withdrawXaut(address to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (to == address(0)) revert ZeroAddress();
        uint256 balance = xaut.balanceOf(address(this));
        uint256 free = balance > totalPendingXaut ? balance - totalPendingXaut : 0;
        if (amount > free) revert InsufficientFreeReserve(amount, free);
        xaut.safeTransfer(to, amount);
        totalXautWithdrawn += amount;
        emit XautWithdrawn(to, amount);
    }

    function rescueEth(address payable to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (to == address(0)) revert ZeroAddress();
        if (amount == 0) revert ZeroAmount();
        (bool ok, ) = to.call{value: amount}("");
        if (!ok) revert TransferFailed();
        emit EthRescued(to, amount);
    }

    function pause() external {
        if (!hasRole(GATEKEEPER_ROLE, msg.sender) && !hasRole(PAUSER_ROLE, msg.sender)) {
            revert AccessControlUnauthorizedAccount(msg.sender, PAUSER_ROLE);
        }
        _pause();
    }

    /// @notice Admin only (asymmetric design).
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }
}
