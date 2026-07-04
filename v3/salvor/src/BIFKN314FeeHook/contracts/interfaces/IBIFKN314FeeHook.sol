// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IBIFKN314FeeHook {
    function baseSwapRate() external view returns (uint256);

    function lpFeePortion() external view returns (uint256);

    function protocolFeePortion() external view returns (uint256);

    function calculateFees(
        uint256 inputAmount
    )
        external
        view
        returns (uint256 baseSwapRate_, uint256 lpFee, uint256 protocolFee);

    function initialize(
        uint256 baseSwapRate_,
        uint256 lpFeePortion_,
        uint256 protocolFeePortion_
    ) external;

    function updateFeeConfig(
        uint256 baseSwapRate_,
        uint256 lpFeePortion_,
        uint256 protocolFeePortion_
    ) external;

    function updateBaseSwapRate(uint256 baseSwapRate_) external;

    function updateFeePortions(
        uint256 lpFeePortion_,
        uint256 protocolFeePortion_
    ) external;
}
