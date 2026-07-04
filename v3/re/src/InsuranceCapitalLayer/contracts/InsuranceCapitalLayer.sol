//SPDX-License-Identifier:ISC
pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IKYCRegistry} from "./interfaces/IKYCRegistry.sol";
import {IPool} from "./interfaces/IPool.sol";
import {IPoolRegistry} from "./interfaces/IPoolRegistry.sol";
import {IInsuranceCapitalLayer} from "./interfaces/IInsuranceCapitalLayer.sol";
import {IDecentralizedFund} from "./interfaces/IDecentralizedFund.sol";
import {ShareToken} from "./token/ShareToken.sol";
import {ConvertDecimals} from "./utils/ConvertDecimals.sol";
import {IDepositTokenRegistry} from "./interfaces/IDepositTokenRegistry.sol";
import {ISharePriceCalculator} from "./interfaces/ISharePriceCalculator.sol";
import {ICollateralTokenHandler} from "./interfaces/ICollateralTokenHandler.sol";
import {IWETH} from "./interfaces/IWETH.sol";
import {IRedemptionTokenHandler} from "./interfaces/IRedemptionTokenHandler.sol";
import {IDepositManager} from "./interfaces/IDepositManager.sol";
import {IERC20Errors} from "@openzeppelin/contracts/interfaces/draft-IERC6093.sol";
import {ICustodyManager} from "./interfaces/ICustodyManager.sol";
import "./errors/InsuranceCapitalLayerErrors.sol";

