// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISatoriIdo {
    function getIdoInfo()
        external
        view
        returns (
            uint256 idoStartTime,
            uint256 idoStepSecStartTime,
            uint256 idoStepThirdStartTime,
            uint256 targetTokenAmount,
            uint256 collectTokenAmounts,
            address targetTokenAddr,
            address collectTokenAddr,
            uint256 lpStep2DiscountRateM,
            uint256 lpStep2DiscountRateBase,
            uint256 lpCollectTokenLimitRateM,
            uint256 lpCollectTokenLimitRateBase,
            uint256 minBuyTokenAmount,
            uint256 maxIdoAmount,
            uint256 buyTokenCollected,
            uint256 buyTokenMathed,
            bool idoFailed,
            bool isPaused
        );

    function getMyStakingInfo()
        external
        view
        returns (
            uint256 myIdoStatus,
            uint256 lpStakingAmtStep1,
            uint256 lpStakingAmtStep2,
            uint256 collectStakingLimit,
            uint256 collectStakingAmt,
            uint256 targetAllotAmt,
            uint256 refundCollectAmt,
            uint256 settleTime
        );

    function stakingLp(uint256 _lpAmount) external payable;

    function stakingCollectToken(uint256 _bsAmount) external payable;

    function claim() external;

    function pmClaim() external;

    function refund() external;

    function pmRefund() external;

    function pause() external;

    function unpause() external;

    function fail() external;

    function changeIdoStepSecStartTime(uint256 _newTime) external;

    function changeIdoStepThirdStartTime(uint256 _newTime) external;

    function changeLpCollectTokenLimitRate(
        uint256 _rateM,
        uint256 _rateBase
    ) external;
}
