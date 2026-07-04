//SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

interface IInsuranceCapitalLayer {
  enum RedeemRequestStatus {
    REQUESTED,
    CLAIMABLE,
    CLAIMED,
    CANCELLED
  }
  struct RedeemRequestQueue {
    uint id;
    address requester;
    uint amount;
    uint requestTime;
    uint claimedTime;
    RedeemRequestStatus status;
    uint price18;
  }
  // function deposit(
  //   address token,
  //   uint256 amount,
  //   address receiver,
  //   bytes32[] calldata proof
  // ) external;
  // function processPrestakedDeposit(
  //   address token,
  //   uint amount,
  //   address receiver,
  //   bytes32[] calldata proof
  // ) external;
  function depositCollateralToPool(address poolAddress_, uint amount_) external;
  function withdrawUSDCFromPool(address poolAddress_, uint amount_) external;

  // function previewMint(
  //   address token,
  //   uint256 shares
  // )
  //   external
  //   view
  //   returns (
  //     uint256 amount,
  //     uint256 depositFees,
  //     bool isAllowed,
  //     string memory errorMessage
  //   );

  function addCustodian(address token, address custodian) external;
  function removeCustodian(address token, address custodian) external;
  function withdrawToCustodian(
    address custodian,
    address token,
    uint256 amount
  ) external;

  function isCustodian(
    address token,
    address custodian
  ) external view returns (bool);

  function getCustodiansForToken(
    address token
  ) external view returns (address[] memory);
}