contract InsuranceCapitalLayer is
  Initializable,
  ReentrancyGuardUpgradeable,
  AccessControlUpgradeable,
  PausableUpgradeable,
  UUPSUpgradeable,
  IDepositManager,
  ICollateralTokenHandler,
  IRedemptionTokenHandler,
  ICustodyManager
{
  using SafeERC20 for IERC20;
  /////////////////////
  /// Configuration ///
  /////////////////////
  /// @notice Role identifier for operators who can manage core functionality
  bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
  /// @notice Role identifier for administrators with elevated privileges
  bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
  /// @notice Role identifier for fee managers who can adjust and claim fees
  bytes32 public constant FEE_MANAGER_ROLE = keccak256("FEE_MANAGER_ROLE");
  /// @notice Role identifier for custodian managers who can add/remove custodians
  bytes32 public constant CUSTODIAN_MANAGER_ROLE =
    keccak256("CUSTODIAN_MANAGER_ROLE");
  /// @notice Role identifier for collateral managers who handle collateral operations
  bytes32 public constant COLLATERAL_MANAGER_ROLE =
    keccak256("COLLATERAL_MANAGER_ROLE");
  /// @notice Role identifier for users who can pause the contract
  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
  /// @notice Role identifier for custodians who can deposit assets back
  bytes32 public constant CUSTODIAN_ROLE = keccak256("CUSTODIAN_ROLE");
  /// @notice Role identifier for upgraders who can upgrade the contract
  bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");

  /// @notice ShareToken contract reference
  /// @dev Immutable after deployment
  ShareToken public shareToken;

  /// @notice KYC registry contract reference for user verification
  IKYCRegistry public kycRegistry;

  /// @notice Name of the insurance capital layer
  string public name;
  /// @notice Symbol of the insurance capital layer
  string public symbol;

  /// @notice Mapping of total deposit fees collected per token
  mapping(address => uint256) private _totalDepositFeeAmount;

  /// @notice Last claimed deposit fee amount
  /// @dev Updated only when fees are claimed
  uint public lastClaimedDepositFeeAmount;

  /// @notice Flag indicating if deposits are enabled
  bool private _depositEnabled;

  /// @notice Registry for managing deposit tokens
  IDepositTokenRegistry public depositTokenRegistry;

  /// @notice Calculator for share price conversions
  ISharePriceCalculator public sharePriceCalculator;

  /// @notice Address of the collateral manager
  address public collateralManager;

  /// @notice Address of the redemption manager
  address public redemptionManager;

  /// @notice Mapping of custodians for each token
  /// @dev token address => array of custodian addresses
  mapping(address => address[]) public custodians;

  // Add state variables for tracking
  mapping(address => uint256) public userRedemptionDeposits;
  uint256 public contractShareTokenBalance;
  mapping(address => uint256) private _lockedRedemptionTokens;
  mapping(address => uint256) private _lockedCollateralTokens;

  mapping(address => mapping(address => uint256))
    private _totalDepositsFromCustodian;
  mapping(address => mapping(address => uint256))
    private _totalWithdrawalsToCustodian;

  // Add near the top with other state variables
  bool private _shareTokenSet;

  // Add event for transparency
  event ShareTokenSet(address indexed token);

  // Add error
  error ShareTokenAlreadySet();

  //////////////
  /// EVENTS ///
  //////////////

  /**
   * @notice Emitted when deposit fees are claimed
   * @param token The token address the fees were claimed for
   * @param recipient The address that received the fees
   * @param amount The amount of fees claimed
   */
  event DepositFeeClaimed(
    address indexed token,
    address indexed recipient,
    uint256 amount
  );

  event CollateralTokensLocked(address indexed token, uint256 amount);

  event CollateralTokensUnlocked(address indexed token, uint256 amount);

  /**
   * @notice Emitted when a user deposits tokens into the insurance capital layer
   * @param user Address of the user making the deposit
   * @param token Address of the token being deposited
   * @param amount Amount of tokens deposited
   */
  event Deposited(address user, address token, uint amount);

  /**
   * @notice Emitted when tokens are deposited into a pool
   * @param pool Address of the pool receiving the deposit
   * @param amount Amount of tokens deposited into the pool
   */
  event DepositedToPool(address pool, uint amount);

  /**
   * @notice Emitted when tokens are withdrawn from a pool
   * @param pool Address of the pool tokens are withdrawn from
   * @param amount Amount of tokens withdrawn
   */
  event WithdrawnFromPool(address pool, uint amount);

  /**
   * @notice Emitted when the collateral manager address is updated
   * @param collateralManager New address of the collateral manager
   */
  event CollateralManagerUpdated(address collateralManager);

  /**
   * @notice Emitted when a new custodian is added for a token
   * @param token Address of the token the custodian is added for
   * @param custodian Address of the newly added custodian
   */
  event CustodianAdded(address indexed token, address indexed custodian);

  /**
   * @notice Emitted when a custodian is removed for a token
   * @param token Address of the token the custodian is removed from
   * @param custodian Address of the removed custodian
   */
  event CustodianRemoved(address indexed token, address indexed custodian);

  /////////////////
  /// MODIFIERS ///
  /////////////////
  /// @notice Modifier to ensure only KYC approved users can access certain functions
  modifier onlyKYCUser() {
    if (!kycRegistry.isKYCApproved(msg.sender)) {
      revert OnlyApprovedKYCUser();
    }
    _;
  }

  /// @notice Modifier to validate token address
  modifier validToken(address token) {
    if (token == address(0)) {
      revert InvalidToken(token);
    }
    _;
  }

  /// @notice Modifier to validate amount
  modifier validAmount(uint256 amount) {
    if (amount == 0) {
      revert InvalidAmount(amount);
    }
    _;
  }

  /// @notice Modifier to validate custodian for token
  modifier validCustodian(address custodian, address token) {
    if (custodian == address(0) || !isCustodian(token, custodian)) {
      revert InvalidCustodian(custodian, token);
    }
    _;
  }

  modifier onlyCollateralManager() {
    if (msg.sender != collateralManager) {
      revert OnlyCollateralManager();
    }
    _;
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() initializer {}

  function initialize(
    address initialAdmin_,
    string memory tokenName,
    string memory tokenSymbol,
    address kycRegistry_,
    address operator_,
    address depositTokenRegistry_,
    address _sharePriceCalculator
  ) public initializer {
    __ReentrancyGuard_init();
    __AccessControl_init();
    __Pausable_init();
    __UUPSUpgradeable_init();

    if (initialAdmin_ == address(0)) revert InvalidAdminAddress();
    if (kycRegistry_ == address(0)) revert InvalidKYCRegistryAddress();
    if (operator_ == address(0)) revert InvalidOperatorAddress();
    if (depositTokenRegistry_ == address(0)) revert InvalidRegistryAddress();
    if (_sharePriceCalculator == address(0)) revert InvalidCalculatorAddress();

    kycRegistry = IKYCRegistry(kycRegistry_);

    depositTokenRegistry = IDepositTokenRegistry(depositTokenRegistry_);
    sharePriceCalculator = ISharePriceCalculator(_sharePriceCalculator);

    _grantRole(DEFAULT_ADMIN_ROLE, initialAdmin_);
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

    _grantRole(OPERATOR_ROLE, operator_);
    _grantRole(OPERATOR_ROLE, msg.sender);

    _grantRole(UPGRADER_ROLE, initialAdmin_);
  }

  /// @dev Authorization function for UUPS upgrade
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyRole(UPGRADER_ROLE) {}

  // Add a storage gap for future upgrades
  uint256[50] private __gap;

  /**
   * @notice Simulates a deposit operation without executing it
   * @dev This function calculates the expected shares and fees for a potential deposit
   * @param token The address of the token to deposit
   * @param amount The amount of tokens to deposit
   * @return shares The amount of shares that would be minted
   * @return depositFees The amount of fees that would be charged
   * @return isAllowed Whether the deposit would be allowed
   * @return errorMessage A descriptive message if the deposit would fail, empty string if successful
   */
  function previewDeposit(
    address token,
    uint256 amount
  )
    external
    view
    whenNotPaused
    returns (
      uint256 shares,
      uint256 depositFees,
      bool isAllowed,
      string memory errorMessage
    )
  {
    // Check if deposit is enabled
    if (!_depositEnabled) {
      return (0, 0, false, "Deposit is not enabled");
    }

    // Check if token deposit is enabled
    if (!depositTokenRegistry.isDepositEnabled(token)) {
      return (0, 0, false, "Token deposit not enabled");
    }

    // Check if amount is valid
    if (amount == 0) {
      return (0, 0, false, "Invalid amount");
    }

    // Calculate deposit fee using DepositTokenRegistry
    try depositTokenRegistry.previewDepositFees(token, amount) returns (
      uint256 fees
    ) {
      depositFees = fees;
    } catch Error(string memory reason) {
      return (0, 0, false, reason);
    } catch {
      return (0, 0, false, "Error calculating fees");
    }

    uint256 amountAfterFee = amount - depositFees;

    // Calculate shares
    try sharePriceCalculator.convertToShares(token, amountAfterFee) returns (
      uint256 calculatedShares
    ) {
      shares = calculatedShares;
      isAllowed = true;
      errorMessage = "";
    } catch Error(string memory reason) {
      return (0, 0, false, reason);
    } catch {
      return (0, 0, false, "Error calculating shares");
    }
  }

  function pause() external onlyRole(PAUSER_ROLE) {
    _pause();
  }

  function unpause() external onlyRole(PAUSER_ROLE) {
    _unpause();
  }

  // Update the _processDeposit function to use the new fee calculation
  function _processDeposit(
    address token,
    uint amount,
    uint minShares,
    address receiver
  ) internal whenNotPaused {
    if (!_depositEnabled) {
      revert DepositNotEnabled();
    }
    if (amount == 0) {
      revert InvalidAmount(amount);
    }
    if (!depositTokenRegistry.isDepositEnabled(token)) {
      revert TokenNotEnabledForDeposit(token);
    }

    uint depositFeeAmount = depositTokenRegistry.previewDepositFees(
      token,
      amount
    );
    uint amountAfterFee = amount - depositFeeAmount;

    uint shareAmount = sharePriceCalculator.convertToShares(
      token,
      amountAfterFee
    );
    if (shareAmount < minShares) {
      revert InsufficientShares(shareAmount, minShares);
    }

    _totalDepositFeeAmount[token] += depositFeeAmount;

    IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
    shareToken.mint(receiver, shareAmount);

    emit Deposited(msg.sender, token, amount);
  }

  /**
   * @dev Deposit tokens to insurance capital layer
   * @param token Address of the token to deposit
   * @param amount Token amount to deposit
   */
  function deposit(
    address token,
    uint amount,
    uint minShares
  ) external nonReentrant whenNotPaused onlyKYCUser {
    _processDeposit(token, amount, minShares, msg.sender);
  }

  /**
   * @dev Deposit native token (ETH) to insurance capital layer
   * @param minShares Minimum shares expected to receive
   */
  function depositNative(
    uint minShares
  ) external payable nonReentrant whenNotPaused onlyKYCUser {
    if (msg.value == 0) {
      revert NoNativeTokenSent();
    }
    if (!_depositEnabled) {
      revert DepositNotEnabled();
    }
    address token = depositTokenRegistry.getWrappedNative();
    if (!depositTokenRegistry.isDepositEnabled(token)) {
      revert TokenNotEnabledForDeposit(token);
    }

    uint depositFeeAmount = depositTokenRegistry.previewDepositFees(
      token,
      msg.value
    );
    uint amountAfterFee = msg.value - depositFeeAmount;

    uint shareAmount = sharePriceCalculator.convertToShares(
      token,
      amountAfterFee
    );
    if (shareAmount < minShares) {
      revert InsufficientShares(shareAmount, minShares);
    }

    _totalDepositFeeAmount[token] += depositFeeAmount;

    shareToken.mint(msg.sender, shareAmount);
    IWETH(token).deposit{value: msg.value}();

    emit Deposited(msg.sender, token, msg.value);
  }

  /**
   * @dev Deposit tokens to insurance capital layer
   * @param token Address of the token to deposit
   * @param amount Token amount to deposit
   */
  function processPrestakedDeposit(
    address token,
    uint amount,
    uint minShares,
    address receiver
  ) external nonReentrant whenNotPaused {
    if (!kycRegistry.isKYCApproved(receiver)) {
      revert OnlyApprovedKYCUser();
    }
    _processDeposit(token, amount, minShares, receiver);
  }

  /**
   * @dev Set Deposit enabled or not
   * @param depositEnabled_ new deposit enabled value to be set
   */
  function setDepositEnabled(
    bool depositEnabled_
  ) external whenNotPaused onlyRole(OPERATOR_ROLE) {
    if (_depositEnabled == depositEnabled_) {
      revert DepositStateAlreadySet(depositEnabled_);
    }
    _depositEnabled = depositEnabled_;
  }

  function setKycRegistry(
    address kycRegistry_
  ) external whenNotPaused onlyRole(OPERATOR_ROLE) {
    if (kycRegistry_ == address(0)) {
      revert InvalidKYCRegistryAddress();
    }
    kycRegistry = IKYCRegistry(kycRegistry_);
  }

  /**
   * @notice Simulates a mint operation without executing it
   * @dev This function calculates the required token amount and fees to mint a specific number of shares
   * @param token The address of the token to be deposited
   * @param shares The amount of shares to be minted
   * @return amount The total amount of tokens required (including fees)
   * @return depositFees The amount of fees that would be charged
   * @return isAllowed Whether the mint operation would be allowed
   * @return errorMessage A descriptive message if the mint would fail, empty string if successful
   */
  function previewMint(
    address token,
    uint256 shares
  )
    external
    view
    whenNotPaused
    returns (
      uint256 amount,
      uint256 depositFees,
      bool isAllowed,
      string memory errorMessage
    )
  {
    // Check if deposit is enabled
    if (!_depositEnabled) {
      return (0, 0, false, "Deposit is not enabled");
    }

    // Check if token deposit is enabled
    if (!depositTokenRegistry.isDepositEnabled(token)) {
      return (0, 0, false, "Token deposit not enabled");
    }

    // Check if shares is valid
    if (shares == 0) {
      return (0, 0, false, "Invalid shares amount");
    }

    // Calculate token amount from shares without fees
    uint256 baseAmount;
    try sharePriceCalculator.convertFromShares(token, shares) returns (
      uint256 calculatedAmount
    ) {
      baseAmount = calculatedAmount;
    } catch Error(string memory reason) {
      return (0, 0, false, reason);
    } catch {
      return (0, 0, false, "Error calculating token amount");
    }

    // Calculate fees
    try depositTokenRegistry.previewMintFees(token, baseAmount) returns (
      uint256 fees
    ) {
      depositFees = fees;
      amount = baseAmount + fees;
      isAllowed = true;
      errorMessage = "";
    } catch Error(string memory reason) {
      return (baseAmount, 0, false, reason);
    } catch {
      return (baseAmount, 0, false, "Error calculating fees");
    }

    return (amount, depositFees, isAllowed, errorMessage);
  }

  /**
   * @notice Converts a token amount to the equivalent number of shares
   * @dev Uses the sharePriceCalculator to determine the conversion rate
   * @param token The address of the token to convert from
   * @param amount The amount of tokens to convert
   * @return The number of shares equivalent to the given token amount
   */
  function convertToShares(
    address token,
    uint256 amount
  ) external view whenNotPaused returns (uint256) {
    return sharePriceCalculator.convertToShares(token, amount);
  }

  function convertFromShares(
    address token,
    uint256 shares
  ) external view whenNotPaused returns (uint256) {
    return sharePriceCalculator.convertFromShares(token, shares);
  }

  function setDepositTokenRegistry(
    address depositTokenRegistry_
  ) external whenNotPaused onlyRole(OPERATOR_ROLE) {
    if (depositTokenRegistry_ == address(0)) {
      revert InvalidRegistryAddress();
    }
    depositTokenRegistry = IDepositTokenRegistry(depositTokenRegistry_);
  }

  function setSharePriceCalculator(
    address sharePriceCalculator_
  ) external whenNotPaused onlyRole(OPERATOR_ROLE) {
    if (sharePriceCalculator_ == address(0)) {
      revert InvalidCalculatorAddress();
    }
    sharePriceCalculator = ISharePriceCalculator(sharePriceCalculator_);
  }

  /**
   * @dev Sets the collateral manager address
   * @param _collateralManager The new collateral manager address
   */
  function setCollateralManager(
    address _collateralManager
  ) external whenNotPaused onlyRole(OPERATOR_ROLE) {
    if (_collateralManager == address(0)) {
      revert InvalidCollateralManagerAddress();
    }
    collateralManager = _collateralManager;
    emit CollateralManagerUpdated(_collateralManager);
  }

  /**
   * @dev Sets the redemption manager address
   * @param _redemptionManager The new redemption manager address
   */
  function setRedemptionManager(
    address _redemptionManager
  ) external whenNotPaused onlyRole(OPERATOR_ROLE) {
    if (_redemptionManager == address(0)) {
      revert InvalidRedemptionManagerAddress();
    }
    redemptionManager = _redemptionManager;
  }

  function depositEnabled() external view returns (bool) {
    return _depositEnabled;
  }

  /**
   * @dev Add a custodian for a specific token
   * @param token The address of the token
   * @param custodian The address of the custodian
   */
  function addCustodian(
    address token,
    address custodian
  ) external whenNotPaused onlyRole(CUSTODIAN_MANAGER_ROLE) {
    if (token == address(0)) {
      revert InvalidToken(token);
    }
    if (custodian == address(0)) {
      revert InvalidCustodian(custodian, token);
    }
    if (isCustodian(token, custodian)) {
      revert CustodianAlreadySet(custodian, token);
    }

    custodians[token].push(custodian);
    emit CustodianAdded(token, custodian);
  }

  /**
   * @dev Remove a custodian for a specific token
   * @param token The address of the token
   * @param custodian The address of the custodian
   */
  function removeCustodian(
    address token,
    address custodian
  ) external whenNotPaused onlyRole(CUSTODIAN_MANAGER_ROLE) {
    if (token == address(0)) {
      revert InvalidToken(token);
    }
    if (custodian == address(0)) {
      revert InvalidCustodian(custodian, token);
    }

    address[] storage tokenCustodians = custodians[token];
    for (uint i = 0; i < tokenCustodians.length; i++) {
      if (tokenCustodians[i] == custodian) {
        tokenCustodians[i] = tokenCustodians[tokenCustodians.length - 1];
        tokenCustodians.pop();
        emit CustodianRemoved(token, custodian);
        return;
      }
    }
    revert InvalidCustodian(custodian, token);
  }

  /**
   * @dev Check if a custodian is valid for a token
   * @param token The address of the token
   * @param custodian The address of the custodian
   * @return True if the custodian is valid for the token, false otherwise
   */
  function isCustodian(
    address token,
    address custodian
  ) public view whenNotPaused returns (bool) {
    address[] memory tokenCustodians = custodians[token];
    for (uint i = 0; i < tokenCustodians.length; i++) {
      if (tokenCustodians[i] == custodian) {
        return true;
      }
    }
    return false;
  }

  /**
   * @dev Get the list of custodians for a specific token
   * @param token The address of the token
   * @return An array of custodian addresses
   */
  function getCustodiansForToken(
    address token
  ) external view whenNotPaused returns (address[] memory) {
    return custodians[token];
  }

  /**
   * @dev Transfer a specified token and amount to the designated custodian
   * @param custodian The address of the custodian
   * @param token The address of the token to transfer
   * @param amount The amount of tokens to transfer
   */
  function withdrawToCustodian(
    address custodian,
    address token,
    uint256 amount
  )
    external
    onlyRole(OPERATOR_ROLE)
    nonReentrant
    whenNotPaused
    validToken(token)
    validAmount(amount)
    validCustodian(custodian, token)
  {
    uint256 availableBalance = IERC20(token).balanceOf(address(this)) -
      _lockedRedemptionTokens[token] -
      _lockedCollateralTokens[token];
    if (availableBalance < amount) {
      revert InsufficientAvailableBalance(availableBalance, amount);
    }

    _totalWithdrawalsToCustodian[token][custodian] += amount;

    IERC20(token).safeTransfer(custodian, amount);
    emit AssetWithdrawnToCustodian(custodian, token, amount, block.timestamp);
  }

  /**
   * @dev Receive tokens back from a custodian
   * @param token The address of the token being deposited
   * @param amount The amount of tokens to deposit
   */
  function depositFromCustodian(
    address token,
    uint256 amount
  )
    external
    nonReentrant
    whenNotPaused
    validToken(token)
    validAmount(amount)
    validCustodian(msg.sender, token)
  {
    if (IERC20(token).allowance(msg.sender, address(this)) < amount) {
      revert InsufficientAllowance(
        msg.sender,
        IERC20(token).allowance(msg.sender, address(this)),
        amount
      );
    }

    _totalDepositsFromCustodian[token][msg.sender] += amount;

    IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
    emit AssetDepositedFromCustodian(
      msg.sender,
      token,
      amount,
      block.timestamp
    );
  }

  // Add view functions to query the totals
  function getTotalDepositsFromCustodian(
    address token,
    address custodian
  ) external view returns (uint256) {
    return _totalDepositsFromCustodian[token][custodian];
  }

  function getTotalWithdrawalsToCustodian(
    address token,
    address custodian
  ) external view returns (uint256) {
    return _totalWithdrawalsToCustodian[token][custodian];
  }

  /**
   * @notice Get the net balance position of a custodian for a specific token
   * @param token The address of the token
   * @param custodian The address of the custodian
   * @return withdrawals Total withdrawals to custodian
   * @return deposits Total deposits from custodian
   * @return netBalance Net balance position (deposits - withdrawals)
   */
  function getCustodianNetPosition(
    address token,
    address custodian
  )
    external
    view
    returns (uint256 withdrawals, uint256 deposits, int256 netBalance)
  {
    withdrawals = _totalWithdrawalsToCustodian[token][custodian];
    deposits = _totalDepositsFromCustodian[token][custodian];
    netBalance = int256(deposits) - int256(withdrawals);
    return (withdrawals, deposits, netBalance);
  }

  /**
   * @dev Transfer tokens to a recipient
   * @param token The address of the token to transfer
   * @param recipient The address of the recipient
   * @param amount The amount of tokens to transfer
   */
  function transferTokens(
    address token,
    address recipient,
    uint256 amount
  ) external override nonReentrant whenNotPaused {
    if (msg.sender != collateralManager) {
      revert OnlyCollateralManager();
    }
    if (token == address(0)) {
      revert InvalidToken(token);
    }
    if (recipient == address(0)) {
      revert InvalidRecipient(recipient);
    }
    if (amount == 0) {
      revert InvalidAmount(amount);
    }

    uint256 balance = IERC20(token).balanceOf(address(this));

    if (balance < amount) {
      revert InsufficientAvailableBalance(balance, amount);
    }

    IERC20(token).safeTransfer(recipient, amount);
  }

  /**
   * @dev Receives tokens into InsuranceCapitalLayer from a sender.
   * @param token The address of the ERC20 token.
   * @param from The sender address.
   * @param amount The amount of tokens to receive.
   */
  function receiveTokens(
    address token,
    address from,
    uint256 amount
  ) external nonReentrant whenNotPaused {
    if (msg.sender != collateralManager) {
      revert OnlyCollateralManager();
    }
    if (token == address(0)) {
      revert InvalidToken(token);
    }
    if (from == address(0)) {
      revert InvalidSender(from);
    }
    if (amount == 0) {
      revert InvalidAmount(amount);
    }
    if (IERC20(token).allowance(from, address(this)) < amount) {
      revert InsufficientAllowance(
        from,
        IERC20(token).allowance(from, address(this)),
        amount
      );
    }

    IERC20(token).safeTransferFrom(from, address(this), amount);
  }

  /**
   * @notice Receives share tokens from a user into the contract for redemption
   * @param from The address sending the share tokens
   * @param amount The amount of share tokens to receive
   */
  function receiveShareTokens(
    address from,
    uint256 amount
  ) external override nonReentrant whenNotPaused {
    if (msg.sender != redemptionManager) {
      revert OnlyRedemptionManager();
    }
    if (from == address(0)) {
      revert InvalidSender(from);
    }
    if (amount == 0) {
      revert InvalidAmount(amount);
    }
    if (IERC20(address(shareToken)).allowance(from, address(this)) < amount) {
      revert InsufficientAllowance(
        from,
        IERC20(address(shareToken)).allowance(from, address(this)),
        amount
      );
    }
    // Update tracking state
    userRedemptionDeposits[from] += amount;
    contractShareTokenBalance += amount;

    // Transfer tokens
    IERC20(address(shareToken)).safeTransferFrom(from, address(this), amount);

    emit ShareTokensReceived(from, amount);
  }

  /**
   * @notice Burns share tokens from the contract after redemption
   * @param amount The amount of share tokens to burn
   */
  function burnShareTokens(
    uint256 amount
  ) external override nonReentrant whenNotPaused {
    if (msg.sender != redemptionManager) {
      revert OnlyRedemptionManager();
    }
    if (amount == 0) {
      revert InvalidAmount(amount);
    }
    if (IERC20(address(shareToken)).balanceOf(address(this)) < amount) {
      revert InsufficientBalance(
        IERC20(address(shareToken)).balanceOf(address(this)),
        amount
      );
    }
    // Only update contract balance, not user deposits
    contractShareTokenBalance -= amount;

    // Burn tokens
    shareToken.burn(address(this), amount);

    emit ShareTokensBurned(amount);
  }

  /**
   * @notice Transfers redemption tokens to a user
   * @param token The address of the redemption token to transfer
   * @param to The address receiving the redemption tokens
   * @param amount The amount of redemption tokens to transfer
   */
  function transferRedemptionTokens(
    address token,
    address to,
    uint256 amount
  ) external override nonReentrant whenNotPaused {
    if (msg.sender != redemptionManager) {
      revert OnlyRedemptionManager();
    }
    if (to == address(0)) {
      revert InvalidRecipient(to);
    }
    if (amount == 0) {
      revert InvalidAmount(amount);
    }
    if (_lockedRedemptionTokens[token] < amount) {
      revert InsufficientLockedRedeemableBalance(
        token,
        _lockedRedemptionTokens[token],
        amount
      );
    }

    _lockedRedemptionTokens[token] -= amount;
    IERC20(token).safeTransfer(to, amount);

    emit RedemptionTokensTransferred(token, to, amount);
  }

  /**
   * @notice Transfers share tokens back to a user (e.g., on redemption cancellation)
   * @param to The address receiving the share tokens back
   * @param amount The amount of share tokens to transfer back
   */
  function transferShareTokens(
    address to,
    uint256 amount
  ) external override nonReentrant whenNotPaused {
    if (msg.sender != redemptionManager) {
      revert OnlyRedemptionManager();
    }
    if (to == address(0)) {
      revert InvalidRecipient(to);
    }
    if (amount == 0) {
      revert InvalidAmount(amount);
    }
    if (IERC20(address(shareToken)).balanceOf(address(this)) < amount) {
      revert InsufficientBalance(
        IERC20(address(shareToken)).balanceOf(address(this)),
        amount
      );
    }

    // Update tracking state
    userRedemptionDeposits[to] -= amount;
    contractShareTokenBalance -= amount;

    // Transfer tokens
    IERC20(address(shareToken)).safeTransfer(to, amount);

    emit ShareTokensTransferred(to, amount);
  }

  // Add events for tracking
  event ShareTokensReceived(address indexed from, uint256 amount);
  event ShareTokensBurned(uint256 amount);
  event ShareTokensTransferred(address indexed to, uint256 amount);

  /**
   * @notice Returns the amount of tokens locked for redemption rounds
   * @param token The token address to query
   * @return lockedAmount The amount of tokens locked
   * @return availableAmount The amount of tokens available for new rounds
   */
  function getRedemptionTokenStatus(
    address token
  ) external view returns (uint256 lockedAmount, uint256 availableAmount) {
    lockedAmount = _lockedRedemptionTokens[token];
    availableAmount = IERC20(token).balanceOf(address(this)) - lockedAmount;
    return (lockedAmount, availableAmount);
  }

  /**
   * @notice Locks redemption tokens for a round
   * @dev Can only be called by the redemption manager
   * @param token The token to lock
   * @param amount The amount to lock
   */
  function lockRedemptionTokens(
    address token,
    uint256 amount
  ) external override nonReentrant whenNotPaused {
    if (msg.sender != redemptionManager) {
      revert OnlyRedemptionManager();
    }
    uint256 currentBalance = IERC20(token).balanceOf(address(this));
    uint256 requiredBalance = amount +
      _lockedRedemptionTokens[token] +
      _lockedCollateralTokens[token];
    if (currentBalance < requiredBalance) {
      revert InsufficientAvailableBalance(currentBalance, requiredBalance);
    }

    _lockedRedemptionTokens[token] += amount;

    emit RedemptionTokensLocked(token, amount);
  }

  // Add events
  event RedemptionTokensLocked(address indexed token, uint256 amount);
  event RedemptionTokensTransferred(
    address indexed token,
    address indexed to,
    uint256 amount
  );

  /**
   * @notice Returns the total amount of deposit fees collected for a specific token
   * @param token The address of the token to query
   * @return The total amount of deposit fees for the token
   */
  function getTotalDepositFeeAmount(
    address token
  ) external view returns (uint256) {
    if (token == address(0)) {
      revert InvalidToken(token);
    }
    return _totalDepositFeeAmount[token];
  }

  /**
   * @notice Claims accumulated deposit fees for a specific token
   * @param token The address of the token to claim fees for
   * @param recipient The address to receive the claimed fees
   * @return amount The amount of fees claimed
   */
  function claimDepositFees(
    address token,
    address recipient
  )
    external
    nonReentrant
    whenNotPaused
    onlyRole(FEE_MANAGER_ROLE)
    returns (uint256)
  {
    if (token == address(0)) {
      revert InvalidToken(token);
    }
    if (recipient == address(0)) {
      revert InvalidRecipient(recipient);
    }

    uint256 feeAmount = _totalDepositFeeAmount[token];
    if (feeAmount == 0) {
      revert NoFeesToClaim();
    }

    // Reset fee amount before transfer to prevent reentrancy
    _totalDepositFeeAmount[token] = 0;

    // Transfer the fees
    IERC20(token).safeTransfer(recipient, feeAmount);

    emit DepositFeeClaimed(token, recipient, feeAmount);

    return feeAmount;
  }

  /**
   * @dev Locks collateral tokens to prevent them from being used for redemptions
   * @param token The address of the token to lock
   * @param amount The amount to lock
   */
  function lockCollateralTokens(
    address token,
    uint256 amount
  ) external override onlyCollateralManager {
    uint256 currentBalance = IERC20(token).balanceOf(address(this));
    uint256 requiredBalance = amount +
      _lockedCollateralTokens[token] +
      _lockedRedemptionTokens[token];
    if (currentBalance < requiredBalance) {
      revert InsufficientAvailableBalance(currentBalance, requiredBalance);
    }
    _lockedCollateralTokens[token] += amount;
    emit CollateralTokensLocked(token, amount);
  }

  /**
   * @dev Unlocks previously locked collateral tokens
   * @param token The address of the token to unlock
   * @param amount The amount to unlock
   */
  function unlockCollateralTokens(
    address token,
    uint256 amount
  ) external override onlyCollateralManager {
    if (_lockedCollateralTokens[token] < amount) {
      revert InsufficientLockedCollateral(
        token,
        _lockedCollateralTokens[token],
        amount
      );
    }
    _lockedCollateralTokens[token] -= amount;
    emit CollateralTokensUnlocked(token, amount);
  }

  /**
   * @notice Returns the available balance for a given token
   * @dev Available balance = total balance - locked redemption tokens - locked collateral tokens
   * @param token The address of the token to query
   * @return The available balance of the token
   */
  function getAvailableBalance(
    address token
  ) external view override returns (uint256) {
    uint256 totalBalance = IERC20(token).balanceOf(address(this));
    uint256 lockedRedemptions = _lockedRedemptionTokens[token];
    uint256 lockedCollateral = _lockedCollateralTokens[token];
    uint256 depositFees = _totalDepositFeeAmount[token];

    return
      totalBalance > (lockedRedemptions + lockedCollateral + depositFees)
        ? totalBalance - lockedRedemptions - lockedCollateral - depositFees
        : 0;
  }

  // Modify the setShareToken function
  function setShareToken(ShareToken token) external onlyRole(OPERATOR_ROLE) {
    if (_shareTokenSet) {
      revert ShareTokenAlreadySet();
    }
    shareToken = token;
    _shareTokenSet = true;
    emit ShareTokenSet(address(token));
  }
}
