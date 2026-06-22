// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


interface ILaunchpadTokenFactory {
    event Deployed(address indexed token, address indexed bondingCurve, address indexed creator, uint256 timestamp);
    event Migrated(address indexed token, address indexed bondingCurve);

    function bondingCurveMap(address token) external view returns (address);

    function deployToken(
        string memory name_,
        string memory symbol_,
        uint256 initialSupply_
    ) external payable returns (address token);
    function buy(address token, uint256 amountOutMin) external payable;
    function sell(address token, uint256 amountIn, uint256 amountOutMin) external;
    function migrate(address token) external;
    function emergencyWithdraw(address token, address to) external;
    function withdrawFees(address to) external;
    function owner() external view returns (address);

    function uniV2Router() external view returns (address);
    function uniV2Factory() external view returns (address);
}