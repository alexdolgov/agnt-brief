// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IAggregatorV3} from "src/interfaces/swap/IAggregatorV3.sol";
import {IRebalance} from "src/interfaces/strategy/IRebalance.sol";

interface IGMStrategy {
    /// @notice Gmx Interaction Data
    struct Data {
        uint8 callbackCounter;
        address user;
        uint256 shares;
        uint256 assets;
        uint256 usdc;
    }

    struct GMToken {
        address token;
        IAggregatorV3 oracle;
        uint256 stalePeriod;
        uint64 target;
        address long;
        address short;
    }

    /// @notice Gmx Interaction Data
    struct GMData {
        uint8 gmTokenIndex;
        address[] longPath;
        address[] shortPath;
        uint256 longMinAmountOut;
        uint256 shortMinAmountOut;
        uint256 amount;
        uint256 executionFee;
        uint256 callbackGasLimit;
    }

    function strategyDeposit(address _receiver, uint256 _assets, uint256 _shares, GMData[] calldata _data)
        external
        payable;

    function strategyWithdraw(address _receiver, uint256 _assets, uint256 _shares, GMData[] calldata _data)
        external
        payable;

    function rebalanceInput(address marketToken, uint256 amount) external;

    function nextRebalanceStage() external;

    function rebalanceStage() external view returns (uint8);

    function operationOnGoing() external view returns (bool);

    function operationCheck() external view;

    function numOfGMs() external view returns (uint8);

    function keys(bytes32 key) external view returns (bytes32);

    function rebalanceAmounts(address gmToken) external view returns (uint256);

    function router() external view returns (address);

    function rebalance() external view returns (IRebalance);

    function getTokenList(uint8 _index) external view returns (GMToken calldata);

    function getGMToken(address marketToken) external view returns (GMToken calldata);

    function gmxData(bytes32 key) external view returns (uint8, address, uint256, uint256, uint256);

    event GmDeposit(bytes32 indexed key, address marketToken, uint256 amount);
    event DepositExecuted(address indexed user, uint256 shares);
    event NewPendingDeposit(bytes32 indexed depositId, address marketToken, uint256 amount);
    event GmWithdraw(bytes32 indexed key, address marketToken, uint256 amount);
    event WithdrawExecuted(bytes32 indexed key, address marketToken, uint256 usdcAmount);
    event NewPendingWithdraw(bytes32 indexed key, address marketToken, uint256 usdcAmount);
    event WithdrawalSwapFail(bytes32 indexed key, address marketToken, uint256 amount, Data data);
    event EmergencyWithdrawal(address indexed caller, address to, address[] assets, uint256 nativeBalance);

    error InvalidLength();
    error OutOfRange();
    error ZeroAddress();
    error InvalidTarget();
    error OngoingOperation();
    error OperationNotStarted();
    error OngoingRebalance();
    error RebalanceNotStarted();
    error Unauthorized();
    error FailSendETH();
}
