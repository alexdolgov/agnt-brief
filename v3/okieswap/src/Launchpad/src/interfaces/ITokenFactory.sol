// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ITokenFactory {
    enum TokenStatus {
        SENTINEL,
        FUNDING,
        FUNDED,
        TRADING
    }

    function createToken(
        string memory name,
        string memory symbol,
        address creator,
        uint256 initialBuyAmount
    ) external payable returns (address);
    function tokens(address token) external view returns (TokenStatus);
    function fundToken() external returns (address);

    error InvalidAddress();
    error InvalidTokenStatus();
    error TokenSupplyNotEnough();
    error AmountNotEnough();
    error TransferFailed();
    error AmountZero();
    error InvalidFeePercent();
    error TokenNotSupported();
    error SlippageExceeded();

    event TokenCreated(address indexed token, uint256 timestamp);
    event TokenLiquidityAdded(address indexed tokenA, address indexed tokenB, uint256 amountA, uint256 amountB);
    event Bought(address indexed token, address indexed buyer, uint256 paidAmount, uint256 tokenAmount);
    event Sold(address indexed token, address indexed seller, uint256 tokenAmount, uint256 receivedAmount);
    event FeesWithdrawn(address indexed recipient, uint256 amount);
    event FeePercentUpdated(uint256 oldFeePercent, uint256 newFeePercent);
    event FundingTargetSet(uint256 oldTarget, uint256 newTarget);
    event FundingCompleted(address indexed tokenAddress, uint256 fundedAmount);
}
