// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IHlpPool {
    function hlpLiquidity(address asset) external view returns (uint256);
}

interface IHlpWithdrawalHandler {
    enum WithdrawalStatus {
        //@note should have a status when there is no order created, avoid adding it to keep the storage layout
        REQUESTED,
        SWAPPED,
        EXECUTED
    }

    struct GMXAddresses {
        address depositVault;
        address withdrawalVault;
        address gmxRouter;
        address exchangeRouter;
        address roleStore;
    }

    event SetGMXAddresses(address depositVault, address withdrawalVault, address gmxRouter, address exchangeRouter);

    event GmTokenSwapped(uint256 orderId, address longTokenAddress, uint256 longTokenAmount, uint256 usdcAmount);

    struct ClosePosition {
        bytes32 gmxWithdrawalKey;
        address user;
        uint256 longTokenAmount;
        uint256 usdcAmount;
        address marketToken;
        WithdrawalStatus status;
        bool isLiquidation;
    }

    event SetGmExecutionFee(uint256 gmExecutionFee);

    event SetKeeper(address keeper);

    event SetKyberRouter(address kyberRouter);

    event SetTokenAddresses(address usdcE, address weth, address usdc);

    event SetRumVault(address rumVault);

    event SetHlpPool(address hlpPool);

    function sellGmToken(uint256 orderId, uint256 gmAmount, address marketToken, address user, bool isLiquidation) external payable;

    function getHlpLiquidity() external view returns (uint256);
}
