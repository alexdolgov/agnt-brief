// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IGlmRouter {
    /*//////////////////////////////////////////////////////////////
                            events
    //////////////////////////////////////////////////////////////*/
    event SetDepositThresholds(uint256 depositSplitingThresholdBps, uint256 allPoolSplitingThresholdBps);
    event SetWithdrawalThresholds(uint256 withdrawalSplitingThresholdBps, uint256 allPoolSplitingThresholdBps);
    event SetGmExecutionFee(uint256 gmExecutionFee);
    event RequestDeposit(address indexed user, uint256 amount, bytes32[5] keys, uint256 depositTimestamp);
    event RequestWithdrawal(address indexed user, uint256 amount, bytes32[5] keys, uint256 withdrawalTimestamp);
    event SetGlmKeeper(address keeper);
    event GmTokenDeposit(address indexed user, address gmToken, uint256 gmTokenAmount, uint256 depositTimestamp);
    event GmTokenWithdrawal(address indexed user, address withdrawalTargetToken, uint256 glmAmount, uint256 withdrawalTimestamp);
    event SetGmTokens(address[] gmTokens, bool isGmTokens);
    event SetGMXAddresses(address depositVault, address withdrawalVault, address gmxRouter, address exchangeRouter);

    /*//////////////////////////////////////////////////////////////
                            Structs
    //////////////////////////////////////////////////////////////*/
    struct GMXAddresses {
        address depositVault;
        address withdrawalVault;
        address gmxRouter;
        address exchangeRouter;
    }

    struct GmPoolInfo {
        address marketToken;
        address indexToken;
        address shortToken;
        address longToken;
        uint256 targetWeight;
    }

    struct TransactionInfo {
        address user;
        uint256 glmAmount;
        uint256 pendingExecutionAmount; //@note during the withdrawal, the glm amount is not yet burned but the gmTokens are already sent to GMX. This is the amount added to the total Asset temporarily, will be deducted after the withdrawal is completed.
        bool isCompleted;
        uint256 usdcDepositAmount;
        address marketToken;
    }

    struct DepositThresholds {
        uint256 splittingBps;
        uint256 allPoolSplittingBps;
    }

    struct WithdrawalThresholds {
        uint256 splittingBps;
        uint256 allPoolSplittingBps;
    }

    function getTransactionInfo(bytes32 key) external view returns (TransactionInfo memory);

    function getGmxAddressesAndFee()
        external
        view
        returns (address depositVault, address withdrawalVault, address gmxRouter, address exchangeRouter, uint256 executionFee);

    function setPause(bool isPause) external;

    function setTransactionCompleted(bytes32 key, bool isCompleted) external;

    function isPoolGmToken(address _token) external view returns (bool);

    function checkIsPaused() external view returns (bool);

    function transferTokens(address token, address to, uint256 amount) external returns (bool);
}
