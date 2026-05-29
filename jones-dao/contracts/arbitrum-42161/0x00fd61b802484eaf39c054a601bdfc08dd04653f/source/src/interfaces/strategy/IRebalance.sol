// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IExchangeRouter} from "src/interfaces/gmx/IExchangeRouter.sol";
import {IReader, MarketUtils} from "src/interfaces/gmx/IReader.sol";

import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";

interface IRebalance {
    struct GMDeposit {
        address marketToken;
        uint256 amount;
        uint256 minAmountOut;
        uint256 executionFee;
        uint256 extraGas;
    }

    struct GMWithdraw {
        address marketToken;
        uint256 amount;
        uint256 minLongOut;
        uint256 minShortOut;
        uint256 executionFee;
        uint256 extraGas;
    }

    struct Rebalance {
        address marketToken;
        uint256 gmAmount;
        uint256 usdcAmount;
        bool purchase;
    }

    function startRebalance(GMWithdraw[] memory _withdraws) external payable;

    function executePendingWithdraw(GMWithdraw[] memory _withdraws) external payable;

    function purchaseRebalance(GMDeposit[] memory _deposits) external payable;

    function executePendingDeposit(GMDeposit[] memory _deposits) external payable;

    function gmxRouter() external view returns (IExchangeRouter);
    function gmxReader() external view returns (IReader);
    function gmxDepositVault() external view returns (address);
    function gmxWithdrawVault() external view returns (address);

    function keeper() external view returns (address);
    function slippage() external view returns (uint256);
    function applySlippage(uint256 _amount) external view returns (uint256);
    function addSlippage(uint256 _amount) external view returns (uint256);
    function getSwapper(address tokenIn, address tokenOut) external view returns (ITokenSwapper);

    function onlyControllerOrKeeper(address sender) external view;

    function getMinAmountOut(uint256 usdcAmount, address marketToken, MarketUtils.MarketPrices memory prices)
        external
        view
        returns (uint256);

    event GmDeposit(bytes32 indexed key, address marketToken, uint256 amount);
    event DepositRebalance(bytes32 indexed key, uint256 numOfRebalance, Rebalance);
    event NewPendingDeposit(bytes32 indexed depositId, address marketToken, uint256 amount);
    event GmWithdraw(bytes32 indexed key, address marketToken, uint256 amount);
    event WithdrawRebalance(bytes32 indexed key, uint256 numOfRebalance, Rebalance);
    event NewPendingWithdraw(bytes32 indexed key, address marketToken, uint256 usdcAmount);
    event EmergencyWithdrawal(address indexed caller, address to, address[] assets, uint256 nativeBalance);

    error OngoingRebalance();
    error InvalidStage();
    error OutOfRange();
    error ZeroAddress();
    error InvalidParams();
    error Unauthorized();
    error FailSendETH();
}
