pragma solidity 0.8.18;

interface IFeeCollector {
    function collectFee(
        address feeAsset,
        uint256 feeAmount,
        address referrer
    ) external;
}
