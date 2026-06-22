pragma solidity 0.8.21;

interface IValuationModule {
    function portfolioValue() external view returns (uint256);

    function onDeposit(uint256 assets) external;

    function onWithdraw(uint256 assets) external;

    function updatePortfolioValue(uint256 newValue) external;

    function setFee(uint256 newFee) external;

    function claimFee() external returns (uint256);

    function feeAccrued() external view returns (uint256);
}
