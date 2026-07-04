pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import "./interfaces/IDepositTokenRegistry.sol";
import "./interfaces/IDepositManager.sol";
import "./interfaces/IPrestaking.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract Prestaking is
  Initializable,
  AccessControlUpgradeable,
  PausableUpgradeable,
  UUPSUpgradeable,
  ReentrancyGuardUpgradeable,
  IPrestaking
{
  using SafeERC20 for IERC20;
  using ECDSA for bytes32;
  using MessageHashUtils for bytes32;

  /// @notice Role identifier for administrative actions
  bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
  /// @notice Role identifier for operator actions like processing deposits
  bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
  /// @notice Role identifier for contract upgrade actions
  bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");
  /// @notice Role identifier for pausing contract functionality
  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
  /// @notice Role identifier for emergency operations
  bytes32 public constant EMERGENCY_ROLE = keccak256("EMERGENCY_ROLE");

  /// @notice Structure containing deposit information
  /// @param token The token address being deposited
  /// @param amount The amount of tokens deposited
  /// @param timestamp When the deposit was made
  /// @param minShares Minimum shares expected from this deposit
  /// @param processed Whether the deposit has been processed
  /// @param cancelled Whether the deposit has been cancelled
  struct Deposit {
    address token;
    uint256 amount;
    uint256 timestamp;
    uint256 minShares;
    bool processed;
    bool cancelled;
  }

  /// @notice Registry contract for managing deposit token whitelist
  IDepositTokenRegistry public depositTokenRegistry;
  /// @notice Contract handling the actual deposit processing
  IDepositManager public insuranceCapitalLayer;
  /// @notice Mapping of user addresses to their deposits
  mapping(address => Deposit[]) public userDeposits;
  /// @notice Total number of deposits made
  uint256 public totalDeposits;
  /// @notice Number of deposits that have been processed
  uint256 public processedDeposits;
  /// @notice Number of deposits that have been cancelled
  uint256 public cancelledDeposits;

  /// @notice Address authorized to sign deposit requests
  address public verifier;
  /// @notice Time period after which signatures expire
  uint256 public signatureExpiration;

  /// @notice Internal state tracking whether deposits are currently enabled
  bool private _depositsEnabled;

  /// @notice Error for invalid admin address
  error InvalidAdminAddress();
  /// @notice Error for invalid deposit token registry address
  error InvalidDepositTokenRegistryAddress();
  /// @notice Error for invalid emergency admin address
  error InvalidEmergencyAdminAddress();
  /// @notice Error for invalid insurance capital layer address
  error InvalidInsuranceCapitalLayerAddress();
  /// @notice Error for invalid verifier address
  error InvalidVerifierAddress();
  /// @notice Error for deposits being disabled
  error DepositsDisabled();
  /// @notice Error for token not accepted for deposit
  error TokenNotAcceptedForDeposit();
  /// @notice Error for deposit amount must be greater than zero
  error DepositAmountMustBeGreaterThanZero();
  /// @notice Error for maximum deposits per user reached
  error MaximumDepositsPerUserReached();
  /// @notice Error for when there is no token balance to withdraw
  error NoTokenBalanceToWithdraw();
  /// @notice Error for signature expired
  error SignatureExpired();
  /// @notice Error for invalid signature
  error InvalidSignature();
  /// @notice Error for signature already used
  error SignatureAlreadyUsed();
  /// @notice Error for caller not authorized
  error CallerNotAuthorized();
  /// @notice Error for invalid deposit index
  error InvalidDepositIndex();
  /// @notice Error for deposit already processed
  error DepositAlreadyProcessed();
  /// @notice Error for deposit already cancelled
  error DepositAlreadyCancelled();
  /// @notice Error for cancellation period expired
  error CancellationPeriodExpired();
  /// @notice Error for signature expiration too short
  error SignatureExpirationTooShort();
  /// @notice Error for signature expiration too long
  error SignatureExpirationTooLong();

  /// @notice Error for invalid recovery wallet address
  error InvalidRecoveryWalletAddress();

  /// @notice Total number of deposits ever made by each user (including cancelled)
  mapping(address => uint256) public totalUserDeposits;

  /// @notice Emitted when a new deposit is received
  /// @param user Address of the depositor
  /// @param token Address of the deposited token
  /// @param amount Amount of tokens deposited
  /// @param index Position in the user's deposit array
  event DepositReceived(
    address indexed user,
    address indexed token,
    uint256 amount,
    uint256 index
  );

  /// @notice Emitted when a deposit is processed
  /// @param user Address of the depositor
  /// @param token Address of the processed token
  /// @param amount Amount of tokens processed
  /// @param index Position in the user's deposit array
  event DepositProcessed(
    address indexed user,
    address indexed token,
    uint256 amount,
    uint256 index
  );

  /// @notice Emitted when multiple deposits are processed for a user
  /// @param user Address of the depositor
  /// @param count Number of deposits processed
  event DepositsProcessed(address indexed user, uint256 count);

  /// @notice Emitted when a deposit is cancelled
  /// @param user Address of the depositor
  /// @param token Address of the cancelled token
  /// @param amount Amount of tokens returned
  /// @param index Position in the user's deposit array
  event DepositCancelled(
    address indexed user,
    address indexed token,
    uint256 amount,
    uint256 index
  );

  /// @notice Emitted when tokens are emergency withdrawn
  /// @param token Address of the withdrawn token
  /// @param amount Amount of tokens withdrawn
  event EmergencyWithdrawal(address indexed token, uint256 amount);

  /// @notice Emitted when the deposit token registry is updated
  /// @param newRegistry Address of the new registry
  event DepositTokenRegistryUpdated(address indexed newRegistry);

  /// @notice Emitted when the verifier address is updated
  /// @param newVerifier Address of the new verifier
  event VerifierUpdated(address indexed newVerifier);

  /// @notice Emitted when the signature expiration period is updated
  /// @param newExpiration New expiration period in seconds
  event SignatureExpirationUpdated(uint256 newExpiration);

  /// @notice Minimum allowed signature expiration period (1 hour)
  uint256 public constant MIN_SIGNATURE_EXPIRATION = 1 hours;
  /// @notice Maximum allowed signature expiration period (30 days)
  uint256 public constant MAX_SIGNATURE_EXPIRATION = 30 days;

  /// @notice Maximum number of deposits allowed per user
  uint256 public constant MAX_DEPOSITS_PER_USER = 10;

  /// @notice Error thrown when signature is not from the authorized verifier
  error InvalidVerifier(address signer);

  /// @notice Address that will receive tokens in case of emergency withdrawal
  address public recoveryWallet;

  /// @dev Gap for future upgrades
  uint256[50] private __gap;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /// @notice Initializes the Prestaking contract
  /// @param _initialAdmin The address that will own the contract
  /// @param _depositTokenRegistry Address of the deposit token registry contract
  /// @param _insuranceCapitalLayer Address of the insurance capital layer contract
  /// @param _verifier Address authorized to sign deposit requests
  /// @param _recoveryWallet Address that will receive tokens in case of emergency withdrawal
  /// @param _emergencyAdmin Address that will have emergency withdrawal capabilities
  function initialize(
    address _initialAdmin,
    address _depositTokenRegistry,
    address _insuranceCapitalLayer,
    address _verifier,
    address _recoveryWallet,
    address _emergencyAdmin
  ) public initializer {
    if (_initialAdmin == address(0)) revert InvalidAdminAddress();
    if (_depositTokenRegistry == address(0))
      revert InvalidDepositTokenRegistryAddress();
    if (_insuranceCapitalLayer == address(0))
      revert InvalidInsuranceCapitalLayerAddress();
    if (_verifier == address(0)) revert InvalidVerifierAddress();
    if (_recoveryWallet == address(0)) revert InvalidRecoveryWalletAddress();
    if (_emergencyAdmin == address(0)) revert InvalidEmergencyAdminAddress();

    __AccessControl_init();
    __Pausable_init();
    __UUPSUpgradeable_init();
    __ReentrancyGuard_init();

    _grantRole(DEFAULT_ADMIN_ROLE, _initialAdmin);
    _grantRole(ADMIN_ROLE, _initialAdmin);
    _grantRole(UPGRADER_ROLE, _initialAdmin);
    _grantRole(PAUSER_ROLE, _initialAdmin);
    _grantRole(EMERGENCY_ROLE, _emergencyAdmin);

    depositTokenRegistry = IDepositTokenRegistry(_depositTokenRegistry);
    insuranceCapitalLayer = IDepositManager(_insuranceCapitalLayer);
    verifier = _verifier;
    signatureExpiration = 7 days;
    _depositsEnabled = false;
    recoveryWallet = _recoveryWallet;
  }

  /// @notice Requests a new deposit with a valid signature
  /// @param token The token address to deposit
  /// @param amount The amount of tokens to deposit
  /// @param minShares The minimum number of shares expected from this deposit
  /// @param timestamp The timestamp when the signature was created
  /// @param signature The signature from the verifier authorizing this deposit
  function requestDeposit(
    address token,
    uint256 amount,
    uint256 minShares,
    uint256 timestamp,
    bytes memory signature
  ) external whenNotPaused nonReentrant {
    if (!_depositsEnabled) revert DepositsDisabled();
    if (!depositTokenRegistry.isDepositEnabled(token))
      revert TokenNotAcceptedForDeposit();
    if (amount == 0) revert DepositAmountMustBeGreaterThanZero();
    if (userDeposits[msg.sender].length >= MAX_DEPOSITS_PER_USER)
      revert MaximumDepositsPerUserReached();
    if (block.timestamp > timestamp + signatureExpiration)
      revert SignatureExpired();

    bytes32 messageHash = getMessageHash(
      msg.sender,
      timestamp,
      totalUserDeposits[msg.sender]
    );

    bytes32 ethSignedMessageHash = messageHash.toEthSignedMessageHash();
    address signer = ECDSA.recover(ethSignedMessageHash, signature);
    if (signer != verifier) revert InvalidVerifier(signer);

    totalUserDeposits[msg.sender]++;

    userDeposits[msg.sender].push(
      Deposit({
        token: token,
        amount: amount,
        minShares: minShares,
        timestamp: block.timestamp,
        processed: false,
        cancelled: false
      })
    );

    totalDeposits++;

    IERC20(token).safeTransferFrom(msg.sender, address(this), amount);

    emit DepositReceived(
      msg.sender,
      token,
      amount,
      userDeposits[msg.sender].length - 1
    );
  }

  /// @notice Generates a message hash for signature verification
  /// @param _address The user address requesting the deposit
  /// @param _timestamp The timestamp of the request
  /// @param _totalDeposits The total number of deposits made by the user
  /// @return The keccak256 hash of the encoded parameters
  function getMessageHash(
    address _address,
    uint256 _timestamp,
    uint256 _totalDeposits
  ) public pure returns (bytes32) {
    return keccak256(abi.encode(_address, _timestamp, _totalDeposits));
  }

  /// @notice Allows a user or operator to cancel a deposit within the cancellation period
  /// @param user The address of the user whose deposit is being cancelled
  /// @param index The index of the deposit to cancel
  function cancelDeposit(address user, uint256 index) external whenNotPaused {
    if (msg.sender != user && !hasRole(OPERATOR_ROLE, msg.sender))
      revert CallerNotAuthorized();
    if (index >= userDeposits[user].length) revert InvalidDepositIndex();

    Deposit storage depositToCancel = userDeposits[user][index];
    if (depositToCancel.processed) revert DepositAlreadyProcessed();
    if (depositToCancel.cancelled) revert DepositAlreadyCancelled();

    depositToCancel.cancelled = true;
    cancelledDeposits++;

    IERC20(depositToCancel.token).safeTransfer(user, depositToCancel.amount);

    emit DepositCancelled(
      user,
      depositToCancel.token,
      depositToCancel.amount,
      index
    );
  }

  /// @notice Gets all pending deposits for a specific user
  /// @param user The address of the user
  /// @return An array of pending Deposit structs
  function getUserPendingDeposits(
    address user
  ) external view returns (Deposit[] memory) {
    Deposit[] storage deposits = userDeposits[user];
    uint256 count = 0;
    for (uint256 i = 0; i < deposits.length; i++) {
      if (!deposits[i].processed && !deposits[i].cancelled) {
        count++;
      }
    }

    Deposit[] memory pendingDeposits = new Deposit[](count);
    uint256 index = 0;
    for (uint256 i = 0; i < deposits.length; i++) {
      if (!deposits[i].processed && !deposits[i].cancelled) {
        pendingDeposits[index] = deposits[i];
        index++;
      }
    }

    return pendingDeposits;
  }

  /// @notice Processes all pending deposits for a specific user
  /// @param user The address of the user whose deposits should be processed
  function processDeposits(address user) external whenNotPaused nonReentrant {
    if (msg.sender != user && !hasRole(OPERATOR_ROLE, msg.sender))
      revert CallerNotAuthorized();

    Deposit[] storage deposits = userDeposits[user];
    uint256 processed = 0;

    for (uint256 i = 0; i < deposits.length; i++) {
      if (!deposits[i].processed && !deposits[i].cancelled) {
        deposits[i].processed = true;
        processedDeposits++;

        IERC20(deposits[i].token).forceApprove(
          address(insuranceCapitalLayer),
          deposits[i].amount
        );

        insuranceCapitalLayer.processPrestakedDeposit(
          deposits[i].token,
          deposits[i].amount,
          deposits[i].minShares,
          user
        );

        emit DepositProcessed(user, deposits[i].token, deposits[i].amount, i);
        processed++;
      }
    }

    if (processed > 0) {
      emit DepositsProcessed(user, processed);
    }
  }

  /// @notice Returns the total number of deposits that are still pending
  /// @return The count of pending deposits
  function getPendingDepositsCount() external view returns (uint256) {
    return totalDeposits - processedDeposits - cancelledDeposits;
  }

  /// @notice Updates the deposit token registry address
  /// @param _newRegistry The address of the new deposit token registry
  function setDepositTokenRegistry(
    address _newRegistry
  ) external onlyRole(ADMIN_ROLE) {
    if (_newRegistry == address(0)) revert InvalidDepositTokenRegistryAddress();
    depositTokenRegistry = IDepositTokenRegistry(_newRegistry);
    emit DepositTokenRegistryUpdated(_newRegistry);
  }

  /// @notice Updates the verifier address
  /// @param _newVerifier The address of the new verifier
  function setVerifier(address _newVerifier) external onlyRole(ADMIN_ROLE) {
    if (_newVerifier == address(0)) revert InvalidVerifierAddress();
    verifier = _newVerifier;
    emit VerifierUpdated(_newVerifier);
  }

  /// @notice Pauses the contract
  function pause() external onlyRole(PAUSER_ROLE) {
    _pause();
  }

  /// @notice Unpauses the contract
  function unpause() external onlyRole(PAUSER_ROLE) {
    _unpause();
  }

  /// @notice Authorizes the upgrade of the contract
  /// @param newImplementation The address of the new implementation
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyRole(UPGRADER_ROLE) {}

  /// @notice Enables deposits for the contract
  function enableDeposits() external onlyRole(ADMIN_ROLE) {
    _depositsEnabled = true;
  }

  /// @notice Disables deposits for the contract
  function disableDeposits() external onlyRole(ADMIN_ROLE) {
    _depositsEnabled = false;
  }

  /// @notice Returns whether deposits are currently enabled
  /// @return true if deposits are enabled, false otherwise
  function depositsEnabled() external view returns (bool) {
    return _depositsEnabled;
  }

  /// @notice Updates the signature expiration period
  /// @param _newExpiration New expiration period in seconds
  /// @dev Must be between MIN_SIGNATURE_EXPIRATION and MAX_SIGNATURE_EXPIRATION
  function setSignatureExpiration(
    uint256 _newExpiration
  ) external onlyRole(ADMIN_ROLE) {
    if (_newExpiration < MIN_SIGNATURE_EXPIRATION)
      revert SignatureExpirationTooShort();
    if (_newExpiration > MAX_SIGNATURE_EXPIRATION)
      revert SignatureExpirationTooLong();
    signatureExpiration = _newExpiration;
    emit SignatureExpirationUpdated(_newExpiration);
  }

  /// @notice Allows emergency role to withdraw tokens in case of emergency
  /// @param token The token address to withdraw
  function emergencyWithdraw(
    address token
  ) external onlyRole(EMERGENCY_ROLE) whenPaused nonReentrant {
    uint256 balance = IERC20(token).balanceOf(address(this));
    if (balance == 0) revert NoTokenBalanceToWithdraw();

    IERC20(token).safeTransfer(recoveryWallet, balance);

    emit EmergencyWithdrawal(token, balance);
  }
}
