// SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

/// @notice Enum representing the possible states of a request
/// @dev Used across all request types (reservation, transfer, return, etc.)
enum RequestStatus {
  Pending,
  Approved,
  Rejected,
  Cancelled
}

/// @title Collateral Provider Interface
/// @notice Interface for managing collateral reservations, transfers, and returns
/// @dev Implements IERC165 for interface detection
interface ICollateralProvider is IERC165 {
  /// @notice Emitted when a pool requests to reserve collateral
  /// @param requestId Unique identifier for the reservation request
  /// @param pool Address of the requesting pool
  /// @param token Address of the collateral token
  /// @param amount Amount of tokens requested
  event CollateralReservationRequested(
    uint256 indexed requestId,
    address indexed pool,
    address indexed token,
    uint256 amount
  );

  /// @notice Emitted when a pool requests to transfer reserved collateral
  /// @param requestId Unique identifier for the transfer request
  /// @param pool Address of the requesting pool
  /// @param token Address of the collateral token
  /// @param amount Amount of tokens to transfer
  event CollateralTransferRequested(
    uint256 indexed requestId,
    address indexed pool,
    address indexed token,
    uint256 amount
  );

  /// @notice Emitted when a collateral transfer request is cancelled
  /// @param requestId The ID of the cancelled transfer request
  /// @param canceller The address that cancelled the transfer
  event CollateralTransferCancelled(
    uint256 indexed requestId,
    address indexed canceller
  );

  /// @notice Emitted when a collateral reservation request is cancelled
  /// @param requestId The ID of the cancelled reservation request
  /// @param canceller The address that cancelled the reservation
  event CollateralReservationCancelled(
    uint256 indexed requestId,
    address indexed canceller
  );

  /// @notice Emitted when a pool requests to return undeployed collateral
  /// @param requestId The ID of the return request
  /// @param pool The address of the pool requesting the return
  /// @param token The address of the token being returned
  /// @param amount The amount of tokens requested to return
  /// @param total The total amount including any adjustments
  event UndeployedCollateralReturnRequested(
    uint256 indexed requestId,
    address indexed pool,
    address indexed token,
    uint256 amount,
    uint256 total
  );

  /// @notice Emitted when a pool requests to return deployed collateral
  /// @param requestId The ID of the return request
  /// @param pool The address of the pool requesting the return
  /// @param token The address of the token being returned
  /// @param netAmount The amount of tokens requested to return (excluding fees)
  /// @param fees The amount of fees to be kept by the pool
  /// @param total The total amount including fees
  event DeployedCollateralReturnRequested(
    uint256 indexed requestId,
    address indexed pool,
    address indexed token,
    uint256 netAmount,
    uint256 fees,
    uint256 total
  );

  /// @notice Emitted when a pool requests to return profits
  /// @param requestId The ID of the profit return request
  /// @param pool The address of the pool requesting to return profits
  /// @param token The address of the profit token
  /// @param amount The amount of profits to return
  /// @param fees The amount of fees to be kept by the pool
  /// @param total The total amount including fees
  /// @param timestamp The time when the request was made
  event ProfitReturnRequested(
    uint256 indexed requestId,
    address indexed pool,
    address indexed token,
    uint256 amount,
    uint256 fees,
    uint256 total,
    uint256 timestamp
  );

  /// @notice Emitted when a profit return request is cancelled
  /// @param requestId The ID of the cancelled request
  /// @param canceller The address that cancelled the request
  /// @param timestamp The time when the request was cancelled
  event ProfitReturnCancelled(
    uint256 indexed requestId,
    address indexed canceller,
    uint256 timestamp
  );

  /// @notice Emitted when a pool requests to increase its collateral limit
  /// @param requestId The ID of the limit increase request
  /// @param pool The address of the pool requesting the increase
  /// @param currentLimit The pool's current collateral limit
  /// @param requestedLimit The new requested limit
  /// @param timestamp The time when the request was made
  event CollateralLimitIncreaseRequested(
    uint256 indexed requestId,
    address indexed pool,
    uint256 currentLimit,
    uint256 requestedLimit,
    uint256 timestamp
  );

  /// @notice Emitted when a collateral limit increase request is cancelled
  /// @param requestId The ID of the cancelled request
  /// @param canceller The address that cancelled the request
  /// @param timestamp The time when the request was cancelled
  event CollateralLimitIncreaseCancelled(
    uint256 indexed requestId,
    address indexed canceller,
    uint256 timestamp
  );

  /// @notice Request to reserve collateral tokens for future transfer
  /// @dev Only callable by registered pools
  /// @param token The address of the token to reserve
  /// @param amount The amount of tokens to reserve
  /// @return reservationRequestId The unique identifier for the reservation request
  function requestCollateralReservation(
    address token,
    uint256 amount
  ) external returns (uint256 reservationRequestId);

