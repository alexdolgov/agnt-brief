// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IjGM} from "src/interfaces/leverage/IjGM.sol";

import {ILeverageStrategy} from "src/interfaces/leverage/ILeverageStrategy.sol";
import {IGMRouter} from "src/interfaces/gm/IGMRouter.sol";

interface ILeverageRouter {
    struct GMData {
        IGMRouter.Data data;
        bytes signature;
    }

    function createDeposit(uint256 _assets, address _receiver, bytes calldata _data) external payable;

    function createWithdrawal(uint256 _shares, address _receiver, bytes calldata _data) external payable;

    function jGM() external returns (IjGM);
    function leverageStrategy() external returns (ILeverageStrategy);

    function incentiveReceiver() external view returns (address);
    function depositRate() external view returns (uint256);

    function pause() external;
    function isPaused() external view returns (bool);

    event NewDeposit(address indexed owner, address indexed receiver, uint256 assets);
    event NewWithdraw(address indexed owner, address indexed receiver, uint256 assetsValue, uint256 shares);
    event Retention(address indexed receiver, uint256 amount, uint256 amountAfterRetention);

    error NotEnoughAmount();
    error Censored();
    error ZeroAddress();
    error DataOutdated();
    error InvalidRate();
    error OutOfRange();
    error InvalidAmount();
    error InvalidAction();
    error ReceiverBlacklisted();
}
