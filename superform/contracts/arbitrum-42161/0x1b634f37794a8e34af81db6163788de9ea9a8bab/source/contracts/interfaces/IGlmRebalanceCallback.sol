// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IGlmRebalanceCallback {
    struct FailedSalesInfo {
        address gmToken;
        uint256 gmTokenAmount;
    }

    struct FailedBuyInfo {
        address gmToken;
        uint256 usdcAmount;
    }

    event FinalizeRebalanceReady(uint256 roundId);
    event SetUniSwapParams(address uniV3Router, uint24 uniV3Fee);
    event SetRoleStore(address roleStore);
    event SetTokenAddresses(address weth, address usdc);
    event SetTokenToUniswapFee(address token, uint24 fee);
    event SetGlmKeeper(address keeper);

    function editRoundIdToDepositCount(uint256 _roundId, uint256 _count) external;

    //function to edit the roundIdToWithdrawalCount
    function editRoundIdToWithdrawalCount(uint256 _roundId, uint256 _count) external;

    function currentGlmKeeper() external view returns (address);

    function getFailedSalesInfo(bytes32 key) external view returns (address gmToken, uint256 gmTokenAmount);

    function getFailedBuyInfo(bytes32 key) external view returns (address gmToken, uint256 usdcAmount);
}
