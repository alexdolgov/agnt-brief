pragma solidity ^0.8.23;

interface IFraxLoanCallback {
    function onFraxLoan(address asset, uint256 amount, bytes calldata data) external;
}