  /// @notice Request to transfer previously reserved collateral
  /// @dev Only callable by registered pools with approved reservations
  /// @param token The address of the token to transfer
  /// @param amount The amount of tokens to transfer
  /// @return transferRequestId The unique identifier for the transfer request
  function requestCollateralTransfer(
    address token,
    uint256 amount
  ) external returns (uint256 transferRequestId);

  /// @notice Cancel a pending collateral reservation request
  /// @dev Only callable by the pool that created the request
  /// @param requestId The ID of the request to cancel
  function cancelCollateralReservation(uint256 requestId) external;

  /// @notice Get the amount of tokens reserved for a pool
  /// @dev Returns the amount of tokens that have been approved for reservation but not yet transferred
  /// @param pool The address of the pool to query
  /// @param token The address of the token to query
  /// @return amount The amount of tokens currently reserved
  function getReservedAmount(
    address pool,
    address token
  ) external view returns (uint256 amount);

  /// @notice Request to return undeployed collateral back to the provider
  /// @param token The address of the token to return
  /// @param amount The amount of tokens to return
  /// @return requestId The ID of the return request
  function requestUndeployedCollateralReturn(
    address token,
    uint256 amount
  ) external returns (uint256 requestId);

  /// @notice Request to return deployed collateral back to the provider, keeping generated fees
  /// @param transferredToken The address of the token to return
  /// @param returnToken The address of the token to return
  /// @param amount The amount of tokens to return
  /// @param fees The amount of fees to keep
  /// @return requestId The ID of the return request
  function requestDeployedCollateralReturn(
    address transferredToken,
    address returnToken,
    uint256 amount,
    uint256 fees
  ) external returns (uint256 requestId);

  /// @notice Returns the total value of all collateral (reserved + transferred) for a pool
  /// @param pool The address of the pool
  /// @return totalValue The total value normalized to 18 decimals
  function getTotalValue(
    address pool
  ) external view returns (uint256 totalValue);

  /// @notice Retrieves details of a deployed collateral return request
  /// @dev Returns information about the tokens, amounts, and status
  /// @param requestId The ID of the request to query
  /// @return transferredToken The address of the token that was originally transferred
  /// @return amount The amount of tokens requested to return
  /// @return fees The amount of fees to be kept by the pool
  /// @return status The current status of the request
  function getDeployedCollateralReturnRequest(
    uint256 requestId
  )
    external
    view
    returns (
      address transferredToken,
      uint256 amount,
      uint256 fees,
      RequestStatus status
    );

  /// @notice Request to return profits generated from collateral deployment
  /// @dev Only callable by registered pools with deployed collateral
  /// @param token The address of the profit token to return
  /// @param amount The amount of profits to return
  /// @param totalFees The total fees to be kept by the pool
  /// @return requestId The unique identifier for the profit return request
  function requestProfitReturn(
    address token,
    uint256 amount,
    uint256 totalFees
  ) external returns (uint256 requestId);

  /// @notice Cancel a pending profit return request
  /// @dev Only callable by the pool that created the request
  /// @param requestId The ID of the request to cancel
  function cancelProfitReturn(uint256 requestId) external;

  /// @notice Gets the details of a profit return request
  /// @dev Returns all relevant information about a specific profit return request
  /// @param requestId The ID of the request to query
  /// @return token The address of the profit token
  /// @return amount The amount of profits requested to return
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
      uint256 amount,
      uint256 fees,
      uint256 total,
      RequestStatus status
    );

  /// @notice Get the total amount of profits returned by a pool for a specific token
  /// @dev Returns the cumulative amount of profits returned
  /// @param pool The address of the pool to query
  /// @param token The address of the token to query
  /// @return The total amount of profits returned
  function getProfitReturnsAmount(
    address pool,
    address token
  ) external view returns (uint256);

  /// @notice Returns the total value of all collateral returned by a pool
  /// @param pool The address of the pool
  /// @return totalValue The total value normalized to 18 decimals
  function getTotalReturnedCollateral(
    address pool
  ) external view returns (uint256 totalValue);

  /// @notice Request to increase a pool's collateral limit
  /// @dev Only callable by registered pools before their transfer date
  /// @param requestedLimit The new requested collateral limit
  /// @return requestId The unique identifier for the limit increase request
  function requestCollateralLimitIncrease(
    uint256 requestedLimit
  ) external returns (uint256 requestId);

  /// @notice Cancel a pending collateral limit increase request
  /// @dev Only callable by the pool that created the request
  /// @param requestId The ID of the request to cancel
  function cancelCollateralLimitIncrease(uint256 requestId) external;

  /// @notice Get the details of a collateral limit increase request
  /// @dev Returns all relevant information about a specific request
  /// @param requestId The ID of the request to query
  /// @return pool The address of the requesting pool
  /// @return currentLimit The pool's current collateral limit
  /// @return requestedLimit The requested new limit
  /// @return status The current status of the request
  /// @return timestamp The timestamp when the request was created
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
    );

  /// @notice Get the address of the collateral token handler
  /// @dev Returns the address of the collateral token handler
  /// @return The address of the collateral token handler
  function getCollateralTokenHandler() external view returns (address);
}
