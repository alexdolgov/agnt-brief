// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IftYieldWrapper is IERC20Metadata {
    function initialize(
        address _owner,
        address _yieldClaimer,
        address _strategyManager,
        address _treasury
    )
        external;

    function token() external view returns (address);

    function deposit(uint256 amount) external;

    function canWithdraw(uint256 amount) external view returns (bool);

    function maxAbleToWithdraw(uint256 amount) external view returns (uint256);

    function withdraw(uint256 amount, address to) external;

    function withdrawBypassCB(uint256 amount, address to) external;

    function withdrawUnderlying(uint256 amount, address to) external;

    function strategyDelayConfig() external view returns (uint256);

    function setStrategyDelay(uint256 _delay) external;

    function circuitBreaker() external view returns (address);

    function setCircuitBreaker(address _circuitBreaker) external;

    function owner() external view returns (address);
}
