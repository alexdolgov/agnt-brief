// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

interface IFeePolicy {
    function quoteAllocatedInFee(uint256 amount_) external view returns (uint256 _fee);

    function quoteAllocatedOutFee(uint256 amount_) external view returns (uint256 _fee);

    function quoteTimeBasedFee() external view returns (uint256 _fee);
}
