// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IGlmManager {
    event SetUniSwapParams(address uniV3Router, uint24 uniV3Fee);
    event SetRoleStore(address roleStore);
    event SetGlmFeeReceiver(address glmFeeReceiver);
    event SetTokenAddresses(address weth, address usdc);
    event AddGmPool(
        uint256 poolindex,
        address marketToken,
        address indexToken,
        address shortToken,
        address longToken,
        uint256 targetWeight,
        uint256 minimumWeight
    );
    event SetGmPool(
        uint256 poolindex,
        address marketToken,
        address indexToken,
        address shortToken,
        address longToken,
        uint256 targetWeight,
        uint256 minimumWeight
    );
    event NotifyKeeperSwap(address longTokenAddress, uint256 longAmountFromGMX, uint256 usdcAmountFromGMX, bytes32 key, address user);

    event RemoveGmPool(uint256 poolindex);
    event SetGmPoolTargetWeight(uint256 poolindex, uint256 targetWeight);
    event DepositFromRouter(address gmToken, uint256 amount, address user);
    event SetIsFeeActive(bool isFeeActive);
    event SetGmPoolMinimumWeight(uint256 poolindex, uint256 minimumWeight);
    event WithdrawalFromRouter(address gmToken, uint256 gmAmount, uint256 glmAmount, address user, uint256 feeInUsdc, uint256 feeInGm);
    event SetGlmFeeCalculator(address glmFeeCalculator);
    event SetUSDC(address usdc);

    struct GmPoolInfo {
        address marketToken;
        address indexToken;
        address shortToken;
        address longToken;
        uint256 targetWeight;
        uint256 minimumWeight;
    }

    function isGmMarketToken(address _token) external view returns (bool);

    function isGmLongOrShortToken(address _token) external view returns (bool);

    function depositFromRouter(address gmToken, uint256 amount, address user) external;

    function withdrawFromRouter(address gmToken, uint256 gmAmount, uint256 glmAmount, address user) external;

    function getGmPoolLength() external view returns (uint256);

    function getGmTokenAddress(uint256 _index) external view returns (address);

    function getGmTokenValueInUsdc(address _gmToken, uint256 _amount) external view returns (uint256);

    function getTargetWeight(uint256 _index) external view returns (uint256 targetWeight);

    function getCurrentWeight(uint256 _index, uint256 _totalAssets) external view returns (uint256 currentWeight);

    function getMinimumWeight(uint256 _index) external view returns (uint256 minimumWeight);

    function getMostOverWeightedPool(uint256 totalAssets) external view returns (uint256 index);

    function getMostUnderWeightedPool(uint256 totalAssets) external view returns (uint256 index);

    function getRatioImpactFeeBps(uint256 _index, uint256 _usdcAmount) external view returns (uint256 ratioImpactFeeBps);

    function getMaxSwapAmount(uint256 inputIndex, uint256 outputIndex) external view returns (uint256 maxSwapAmountInInputToken);

    function getMaxSwapAmountWithTA(
        uint256 inputIndex,
        uint256 outputIndex,
        uint256 totalAssets
    ) external view returns (uint256 maxSwapAmountInInputToken);

    function getWeightAfterWithdrawalForSwap(
        uint256 _index,
        uint256 _usdcAmount,
        uint256 totalAssets
    ) external view returns (uint256 weightAfterWithdrawalForSwap);

    function getWeightAfterDepositForSwap(
        uint256 _index,
        uint256 _usdcAmount,
        uint256 totalAssets
    ) external view returns (uint256 weightAfterDepositForSwap);

    function getWeightAfterWithdrawal(
        uint256 _index,
        uint256 _usdcAmount,
        uint256 totalAssets
    ) external view returns (uint256 weightAfterWithdrawal);

    //prettier-ignore
    function getGmPoolByIndex(uint256 _index) external view returns (address marketToken, address indexToken, address shortToken, address longToken, uint256 targetWeight);

    //prettier-ignore
    function getGmPoolByGmToken(address _gmToken) external view returns (address marketToken, address indexToken, address shortToken, address longToken, uint256 targetWeight);

    function getPoolIdByMarketToken(address _marketToken) external view returns (uint256 poolId);

    function getGmTokenAmountFromUsdc(address _gmToken, uint256 _usdcAmount) external view returns (uint256 gmTokenAmount);
}
