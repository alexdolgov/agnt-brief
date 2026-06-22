pragma solidity 0.8.19;

interface ITroveManager {
    function redeemCollateral(
        uint _USDSamount,
        address _firstRedemptionHint,
        address _upperPartialRedemptionHint,
        address _lowerPartialRedemptionHint,
        uint _partialRedemptionHintNICR,
        uint _maxIterations,
        uint _maxFeePercentage,
        bytes[] calldata priceFeedUpdateData
    ) external;
}
