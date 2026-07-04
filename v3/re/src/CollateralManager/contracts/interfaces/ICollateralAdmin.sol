// SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

/// @title Collateral Admin Interface
/// @notice Interface for administrative functions related to collateral management
/// @dev All functions are restricted to addresses with COLLATERAL_ADMIN role
interface ICollateralAdmin {
  /// @notice Emitted when a collateral reservation request is approved
  /// @param requestId The ID of the approved request
  /// @param approver The address that approved the request
  event CollateralReservationApproved(
    uint256 indexed requestId,
    address indexed approver
  );

  /// @notice Emitted when a collateral reservation request is rejected
  /// @param requestId The ID of the rejected request
  /// @param rejector The address that rejected the request
  /// @param reason The reason for rejection
  event CollateralReservationRejected(
    uint256 indexed requestId,
    address indexed rejector,
    string reason
  );

  /// @notice Emitted when a collateral transfer request is approved
  /// @param requestId The ID of the approved transfer request
  /// @param approver The address that approved the transfer
  event CollateralTransferApproved(
    uint256 indexed requestId,
    address indexed approver
  );

  /// @notice Emitted when an undeployed collateral return request is approved
  /// @param requestId The ID of the approved return request
  /// @param approver The address that approved the return
  /// @param total The total amount of collateral being returned
  event UndeployedCollateralReturnApproved(
    uint256 indexed requestId,
    address indexed approver,
    uint256 total
  );

  /// @notice Emitted when a deployed collateral return request is approved
  /// @param requestId The ID of the approved return request
  /// @param approver The address that approved the return
  /// @param total The total amount of collateral being returned
  event DeployedCollateralReturnApproved(
    uint256 indexed requestId,
    address indexed approver,
    uint256 total
  );

  /// @notice Emitted when a profit return request is approved
  /// @param requestId The ID of the approved profit return request
  /// @param approver The address that approved the return
  event ProfitReturnApproved(
    uint256 indexed requestId,
    address indexed approver
  );

  /// @notice Emitted when a profit return request is rejected
  /// @param requestId The ID of the rejected request
  /// @param rejector The address that rejected the request
  /// @param reason The reason for rejection
  event ProfitReturnRejected(
    uint256 indexed requestId,
    address indexed rejector,
    string reason
  );

  /// @notice Emitted when a collateral limit increase request is approved
  /// @param requestId The ID of the approved request
  /// @param approver The address that approved the increase
  /// @param timestamp The time when the increase was approved
  event CollateralLimitIncreaseApproved(
    uint256 indexed requestId,
    address indexed approver,
    uint256 timestamp
  );

  /// @notice Emitted when a collateral limit increase request is rejected
  /// @param requestId The ID of the rejected request
  /// @param rejector The address that rejected the request
  /// @param reason The reason for rejection
  /// @param timestamp The time when the increase was rejected
  event CollateralLimitIncreaseRejected(
    uint256 indexed requestId,
    address indexed rejector,
    string reason,
    uint256 timestamp
  );

  /// @notice Approves a pending collateral reservation request
  /// @param requestId The ID of the request to approve
  function approveCollateralReservation(uint256 requestId) external;

  /// @notice Rejects a pending collateral reservation request
  /// @param requestId The ID of the request to reject
  /// @param reason The reason for rejection
  function rejectCollateralReservation(
    uint256 requestId,
    string calldata reason
  ) external;

  /// @notice Approves a pending collateral transfer request
  /// @param requestId The ID of the request to approve
  function approveCollateralTransfer(uint256 requestId) external;

  /// @notice Approves a pending undeployed collateral return request
  /// @param requestId The ID of the request to approve
  function approveUndeployedCollateralReturn(uint256 requestId) external;

  /// @notice Approves a pending deployed collateral return request
  /// @param requestId The ID of the request to approve
  function approveDeployedCollateralReturn(uint256 requestId) external;

  /// @notice Approves a pending profit return request
  /// @param requestId The ID of the request to approve
  function approveProfitReturn(uint256 requestId) external;

  /// @notice Rejects a pending profit return request
  /// @param requestId The ID of the request to reject
  /// @param reason The reason for rejection
  function rejectProfitReturn(
    uint256 requestId,
    string calldata reason
  ) external;

  /// @notice Approves a pending collateral limit increase request
  /// @param requestId The ID of the request to approve
  function approveCollateralLimitIncrease(uint256 requestId) external;

  /// @notice Rejects a pending collateral limit increase request
  /// @param requestId The ID of the request to reject
  /// @param reason The reason for rejection
  function rejectCollateralLimitIncrease(
    uint256 requestId,
    string calldata reason
  ) external;
}
