pragma solidity ^0.8.17;

interface ISmartLoanLiquidationFacet {
  function snapshotInsolvency() external;
  function liquidate(bool emergency) external;
  function getLastInsolventTimestamp() external view returns (uint256);
  function whitelistLiquidators(address[] memory _liquidators) external;
  function delistLiquidators(address[] memory _liquidators) external;
  function isLiquidatorWhitelisted(address _liquidator) view external returns(bool);

  event Liquidated(address indexed liquidator, bool indexed healing, uint256 initialTotal, uint256 initialDebt, uint256 repayAmount, uint256 bonusInUSD, uint256 health, uint256 timestamp);
  event LiquidationRepay(address indexed liquidator, bytes32 indexed asset, uint256 amount, uint256 timestamp);
  event LiquidationTransfer(address indexed liquidator, bytes32 indexed asset, uint256 amount, uint256 timestamp);
  event LiquidatorWhitelisted(address indexed liquidator, address performer, uint256 timestamp);
  event LiquidatorDelisted(address indexed liquidator, address performer, uint256 timestamp);
}
