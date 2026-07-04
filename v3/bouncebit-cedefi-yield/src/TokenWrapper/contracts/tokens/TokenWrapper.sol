// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.23;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {IERC20, IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {TokenWithdrawalQueue} from "./TokenWithdrawalQueue.sol";
import {IBounceBitToken} from "../interfaces/IBounceBitToken.sol";
import {MerkleRootUtil} from "./MerkleRootUtil.sol";

/// @title TokenWrapper contract
/// @notice This contract is used for wrapping and unwrapping tokens, and handling profit claims
abstract contract TokenWrapper is
    OwnableUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    TokenWithdrawalQueue
{
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;
    using MerkleRootUtil for MerkleRootUtil.MerkleData[];

    /// @notice Address of the underlying token
    address public underlyingToken;
    /// @notice Address of the wrapped token
    address public wrappedToken;
    /// @notice Address to forward the underlying tokens to when wrapped
    address public forwardTo;
    /// @notice Duration for which a claim can be made
    uint256 public claimDuration;
    /// @notice Duration for which a dispute can be made
    uint256 public disputeDuration;
    /// @notice Mapping of address to the profit claimed by the address
    mapping(address => uint256) public profitClaimed;

    MerkleRootUtil.MerkleData[] private _profitMerkleRoots;
    EnumerableSet.AddressSet private _operators;

    event Staked(address indexed from, address indexed to, uint256 underlyingAmount, uint256 wrappedAmount);
    event UnStaked(address indexed account, uint256 underlyingAmount, uint256 wrappedAmount);
    event ProfitClaimed(address indexed owner, uint256 amount);
    event UnderlyingTokenSet(address indexed sender, address indexed underlyingToken);
    event WrappedTokenSet(address indexed sender, address indexed wrappedToken);
    event ForwardToSet(address indexed sender, address indexed forwardTo);
    event ClaimDurationSet(address indexed sender, uint256 claimDuration);
    event DisputeDurationSet(address indexed sender, uint256 disputeDuration);
    event ProfitMerkleRootSet(address indexed sender, bytes32 root);
    event ProfitMerkleRootDropped(address indexed sender, bytes32 root);
    event OperatorAdded(address indexed sender, address indexed operator);
    event OperatorRemoved(address indexed sender, address indexed operator);

    error DecimalTooLarge();
    error InvalidMerkleProof();
    error InvalidMerkleRoot();
    error NoProfitToClaim();
    error NotEnoughPrincipal();
    error NotOperator();
    error SameAddress();
    error ZeroAddress();
    error ZeroAmount();
    error ZeroValue();

    function initialize(
        address _initialOwner,
        address _underlyingToken,
        address _wrappedToken,
        address _forwardTo,
        uint256 _claimDuration,
        uint256 _disputeDuration
    ) public initializer {
        if (_initialOwner == address(0)) revert ZeroAddress();
        if (_underlyingToken == address(0)) revert ZeroAddress();
        if (_wrappedToken == address(0)) revert ZeroAddress();
        if (_underlyingToken == _wrappedToken) revert SameAddress();
        if (IERC20Metadata(_underlyingToken).decimals() > IERC20Metadata(_wrappedToken).decimals()) {
            revert DecimalTooLarge();
        }

        __Ownable_init(_initialOwner);
        __Pausable_init();
        __ReentrancyGuard_init();

        underlyingToken = _underlyingToken;
        wrappedToken = _wrappedToken;
        uint8 underlyingDecimals = IERC20Metadata(underlyingToken).decimals();
        uint8 wrappedDecimals = IERC20Metadata(wrappedToken).decimals();
        if (underlyingDecimals > wrappedDecimals) revert DecimalTooLarge();
        emit UnderlyingTokenSet(msg.sender, _underlyingToken);
        emit WrappedTokenSet(msg.sender, _wrappedToken);

        _setForwardTo(_forwardTo);
        _setClaimDuration(_claimDuration);
        _setDisputeDuration(_disputeDuration);
        _addOperator(_initialOwner);
    }

    /// @notice Wrap the underlying token into the wrapped token
    /// @param underlyingAmount The amount of underlying token to wrap
    function wrap(uint256 underlyingAmount) external nonReentrant whenNotPaused {
        if (underlyingAmount == 0) revert ZeroAmount();
        // convert underlyingAmount to wrappedAmount
        uint256 wrappedAmount = underlyingAmount;
        uint8 underlyingDecimals = IERC20Metadata(underlyingToken).decimals();
        uint8 wrappedDecimals = IERC20Metadata(wrappedToken).decimals();
        if (underlyingDecimals < wrappedDecimals) {
            wrappedAmount = underlyingAmount * (10 ** (wrappedDecimals - underlyingDecimals));
        }
        if (wrappedAmount == 0) revert ZeroAmount();

        IBounceBitToken(wrappedToken).mint(msg.sender, wrappedAmount);
        IERC20(underlyingToken).safeTransferFrom(msg.sender, address(this), underlyingAmount);
        IERC20(underlyingToken).safeTransfer(forwardTo, underlyingAmount);

        emit Staked(msg.sender, forwardTo, underlyingAmount, wrappedAmount);
    }

    /// @notice Unwrap the wrapped token for the sender
    /// @param wrappedAmount The amount of wrapped token to unwrap
    function _unwrap(uint256 wrappedAmount) internal {
        if (wrappedAmount == 0) revert ZeroAmount();
        // convert wrappedAmount to underlyingAmount
        uint256 underlyingAmount = wrappedAmount;
        uint8 underlyingDecimals = IERC20Metadata(underlyingToken).decimals();
        uint8 wrappedDecimals = IERC20Metadata(wrappedToken).decimals();
        if (underlyingDecimals < wrappedDecimals) {
            underlyingAmount = wrappedAmount / (10 ** (wrappedDecimals - underlyingDecimals));
        }
        if (underlyingAmount == 0) revert ZeroAmount();

        IBounceBitToken(wrappedToken).burnFor(msg.sender, wrappedAmount);
        _requestWithdrawal(msg.sender, underlyingAmount);

        emit UnStaked(msg.sender, underlyingAmount, wrappedAmount);
    }

    /// @notice Claim the profit for the sender
    /// @param totalProfit The total profit to claim
    /// @param proof The merkle proof for the claim
    function _claimProfit(uint256 totalProfit, bytes32[] memory proof) internal {
        bytes32 profitMerkleRoot = _profitMerkleRoots.getLastValidMerkleRoot();
        if (profitMerkleRoot == bytes32(0)) revert InvalidMerkleRoot();
        if (profitClaimed[msg.sender] >= totalProfit) revert NoProfitToClaim();

        uint256 profit = totalProfit - profitClaimed[msg.sender];
        bytes32 leaf = keccak256(abi.encode(block.chainid, address(this), msg.sender, totalProfit));
        if (!MerkleProof.verify(proof, profitMerkleRoot, leaf)) revert InvalidMerkleProof();

        profitClaimed[msg.sender] = totalProfit;
        IERC20(underlyingToken).safeTransfer(msg.sender, profit);

        emit ProfitClaimed(msg.sender, profit);
    }

    /// @notice Claim the withdrawal for the sender
    /// @param requestId The id of the withdrawal request to claim
    function claimWithdrawal(uint256 requestId) external nonReentrant whenNotPaused {
        uint256 withdrawalAmount = _claimWithdrawal(msg.sender, requestId);
        IERC20(underlyingToken).safeTransfer(msg.sender, withdrawalAmount);
    }

    /// @notice Batch claim the withdrawals for the sender
    /// @param requestIds The ids of the withdrawal requests to claim
    function batchClaimWithdrawal(uint256[] memory requestIds) external nonReentrant whenNotPaused {
        uint256 withdrawalAmount = 0;
        for (uint256 i = 0; i < requestIds.length; i++) {
            withdrawalAmount += _claimWithdrawal(msg.sender, requestIds[i]);
        }
        IERC20(underlyingToken).safeTransfer(msg.sender, withdrawalAmount);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setForwardTo(address _forwardTo) external onlyOwner {
        _setForwardTo(_forwardTo);
    }

    function setClaimDuration(uint256 _claimDuration) external onlyOwner {
        _setClaimDuration(_claimDuration);
    }

    function setDisputeDuration(uint256 _disputeDuration) external onlyOwner {
        _setDisputeDuration(_disputeDuration);
    }

    function disputeMerkleRoot() external onlyOperator {
        bytes32 root = _profitMerkleRoots.dispute();

        emit ProfitMerkleRootDropped(msg.sender, root);
    }

    function setMerkleRoot(bytes32 _profitMerkleRoot) external onlyOperator {
        _profitMerkleRoots.setMerkleRoot(_profitMerkleRoot, disputeDuration);

        emit ProfitMerkleRootSet(msg.sender, _profitMerkleRoot);
    }

    function addOperator(address _operator) external onlyOwner {
        _addOperator(_operator);
    }

    function removeOperator(address _operator) external onlyOwner {
        _removeOperator(_operator);
    }

    function _setForwardTo(address _forwardTo) private {
        if (_forwardTo == address(0)) revert ZeroAddress();
        if (_forwardTo == address(this)) revert SameAddress();

        forwardTo = _forwardTo;

        emit ForwardToSet(msg.sender, _forwardTo);
    }

    function _setClaimDuration(uint256 _claimDuration) private {
        if (_claimDuration == 0) revert ZeroValue();

        claimDuration = _claimDuration;

        emit ClaimDurationSet(msg.sender, _claimDuration);
    }

    function _setDisputeDuration(uint256 _disputeDuration) private {
        if (_disputeDuration == 0) revert ZeroValue();

        disputeDuration = _disputeDuration;

        emit DisputeDurationSet(msg.sender, _disputeDuration);
    }

    function _addOperator(address _operator) private {
        if (_operator == address(0)) revert ZeroAddress();

        bool success = _operators.add(_operator);
        if (!success) revert FailedToExec();

        emit OperatorAdded(msg.sender, _operator);
    }

    function _removeOperator(address _operator) private {
        if (_operator == address(0)) revert ZeroAddress();

        bool success = _operators.remove(_operator);
        if (!success) revert FailedToExec();

        emit OperatorRemoved(msg.sender, _operator);
    }

    function getOperators() public view returns (address[] memory) {
        return _operators.values();
    }

    function getLastValidProfitMerkleRoot() public view returns (bytes32) {
        return _profitMerkleRoots.getLastValidMerkleRoot();
    }

    function getLastProfitMerkleRootInfo() public view returns (bool inDispute, bytes32 root, uint256 disputeUntil) {
        return _profitMerkleRoots.getLastMerkleRootInfo();
    }

    function getUnstakePeriod() public view override returns (uint256) {
        return claimDuration;
    }

    function underlyingTokenBalance() public view override returns (uint256) {
        return IERC20(underlyingToken).balanceOf(address(this));
    }

    modifier onlyOperator() {
        if (!_operators.contains(msg.sender)) revert NotOperator();
        _;
    }
}
