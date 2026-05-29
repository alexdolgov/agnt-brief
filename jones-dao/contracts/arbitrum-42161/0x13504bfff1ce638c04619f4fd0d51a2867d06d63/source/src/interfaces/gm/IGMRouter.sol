// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IjGMIndex} from "src/interfaces/gm/IjGMIndex.sol";

import {IGMStrategy} from "src/interfaces/gm/IGMStrategy.sol";

interface IGMRouter {
    // 1 = Idle
    // 2 = Deposit
    // 3 = Withdrawal
    // 4 = Leverage up
    // 5 = Leverage down
    // 6 = Harvest
    // 7 = Liquidate
    // 8 = Payback
    struct Data {
        uint8 action;
        uint256 amount;
        uint256 aum;
        uint256 executionAmount;
        IGMStrategy.GMData[] gmData;
        uint256 deadline;
    }

    function createDeposit(
        uint256 _assets,
        address _receiver,
        uint256 _usdAUM,
        bytes calldata _data,
        bytes calldata _signature
    ) external payable;

    function createWithdrawal(
        uint256 _shares,
        address _receiver,
        uint256 _usdAUM,
        bytes calldata _data,
        bytes calldata _signature
    ) external payable;

    function increaseNonce() external;

    function vault() external returns (IjGMIndex);

    function nonce() external view returns (uint256);

    function gmDataTypeHash() external view returns (bytes32);
    function dataTypeHash() external view returns (bytes32);

    function verifyParams(IGMRouter.Data memory params, bytes calldata signature) external;

    function gmxDepositCheck() external;
    function gmxWithdrawalCheck() external;

    event NewDeposit(address indexed owner, address indexed receiver, uint256 assets);
    event NewWithdraw(address indexed owner, address indexed receiver, uint256 assetsValue, uint256 shares);

    error ZeroAmount();
    error InvalidParameters();
    error GMXFeatureDisable();
}
