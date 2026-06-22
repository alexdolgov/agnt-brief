// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IGlmManagerCallback {
    struct WithdrawalFailedInfo {
        address longTokenAddress;
        uint256 longAmountFromGMX;
        uint256 usdcAmountFromGMX;
        bytes32 key;
        address user;
    }

    event GmTokenDepositCancellationFailed(address user, string errorMessage, bytes data);
    event GmTokenWithdrawalCancellationFailed(address user, string errorMessage, bytes data);

    event SetUniSwapParams(address uniV3Router, uint24 uniV3Fee);
    event SetRoleStore(address roleStore);
    event SetTokenAddresses(address weth, address usdc);
    event SetTokenToUniswapFee(address token, uint24 fee);

    event GmxCallbackFailure(bytes32 key, address indexed user, address longTokenAddress, uint256 gmTokenAmount, uint256 usdcAmount);

    function tempPayableAddress() external view returns (address);
}
