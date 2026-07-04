// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import "./interfaces/ICollateralAdmin.sol";

import "./interfaces/ICollateralProvider.sol";

import "./interfaces/IDepositTokenRegistry.sol";

import "./interfaces/IPoolRegistry.sol";

import "./interfaces/IPool.sol";

import "./interfaces/ICollateralTokenHandler.sol";

import "./utils/ConvertDecimals.sol";

contract CollateralManager is
  ICollateralProvider,
  ICollateralAdmin,
  ERC165,
  AccessControl,
  Pausable,
  ReentrancyGuard
{
  using SafeERC20 for IERC20;
  using Math for uint256;
  using ConvertDecimals for uint256;

  struct ReservationRequest {
    address pool;
    address token;
    uint256 amount;
    RequestStatus status;
  }

  struct TransferRequest {
    address pool;
    address token;
    uint256 amount;
    RequestStatus status;
  }

  struct UndeployedReturnRequest {
    address pool;
    address token;
    uint256 amount;
    uint256 total;
    RequestStatus status;
  }

  struct DeployedReturnRequest {
    address pool;
    address transferredToken;
    address returnToken;
    uint256 netAmount;
    uint256 fees;
    uint256 total;
    RequestStatus status;
  }

  struct ProfitReturnRequest {
    address pool;
    address token;
    uint256 netAmount;
    uint256 fees;
    uint256 total;
    RequestStatus status;
  }

  struct CollateralLimitIncreaseRequest {
    address pool;
    uint256 currentLimit;
    uint256 requestedLimit;
    uint256 timestamp;
    RequestStatus status;
  }

  // State variables
  uint256 private _nextRequestId;
  mapping(uint256 => ReservationRequest) private _reservationRequests;
  mapping(address => mapping(address => uint256))
    private _pendingReservationsByPoolToken;

  mapping(uint256 => TransferRequest) private _transferRequests;
  mapping(address => mapping(address => uint256))
    private _pendingTransfersByPoolToken;

  mapping(uint256 => UndeployedReturnRequest) private _undeployedReturnRequests;
  mapping(uint256 => DeployedReturnRequest) private _deployedReturnRequests;
  mapping(address => mapping(address => uint256))
    private _pendingUndeployedReturnsByPoolToken;
  mapping(address => mapping(address => uint256))
    private _pendingDeployedReturnsByPoolToken;

  mapping(uint256 => ProfitReturnRequest) private _profitReturnRequests;
  mapping(address => mapping(address => uint256))
    private _pendingProfitReturnsByPoolToken;
  mapping(address => mapping(address => uint256)) private _profitReturnsAmounts;

  IPoolRegistry public immutable poolRegistry;
  IDepositTokenRegistry public immutable depositTokenRegistry;

  // Add mapping to track total approved reservations per token
  mapping(address => uint256) private _totalReservedByToken;

  // Add mapping to track approved reservations per pool and token
  mapping(address => mapping(address => uint256))
    private _approvedReservationsByPoolToken;

  // Add mapping to track transferred amounts per pool and token
  mapping(address => mapping(address => uint256)) private _transferredAmounts;

  // Update role constant name
  bytes32 public constant COLLATERAL_ADMIN = keccak256("COLLATERAL_ADMIN");

  // Add near other state variables
  mapping(address => mapping(address => uint256)) private _returnedAmounts;

  ICollateralTokenHandler public immutable collateralTokenHandler;

  uint256 private constant MINIMUM_DUST_DECIMALS = 6; // At least 0.000001 of token

  // Track collateral limit increase requests
  mapping(uint256 => CollateralLimitIncreaseRequest)
    private _limitIncreaseRequests;
  mapping(address => uint256) private _pendingLimitIncreaseByPool;

  event CollateralManagerPaused(address indexed operator);
  event CollateralManagerUnpaused(address indexed operator);

  // Add custom error
  error RequestDoesNotExist(uint256 requestId);
  error RequestNotPending(uint256 requestId);
  error PoolNotRegistered(address pool);
  error NotRequestingPool(address caller, address pool);
  error PendingRequestExists(string requestType);

  // Add near other errors
  error InvalidAdminAddress();
  error InvalidRegistryAddress();
  error InvalidPoolRegistryAddress();
  error InvalidCollateralAdminAddress();
  error InvalidTokenHandlerAddress();

  // Add these custom errors near the other error declarations
  error AmountMustBeGreaterThanZero();
  error InsufficientTokenBalance();
  error TokenNotEligibleAsCollateral();
  error InvalidTokenAddress();
  error InsufficientReservedAmount();
  error TotalCollateralExceedsLimit();
  error CollateralNotFullyReturned();
  error MustIncreaseLimit();
  error AfterTransferDate();
  error PendingRequestAlreadyExists();
  error OnlyPoolCanCancel();
  error RequestNotFound();
  error InsufficientBalanceForTransfer();
  error PendingReturnRequestExists();
  error AmountExceedsTransferred();

  /// @notice Checks if a request exists
  /// @param requestId The ID of the request to validate
  modifier requestExists(uint256 requestId) {
    if (
      _reservationRequests[requestId].pool == address(0) &&
      _transferRequests[requestId].pool == address(0) &&
      _undeployedReturnRequests[requestId].pool == address(0) &&
      _deployedReturnRequests[requestId].pool == address(0) &&
      _profitReturnRequests[requestId].pool == address(0) &&
      _limitIncreaseRequests[requestId].pool == address(0)
    ) {
      revert RequestDoesNotExist(requestId);
    }
    _;
  }

  /// @notice Checks if a request is in pending status
  /// @param requestId The ID of the request to validate
  modifier requestPending(uint256 requestId) {
    RequestStatus status;
    if (_reservationRequests[requestId].pool != address(0)) {
      status = _reservationRequests[requestId].status;
    } else if (_transferRequests[requestId].pool != address(0)) {
      status = _transferRequests[requestId].status;
    } else if (_undeployedReturnRequests[requestId].pool != address(0)) {
      status = _undeployedReturnRequests[requestId].status;
    } else if (_deployedReturnRequests[requestId].pool != address(0)) {
      status = _deployedReturnRequests[requestId].status;
    } else if (_profitReturnRequests[requestId].pool != address(0)) {
      status = _profitReturnRequests[requestId].status;
    } else if (_limitIncreaseRequests[requestId].pool != address(0)) {
      status = _limitIncreaseRequests[requestId].status;
    }
    if (status != RequestStatus.Pending) {
      revert RequestNotPending(requestId);
    }
    _;
  }

  /// @notice Checks if a pool is registered
  /// @param pool The address of the pool to validate
  modifier onlyRegisteredPool(address pool) {
    if (!poolRegistry.isRegisteredPool(pool)) {
      revert PoolNotRegistered(pool);
    }
    _;
  }

  /// @notice Checks if caller is the requesting pool
  /// @param pool The address of the pool to validate against
  modifier onlyRequestingPool(address pool) {
    if (msg.sender != pool) {
      revert NotRequestingPool(msg.sender, pool);
    }
    _;
  }

  /// @notice Initializes the CollateralManager contract
  /// @dev Sets up initial roles and connections to other protocol contracts
  /// @param initialAdmin_ Address of the initial admin
  /// @param depositTokenRegistry_ Address of the DepositTokenRegistry contract
  /// @param poolRegistry_ Address of the PoolRegistry contract
  /// @param collateralAdmin_ Address to be granted the COLLATERAL_ADMIN role
  /// @param collateralTokenHandler_ Address of the CollateralTokenHandler contract
  constructor(
    address initialAdmin_,
    address depositTokenRegistry_,
    address poolRegistry_,
    address collateralAdmin_,
    address collateralTokenHandler_
  ) {
    if (initialAdmin_ == address(0)) revert InvalidAdminAddress();
    if (depositTokenRegistry_ == address(0)) revert InvalidRegistryAddress();
    if (poolRegistry_ == address(0)) revert InvalidPoolRegistryAddress();
    if (collateralAdmin_ == address(0)) revert InvalidCollateralAdminAddress();
    if (collateralTokenHandler_ == address(0))
      revert InvalidTokenHandlerAddress();

    depositTokenRegistry = IDepositTokenRegistry(depositTokenRegistry_);
    poolRegistry = IPoolRegistry(poolRegistry_);

    collateralTokenHandler = ICollateralTokenHandler(collateralTokenHandler_);
    _grantRole(DEFAULT_ADMIN_ROLE, initialAdmin_);
    _grantRole(COLLATERAL_ADMIN, collateralAdmin_);
  }

  /// @notice Calculates the value of a token amount normalized to 18 decimals
  /// @dev Internal helper function to normalize token amounts to a common decimal base
  /// @param token The address of the token
  /// @param amount The amount to normalize
  /// @return The normalized value with 18 decimals
  function _getTokenValue(
    address token,
    uint256 amount
  ) internal view returns (uint256) {
    // Just normalize to 18 decimals
    return amount.mulDiv(1e18, 10 ** IERC20Metadata(token).decimals());
  }

  /// @notice Gets the total value of all collateral for a pool
  /// @dev Calculates the sum of all reserved and transferred collateral, normalized to 18 decimals
  /// @param pool The address of the pool to query
  /// @return totalValue The total value of all collateral, normalized to 18 decimals
  /// @custom:throws PoolNotRegistered if the pool is not registered
  function getTotalValue(address pool) public view override returns (uint256) {
    if (!poolRegistry.isRegisteredPool(pool)) revert PoolNotRegistered(pool);

    uint256 totalValue = 0;
    address[] memory tokens = depositTokenRegistry.getCollateralTokens();

    for (uint i = 0; i < tokens.length; i++) {
      address token = tokens[i];

      uint256 transferred = _transferredAmounts[pool][token];
      if (transferred > 0) {
        totalValue += _getTokenValue(token, transferred);
      }

      uint256 reserved = _approvedReservationsByPoolToken[pool][token];
      if (reserved > 0) {
        totalValue += _getTokenValue(token, reserved);
      }
    }

    return totalValue;
  }

  /// @notice Functions for managing collateral reservations
  /// @dev Reservations allow pools to request and lock collateral before transferring
  /// @dev The reservation process has 3 steps:
  /// @dev 1. Pool requests reservation via requestCollateralReservation()
  /// @dev 2. Admin approves/rejects via approveCollateralReservation()
  /// @dev 3. Pool requests transfer of approved amount via requestCollateralTransfer()

  /// @notice Requests a reservation of collateral tokens for a pool
  /// @dev Only callable by registered pools within their collateral limit
  /// @param token The address of the collateral token to reserve
  /// @param amount The amount of tokens to reserve
  /// @return reservationRequestId The unique identifier for the reservation request
  /// @custom:throws PoolNotRegistered if the caller is not a registered pool
  /// @custom:throws PendingRequestExists if there's already a pending request for this pool-token pair
  function requestCollateralReservation(
    address token,
    uint256 amount
  ) external whenNotPaused returns (uint256 reservationRequestId) {
    address pool = msg.sender;
    if (!poolRegistry.isRegisteredPool(pool)) revert PoolNotRegistered(pool);
    if (!depositTokenRegistry.isEligibleAsCollateral(token))
      revert TokenNotEligibleAsCollateral();
    if (token == address(0)) revert InvalidTokenAddress();
    if (amount == 0) revert AmountMustBeGreaterThanZero();

    if (collateralTokenHandler.getAvailableBalance(token) < amount)
      revert InsufficientTokenBalance();

    uint256 limit = IPool(pool).getCollateralLimit();
    uint256 totalValue = getTotalValue(pool);
    uint256 newRequestValue = _getTokenValue(token, amount);

    if (totalValue + newRequestValue > limit)
      revert TotalCollateralExceedsLimit();

    // Track the new reservation
    _totalReservedByToken[token] += amount;

    // Check if there's already a pending request for this pool-token pair
    uint256 existingRequestId = _pendingReservationsByPoolToken[pool][token];
    if (
      existingRequestId != 0 &&
      _reservationRequests[existingRequestId].status == RequestStatus.Pending
    ) {
      revert PendingRequestAlreadyExists();
    }

    reservationRequestId = ++_nextRequestId;

    _reservationRequests[reservationRequestId] = ReservationRequest({
      pool: pool,
      token: token,
      amount: amount,
      status: RequestStatus.Pending
    });

    // Track the pending request
    _pendingReservationsByPoolToken[pool][token] = reservationRequestId;

    emit CollateralReservationRequested(
      reservationRequestId,
      pool,
      token,
      amount
    );

    return reservationRequestId;
  }

  /// @notice Cancels a pending collateral reservation request
  /// @dev Only callable by the pool that created the request
  /// @param requestId The ID of the reservation request to cancel
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  /// @custom:throws NotRequestingPool if caller is not the requesting pool
  function cancelCollateralReservation(
    uint256 requestId
  ) external whenNotPaused requestExists(requestId) requestPending(requestId) {
    ReservationRequest storage request = _reservationRequests[requestId];
    if (msg.sender != request.pool) revert OnlyPoolCanCancel();

    request.status = RequestStatus.Cancelled;
    // Clear the pending request tracking
    _pendingReservationsByPoolToken[request.pool][request.token] = 0;

    // Update reserved amount on cancellation
    _totalReservedByToken[request.token] -= request.amount;

    emit CollateralReservationCancelled(requestId, msg.sender);
  }

  /// @notice Approves a collateral reservation request
  /// @dev Only callable by addresses with COLLATERAL_ADMIN role
  /// @param requestId The ID of the reservation request to approve
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  /// @custom:throws PoolNotRegistered if the requesting pool is not registered
  function approveCollateralReservation(
    uint256 requestId
  )
    external
    whenNotPaused
    nonReentrant
    onlyRole(COLLATERAL_ADMIN)
    requestExists(requestId)
    requestPending(requestId)
  {
    ReservationRequest storage request = _reservationRequests[requestId];
    if (!poolRegistry.isRegisteredPool(request.pool))
      revert PoolNotRegistered(request.pool);

    if (!depositTokenRegistry.isEligibleAsCollateral(request.token))
      revert TokenNotEligibleAsCollateral();

    request.status = RequestStatus.Approved;
    // Clear the pending request tracking
    _pendingReservationsByPoolToken[request.pool][request.token] = 0;
    // Add to approved reservations
    _approvedReservationsByPoolToken[request.pool][request.token] += request
      .amount;

    // Update reserved amount before transfer
    _totalReservedByToken[request.token] -= request.amount;
    collateralTokenHandler.lockCollateralTokens(request.token, request.amount);

    emit CollateralReservationApproved(requestId, msg.sender);
  }

  /// @notice Rejects a collateral reservation request
  /// @dev Only callable by addresses with COLLATERAL_ADMIN role
  /// @param requestId The ID of the reservation request to reject
  /// @param reason The reason for rejection
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  function rejectCollateralReservation(
    uint256 requestId,
    string calldata reason
  ) external whenNotPaused onlyRole(COLLATERAL_ADMIN) {
    ReservationRequest storage request = _reservationRequests[requestId];
    if (request.pool == address(0)) revert RequestDoesNotExist(requestId);
    if (request.status != RequestStatus.Pending)
      revert RequestNotPending(requestId);

    request.status = RequestStatus.Rejected;
    // Clear the pending request tracking
    _pendingReservationsByPoolToken[request.pool][request.token] = 0;

    // Update reserved amount on rejection
    _totalReservedByToken[request.token] -= request.amount;

    emit CollateralReservationRejected(requestId, msg.sender, reason);
  }

  /// @notice Gets the total amount of tokens reserved for a pool
  /// @dev Returns the amount of tokens that have been approved for reservation but not yet transferred
  /// @param pool The address of the pool to query
  /// @param token The address of the token to query
  /// @return amount The total amount of tokens currently reserved
  /// @custom:throws PoolNotRegistered if the pool address is not registered
  function getReservedAmount(
    address pool,
    address token
  ) external view returns (uint256 amount) {
    if (!poolRegistry.isRegisteredPool(pool)) revert PoolNotRegistered(pool);
    return _approvedReservationsByPoolToken[pool][token];
  }

  /////////////// Collateral Transfer Functions ////////////////////

  /// @notice Requests a transfer of previously reserved collateral to a pool
  /// @dev Only callable by registered pools with approved reservations
  /// @param token The address of the collateral token to transfer
  /// @param amount The amount of tokens to transfer
  /// @return transferRequestId The unique identifier for the transfer request
  /// @custom:throws PoolNotRegistered if the caller is not a registered pool
  /// @custom:throws PendingRequestExists if there's already a pending transfer request for this pool-token pair
  function requestCollateralTransfer(
    address token,
    uint256 amount
  ) external whenNotPaused returns (uint256 transferRequestId) {
    address pool = msg.sender;
    if (!poolRegistry.isRegisteredPool(pool)) revert PoolNotRegistered(pool);
    if (token == address(0)) revert InvalidTokenAddress();
    if (amount == 0) revert AmountMustBeGreaterThanZero();
    if (_approvedReservationsByPoolToken[pool][token] < amount)
      revert InsufficientReservedAmount();
    if (IERC20(token).balanceOf(address(collateralTokenHandler)) < amount)
      revert InsufficientBalanceForTransfer();

    uint256 existingRequestId = _pendingTransfersByPoolToken[pool][token];
    if (
      existingRequestId != 0 &&
      _transferRequests[existingRequestId].status == RequestStatus.Pending
    ) revert PendingRequestExists("transfer");

    transferRequestId = ++_nextRequestId;

    _transferRequests[transferRequestId] = TransferRequest({
      pool: pool,
      token: token,
      amount: amount,
      status: RequestStatus.Pending
    });

    _pendingTransfersByPoolToken[pool][token] = transferRequestId;

    emit CollateralTransferRequested(transferRequestId, pool, token, amount);

    return transferRequestId;
  }

  /// @notice Approves a collateral transfer request and executes the transfer
  /// @dev Only callable by addresses with COLLATERAL_ADMIN role
  /// @dev Transfers tokens from the collateral token handler to the requesting pool
  /// @param requestId The ID of the transfer request to approve
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  /// @custom:throws PoolNotRegistered if the requesting pool is not registered
  function approveCollateralTransfer(
    uint256 requestId
  ) external whenNotPaused onlyRole(COLLATERAL_ADMIN) nonReentrant {
    // All checks first
    TransferRequest storage request = _transferRequests[requestId];
    require(request.pool != address(0), "Request does not exist");
    require(request.status == RequestStatus.Pending, "Request is not pending");
    require(poolRegistry.isRegisteredPool(request.pool), "Pool not registered");

    uint256 reservedAmount = _approvedReservationsByPoolToken[request.pool][
      request.token
    ];
    require(reservedAmount >= request.amount, "Insufficient reserved amount");

    require(
      IERC20(request.token).balanceOf(address(collateralTokenHandler)) >=
        request.amount,
      "Insufficient balance for collateral transfer"
    );

    // Cache values to avoid state changes after external call
    address token = request.token;
    address pool = request.pool;
    uint256 amount = request.amount;

    // All state changes
    request.status = RequestStatus.Approved;
    _pendingTransfersByPoolToken[pool][token] = 0;
    _approvedReservationsByPoolToken[pool][token] -= amount;
    _transferredAmounts[pool][token] += amount;

    emit CollateralTransferApproved(requestId, msg.sender);

    // External interaction last
    collateralTokenHandler.transferTokens(token, pool, amount);
    collateralTokenHandler.unlockCollateralTokens(token, amount);
  }

  /// @notice Cancels a pending collateral transfer request
  /// @dev Only callable by the pool that created the request
  /// @param requestId The ID of the transfer request to cancel
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  /// @custom:throws NotRequestingPool if caller is not the requesting pool
  function cancelCollateralTransfer(
    uint256 requestId
  ) external whenNotPaused requestExists(requestId) requestPending(requestId) {
    TransferRequest storage request = _transferRequests[requestId];
    if (msg.sender != request.pool)
      revert NotRequestingPool(msg.sender, request.pool);

    request.status = RequestStatus.Cancelled;
    _pendingTransfersByPoolToken[request.pool][request.token] = 0;

    emit CollateralTransferCancelled(requestId, msg.sender);
  }

  /// @notice Gets the details of a collateral transfer request
  /// @dev Returns all relevant information about a specific transfer request
  /// @param requestId The ID of the request to query
  /// @return pool The address of the requesting pool
  /// @return token The address of the token being transferred
  /// @return amount The amount of tokens requested for transfer
  /// @return status The current status of the request
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  function getTransferRequest(
    uint256 requestId
  )
    external
    view
    returns (address pool, address token, uint256 amount, RequestStatus status)
  {
    TransferRequest storage request = _transferRequests[requestId];
    if (request.pool == address(0)) revert RequestDoesNotExist(requestId);

    return (request.pool, request.token, request.amount, request.status);
  }

  /// @notice Requests to return undeployed collateral back to the provider
  /// @dev Only callable by registered pools with transferred collateral
  /// @dev Undeployed collateral is collateral that hasn't been used in any strategy
  /// @param token The address of the token to return
  /// @param amount The amount of tokens to return
  /// @return requestId The unique identifier for the return request
  /// @custom:throws PoolNotRegistered if the caller is not a registered pool
  /// @custom:throws PendingRequestExists if there's already a pending return request for this pool-token pair
  function requestUndeployedCollateralReturn(
    address token,
    uint256 amount
  )
    external
    whenNotPaused
    onlyRegisteredPool(msg.sender)
    returns (uint256 requestId)
  {
    address pool = msg.sender;
    if (token == address(0)) revert InvalidTokenAddress();
    if (amount == 0) revert AmountMustBeGreaterThanZero();
    if (_transferredAmounts[pool][token] < amount)
      revert AmountExceedsTransferred();

    uint256 existingRequestId = _pendingUndeployedReturnsByPoolToken[pool][
      token
    ];

    if (
      existingRequestId != 0 &&
      _undeployedReturnRequests[existingRequestId].status ==
      RequestStatus.Pending
    ) revert PendingReturnRequestExists();

    requestId = ++_nextRequestId;

    _undeployedReturnRequests[requestId] = UndeployedReturnRequest({
      pool: pool,
      token: token,
      amount: amount,
      total: amount,
      status: RequestStatus.Pending
    });

    _pendingUndeployedReturnsByPoolToken[pool][token] = requestId;

    emit UndeployedCollateralReturnRequested(
      requestId,
      pool,
      token,
      amount,
      amount
    );

    return requestId;
  }

  /// @notice Requests to return deployed collateral back to the provider
  /// @dev Only callable by registered pools with transferred collateral
  /// @dev Deployed collateral is collateral that has been used in strategies and may return in a different token
  /// @param transferredToken The address of the token that was originally transferred
  /// @param returnToken The address of the token being returned (may be different from transferred)
  /// @param netAmount The amount of tokens to return (excluding fees)
  /// @param fees The amount of fees to be kept by the pool
  /// @return requestId The unique identifier for the return request
  /// @custom:throws PoolNotRegistered if the caller is not a registered pool
  /// @custom:throws PendingRequestExists if there's already a pending return request for this pool-token pair
  function requestDeployedCollateralReturn(
    address transferredToken,
    address returnToken,
    uint256 netAmount,
    uint256 fees
  )
    external
    whenNotPaused
    onlyRegisteredPool(msg.sender)
    returns (uint256 requestId)
  {
    address pool = msg.sender;

    // require(poolRegistry.isRegisteredPool(pool), "Pool not registered");

    uint256 totalAmount = netAmount + fees;

    // Convert using ConvertDecimals
    uint8 fromDecimals = IERC20Metadata(transferredToken).decimals();
    uint8 toDecimals = IERC20Metadata(returnToken).decimals();

    // First normalize the total amount to 18 decimals
    uint256 normalizedTotal = totalAmount.convertTo18(fromDecimals);

    // Then convert to the target token's decimals
    uint256 convertedTotal = normalizedTotal.convertFrom18(toDecimals);

    // Calculate the proportional converted amount and fees
    uint256 convertedNetAmount = (netAmount * convertedTotal) / totalAmount;
    uint256 convertedFees = convertedTotal - convertedNetAmount;

    uint256 existingRequestId = _pendingDeployedReturnsByPoolToken[pool][
      returnToken
    ];
    require(
      existingRequestId == 0 ||
        _deployedReturnRequests[existingRequestId].status !=
        RequestStatus.Pending,
      "Pending return request already exists for pool-token pair"
    );

    requestId = ++_nextRequestId;

    _deployedReturnRequests[requestId] = DeployedReturnRequest({
      pool: pool,
      transferredToken: transferredToken,
      returnToken: returnToken,
      netAmount: convertedNetAmount, // Store the converted amount
      fees: convertedFees, // Store the converted fees
      total: convertedTotal, // Store the converted total
      status: RequestStatus.Pending
    });

    _pendingDeployedReturnsByPoolToken[pool][returnToken] = requestId;

    emit DeployedCollateralReturnRequested(
      requestId,
      pool,
      returnToken,
      convertedNetAmount,
      convertedFees,
      convertedTotal
    );

    return requestId;
  }

  /// @notice Approves an undeployed collateral return request
  /// @dev Only callable by addresses with COLLATERAL_ADMIN role
  /// @dev Transfers tokens from the pool back to the collateral token handler
  /// @param requestId The ID of the return request to approve
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  /// @custom:throws PoolNotRegistered if the requesting pool is not registered
  function approveUndeployedCollateralReturn(
    uint256 requestId
  )
    external
    whenNotPaused
    onlyRole(COLLATERAL_ADMIN)
    requestExists(requestId)
    requestPending(requestId)
  {
    UndeployedReturnRequest storage request = _undeployedReturnRequests[
      requestId
    ];
    if (!poolRegistry.isRegisteredPool(request.pool))
      revert PoolNotRegistered(request.pool);

    // Cache values
    address token = request.token;
    address pool = request.pool;
    uint256 total = request.total;
    uint256 amount = request.amount;

    // All state changes
    request.status = RequestStatus.Approved;
    _pendingUndeployedReturnsByPoolToken[pool][token] = 0;
    _transferredAmounts[pool][token] -= total;
    _returnedAmounts[pool][token] += amount;

    emit UndeployedCollateralReturnApproved(requestId, msg.sender, total);

    // External interaction last
    collateralTokenHandler.receiveTokens(token, pool, total);
  }

  /// @notice Gets the details of an undeployed collateral return request
  /// @dev Returns all relevant information about a specific undeployed return request
  /// @param requestId The ID of the request to query
  /// @return pool The address of the requesting pool
  /// @return token The address of the token being returned
  /// @return amount The amount of tokens requested to return (excluding fees)
  /// @return total The total amount of tokens to be returned (including fees)
  /// @return status The current status of the request
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  function getUndeployedReturnRequest(
    uint256 requestId
  )
    external
    view
    returns (
      address pool,
      address token,
      uint256 amount,
      uint256 total,
      RequestStatus status
    )
  {
    UndeployedReturnRequest storage request = _undeployedReturnRequests[
      requestId
    ];
    if (request.pool == address(0)) revert RequestDoesNotExist(requestId);

    return (
      request.pool,
      request.token,
      request.amount,
      request.total,
      request.status
    );
  }

  /// @notice Approves a deployed collateral return request
  /// @dev Only callable by addresses with COLLATERAL_ADMIN role
  /// @dev Transfers tokens from the pool back to the collateral token handler, accounting for fees
  /// @param requestId The ID of the return request to approve
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  /// @custom:throws PoolNotRegistered if the requesting pool is not registered
  function approveDeployedCollateralReturn(
    uint256 requestId
  )
    external
    whenNotPaused
    onlyRole(COLLATERAL_ADMIN)
    requestExists(requestId)
    requestPending(requestId)
  {
    DeployedReturnRequest storage request = _deployedReturnRequests[requestId];
    if (!poolRegistry.isRegisteredPool(request.pool))
      revert PoolNotRegistered(request.pool);

    uint8 fromDecimals = IERC20Metadata(request.returnToken).decimals();
    uint8 toDecimals = IERC20Metadata(request.transferredToken).decimals();

    uint256 normalizedAmount = request.total.convertTo18(fromDecimals);
    uint256 transferredValue = normalizedAmount.convertFrom18(toDecimals);

    // Update state
    _transferredAmounts[request.pool][
      request.transferredToken
    ] -= transferredValue;
    _returnedAmounts[request.pool][
      request.transferredToken
    ] += transferredValue;

    request.status = RequestStatus.Approved;
    _pendingDeployedReturnsByPoolToken[request.pool][request.returnToken] = 0;

    collateralTokenHandler.receiveTokens(
      request.returnToken,
      request.pool,
      request.netAmount
    );

    emit DeployedCollateralReturnApproved(
      requestId,
      msg.sender,
      transferredValue
    );
  }

  /// @notice Gets the total amount of tokens transferred to a pool
  /// @dev Returns the cumulative amount of a specific token transferred to a pool
  /// @param pool The address of the pool to query
  /// @param token The address of the token to query
  /// @return amount The total amount of tokens transferred
  function getTransferredAmount(
    address pool,
    address token
  ) external view returns (uint256) {
    return _transferredAmounts[pool][token];
  }

  /// @notice Gets the details of a deployed collateral return request
  /// @dev Returns all relevant information about a specific return request
  /// @param requestId The ID of the request to query
  /// @return transferredToken The address of the token that was originally transferred
  /// @return netAmount The amount of tokens requested to return (excluding fees)
  /// @return fees The amount of fees to be kept by the pool
  /// @return status The current status of the request
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  function getDeployedCollateralReturnRequest(
    uint256 requestId
  )
    external
    view
    returns (
      address transferredToken,
      uint256 netAmount,
      uint256 fees,
      RequestStatus status
    )
  {
    DeployedReturnRequest storage request = _deployedReturnRequests[requestId];
    if (request.pool == address(0)) revert RequestDoesNotExist(requestId);

    return (
      request.transferredToken,
      request.netAmount,
      request.fees,
      request.status
    );
  }

  ///////////////// Profit Return Functions ////////////////

  /// @notice Requests to return profits generated from collateral deployment
  /// @dev Only callable by registered pools with transferred collateral
  /// @dev Profits are amounts above the original transferred collateral amount
  /// @param token The address of the token to return profits in
  /// @param netAmount The amount of profits to return (excluding fees)
  /// @param totalFees The total amount of fees to be kept by the pool
  /// @return requestId The unique identifier for the profit return request
  /// @custom:throws PoolNotRegistered if the caller is not a registered pool
  /// @custom:throws PendingRequestExists if there's already a pending profit return request for this pool-token pair
  function requestProfitReturn(
    address token,
    uint256 netAmount,
    uint256 totalFees
  )
    external
    whenNotPaused
    onlyRegisteredPool(msg.sender)
    returns (uint256 requestId)
  {
    address pool = msg.sender;
    if (pool == address(0)) revert InvalidTokenAddress();
    if (token == address(0)) revert InvalidTokenAddress();
    if (netAmount == 0) revert AmountMustBeGreaterThanZero();
    if (!poolRegistry.isRegisteredPool(pool)) revert PoolNotRegistered(pool);
    if (!depositTokenRegistry.isEligibleAsCollateral(token))
      revert TokenNotEligibleAsCollateral();

    // Check all collateral tokens
    address[] memory tokens = depositTokenRegistry.getCollateralTokens();
    for (uint i = 0; i < tokens.length; i++) {
      address collateralToken = tokens[i];
      uint256 transferred = _transferredAmounts[pool][collateralToken];

      if (transferred > 0) {
        uint256 tokenDecimals = IERC20Metadata(collateralToken).decimals();

        uint256 dustDecimals = Math.max(
          tokenDecimals / 2 + 3,
          tokenDecimals > MINIMUM_DUST_DECIMALS
            ? tokenDecimals - MINIMUM_DUST_DECIMALS
            : 0
        );
        uint256 dust = 10 ** dustDecimals;

        if (transferred > dust) revert CollateralNotFullyReturned();
      }
    }

    uint256 existingRequestId = _pendingProfitReturnsByPoolToken[pool][token];
    if (
      existingRequestId != 0 &&
      _profitReturnRequests[existingRequestId].status == RequestStatus.Pending
    ) {
      revert PendingRequestExists("profit return");
    }

    requestId = ++_nextRequestId;

    _profitReturnRequests[requestId] = ProfitReturnRequest({
      pool: pool,
      token: token,
      netAmount: netAmount,
      fees: totalFees,
      total: netAmount + totalFees,
      status: RequestStatus.Pending
    });

    _pendingProfitReturnsByPoolToken[pool][token] = requestId;

    emit ProfitReturnRequested(
      requestId,
      pool,
      token,
      netAmount,
      totalFees,
      netAmount + totalFees,
      block.timestamp
    );

    return requestId;
  }

  function cancelProfitReturn(
    uint256 requestId
  ) external whenNotPaused requestExists(requestId) requestPending(requestId) {
    ProfitReturnRequest storage request = _profitReturnRequests[requestId];
    if (msg.sender != request.pool)
      revert NotRequestingPool(msg.sender, request.pool);

    request.status = RequestStatus.Cancelled;
    _pendingProfitReturnsByPoolToken[request.pool][request.token] = 0;

    emit ProfitReturnCancelled(requestId, msg.sender, block.timestamp);
  }

  /// @notice Approves a profit return request
  /// @dev Only callable by addresses with COLLATERAL_ADMIN role
  /// @dev Transfers profit tokens from the pool back to the collateral token handler
  /// @param requestId The ID of the profit return request to approve
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  /// @custom:throws PoolNotRegistered if the requesting pool is not registered
  function approveProfitReturn(
    uint256 requestId
  )
    external
    whenNotPaused
    onlyRole(COLLATERAL_ADMIN)
    requestExists(requestId)
    requestPending(requestId)
  {
    ProfitReturnRequest storage request = _profitReturnRequests[requestId];
    if (!poolRegistry.isRegisteredPool(request.pool))
      revert PoolNotRegistered(request.pool);

    request.status = RequestStatus.Approved;
    _pendingProfitReturnsByPoolToken[request.pool][request.token] = 0;

    // Update profit returns tracking - use the net amount (excluding fees)
    _profitReturnsAmounts[request.pool][request.token] += request.netAmount;

    // Replace direct transfer with handler call - transfer only the net amount
    collateralTokenHandler.receiveTokens(
      request.token,
      request.pool,
      request.netAmount
    );

    emit ProfitReturnApproved(requestId, msg.sender);
  }

  /// @notice Rejects a profit return request
  /// @dev Only callable by addresses with COLLATERAL_ADMIN role
  /// @param requestId The ID of the profit return request to reject
  /// @param reason The reason for rejection
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  /// @custom:throws PoolNotRegistered if the requesting pool is not registered
  function rejectProfitReturn(
    uint256 requestId,
    string calldata reason
  ) external whenNotPaused onlyRole(COLLATERAL_ADMIN) {
    ProfitReturnRequest storage request = _profitReturnRequests[requestId];
    if (request.pool == address(0)) revert RequestDoesNotExist(requestId);
    if (request.status != RequestStatus.Pending)
      revert RequestNotPending(requestId);
    if (!poolRegistry.isRegisteredPool(request.pool))
      revert PoolNotRegistered(request.pool);

    request.status = RequestStatus.Rejected;
    _pendingProfitReturnsByPoolToken[request.pool][request.token] = 0;

    emit ProfitReturnRejected(requestId, msg.sender, reason);
  }

  /// @notice Gets the details of a profit return request
  /// @dev Returns all relevant information about a specific profit return request
  /// @param requestId The ID of the request to query
  /// @return token The address of the profit token
  /// @return netAmount The amount of profits requested to return (excluding fees)
  /// @return fees The amount of fees to be kept by the pool
  /// @return total The total amount of profits to be returned
  /// @return status The current status of the request
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  function getProfitReturnRequest(
    uint256 requestId
  )
    external
    view
    returns (
      address token,
      uint256 netAmount,
      uint256 fees,
      uint256 total,
      RequestStatus status
    )
  {
    ProfitReturnRequest storage request = _profitReturnRequests[requestId];
    if (request.pool == address(0)) revert RequestDoesNotExist(requestId);
    return (
      request.token,
      request.netAmount,
      request.fees,
      request.total,
      request.status
    );
  }

  /// @notice Gets the total amount of profits returned by a pool for a specific token
  /// @dev Returns the cumulative amount of profits returned in a specific token
  /// @param pool The address of the pool to query
  /// @param token The address of the token to query
  /// @return amount The total amount of profits returned
  function getProfitReturnsAmount(
    address pool,
    address token
  ) external view returns (uint256) {
    return _profitReturnsAmounts[pool][token];
  }

  /**
   * @dev Returns the total value of all returned collateral for a pool
   * @param pool The address of the pool
   * @return totalReturned The total value of returned collateral normalized to 18 decimals
   */
  function getTotalReturnedCollateral(
    address pool
  ) external view returns (uint256 totalReturned) {
    if (!poolRegistry.isRegisteredPool(pool)) revert PoolNotRegistered(pool);

    // Get all possible collateral tokens
    address[] memory tokens = depositTokenRegistry.getCollateralTokens();

    for (uint i = 0; i < tokens.length; i++) {
      address token = tokens[i];

      uint256 returnedAmount = _returnedAmounts[pool][token];

      if (returnedAmount > 0) {
        uint256 value = _getTokenValue(token, returnedAmount);
        totalReturned += value;
      }
    }

    return totalReturned;
  }

  function supportsInterface(
    bytes4 interfaceId
  )
    public
    view
    virtual
    override(AccessControl, ERC165, IERC165)
    returns (bool)
  {
    return
      interfaceId == type(ICollateralProvider).interfaceId ||
      interfaceId == type(ICollateralAdmin).interfaceId ||
      super.supportsInterface(interfaceId);
  }

  /// @notice Functions for managing collateral limit increases
  /// @dev Collateral limit increases allow pools to request higher collateral limits before their transfer date

  /// @notice Requests an increase in the collateral limit for a pool
  /// @dev Only callable by registered pools before their transfer date
  /// @param requestedLimit The new requested collateral limit
  /// @return requestId The unique identifier for the request
  /// @custom:throws PoolNotRegistered if the caller is not a registered pool
  /// @custom:throws PendingRequestExists if there's already a pending request for this pool
  function requestCollateralLimitIncrease(
    uint256 requestedLimit
  )
    external
    whenNotPaused
    onlyRegisteredPool(msg.sender)
    returns (uint256 requestId)
  {
    address pool = msg.sender;
    uint256 currentLimit = IPool(pool).getCollateralLimit();
    if (requestedLimit <= currentLimit) revert MustIncreaseLimit();

    uint256 transferDate = IPool(pool).getTransferDate();
    if (block.timestamp >= transferDate) revert AfterTransferDate();

    // Check for existing pending request
    uint256 existingRequestId = _pendingLimitIncreaseByPool[pool];
    if (
      existingRequestId != 0 &&
      _limitIncreaseRequests[existingRequestId].status == RequestStatus.Pending
    ) {
      revert PendingRequestExists("limit increase");
    }

    requestId = ++_nextRequestId;

    _limitIncreaseRequests[requestId] = CollateralLimitIncreaseRequest({
      pool: pool,
      currentLimit: currentLimit,
      requestedLimit: requestedLimit,
      timestamp: block.timestamp,
      status: RequestStatus.Pending
    });

    _pendingLimitIncreaseByPool[pool] = requestId;

    emit CollateralLimitIncreaseRequested(
      requestId,
      pool,
      currentLimit,
      requestedLimit,
      block.timestamp
    );

    return requestId;
  }

  /// @notice Cancels a pending collateral limit increase request
  /// @dev Only callable by the pool that created the request
  /// @param requestId The ID of the request to cancel
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  /// @custom:throws NotRequestingPool if caller is not the requesting pool
  function cancelCollateralLimitIncrease(
    uint256 requestId
  ) external whenNotPaused {
    CollateralLimitIncreaseRequest storage request = _limitIncreaseRequests[
      requestId
    ];
    if (request.pool == address(0)) revert RequestDoesNotExist(requestId);
    if (request.status != RequestStatus.Pending)
      revert RequestNotPending(requestId);
    if (msg.sender != request.pool)
      revert NotRequestingPool(msg.sender, request.pool);

    request.status = RequestStatus.Cancelled;
    _pendingLimitIncreaseByPool[request.pool] = 0;

    emit CollateralLimitIncreaseCancelled(
      requestId,
      msg.sender,
      block.timestamp
    );
  }

  /// @notice Approves a collateral limit increase request
  /// @dev Only callable by addresses with COLLATERAL_ADMIN role. Updates the pool's collateral limit upon approval
  /// @param requestId The ID of the request to approve
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  /// @custom:throws PoolNotRegistered if the requesting pool is not registered
  function approveCollateralLimitIncrease(
    uint256 requestId
  )
    external
    whenNotPaused
    onlyRole(COLLATERAL_ADMIN)
    requestExists(requestId)
    requestPending(requestId)
  {
    CollateralLimitIncreaseRequest storage request = _limitIncreaseRequests[
      requestId
    ];
    if (!poolRegistry.isRegisteredPool(request.pool))
      revert PoolNotRegistered(request.pool);

    request.status = RequestStatus.Approved;
    _pendingLimitIncreaseByPool[request.pool] = 0;

    // Update the pool's collateral limit
    IPool(request.pool).updateCollateralLimit(request.requestedLimit);

    emit CollateralLimitIncreaseApproved(
      requestId,
      msg.sender,
      block.timestamp
    );
  }

  /// @notice Rejects a collateral limit increase request
  /// @dev Only callable by addresses with COLLATERAL_ADMIN role
  /// @param requestId The ID of the request to reject
  /// @param reason The reason for rejection
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  /// @custom:throws RequestNotPending if the request is not in pending status
  /// @custom:throws PoolNotRegistered if the requesting pool is not registered
  function rejectCollateralLimitIncrease(
    uint256 requestId,
    string calldata reason
  ) external whenNotPaused onlyRole(COLLATERAL_ADMIN) {
    CollateralLimitIncreaseRequest storage request = _limitIncreaseRequests[
      requestId
    ];
    if (request.pool == address(0)) revert RequestDoesNotExist(requestId);
    if (request.status != RequestStatus.Pending)
      revert RequestNotPending(requestId);
    if (!poolRegistry.isRegisteredPool(request.pool))
      revert PoolNotRegistered(request.pool);

    request.status = RequestStatus.Rejected;
    _pendingLimitIncreaseByPool[request.pool] = 0;

    emit CollateralLimitIncreaseRejected(
      requestId,
      msg.sender,
      reason,
      block.timestamp
    );
  }

  /// @notice Retrieves details of a collateral limit increase request
  /// @dev Returns all relevant information about a specific request
  /// @param requestId The ID of the request to query
  /// @return pool The address of the requesting pool
  /// @return currentLimit The pool's current collateral limit
  /// @return requestedLimit The requested new limit
  /// @return status The current status of the request
  /// @return timestamp The timestamp when the request was created
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  function getCollateralLimitIncreaseRequest(
    uint256 requestId
  )
    external
    view
    returns (
      address pool,
      uint256 currentLimit,
      uint256 requestedLimit,
      RequestStatus status,
      uint256 timestamp
    )
  {
    CollateralLimitIncreaseRequest storage request = _limitIncreaseRequests[
      requestId
    ];
    if (request.pool == address(0)) revert RequestDoesNotExist(requestId);

    return (
      request.pool,
      request.currentLimit,
      request.requestedLimit,
      request.status,
      request.timestamp
    );
  }

  function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
    _pause();
    emit CollateralManagerPaused(msg.sender);
  }

  function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
    _unpause();
    emit CollateralManagerUnpaused(msg.sender);
  }

  /// @notice Gets the details of a collateral reservation request
  /// @dev Returns all relevant information about a specific reservation request
  /// @param requestId The ID of the request to query
  /// @return pool The address of the requesting pool
  /// @return token The address of the token to reserve
  /// @return amount The amount requested to reserve
  /// @return status The current status of the request
  /// @custom:throws RequestDoesNotExist if the request ID is invalid
  function getReservationRequest(
    uint256 requestId
  )
    external
    view
    returns (address pool, address token, uint256 amount, RequestStatus status)
  {
    ReservationRequest storage request = _reservationRequests[requestId];
    if (request.pool == address(0)) revert RequestDoesNotExist(requestId);

    return (request.pool, request.token, request.amount, request.status);
  }

  function getCollateralTokenHandler() external view returns (address) {
    return address(collateralTokenHandler);
  }
}
