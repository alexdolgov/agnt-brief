// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface IStakedDF {
    function stake(
        address _recipient,
        uint256 _rawUnderlyingAmount
    ) external returns (uint256 _tokenAmount);

    function unstake(
        address _recipient,
        uint256 _rawTokenAmount
    ) external returns (uint256 _tokenAmount);

    function unstakeUnderlying(
        address _from,
        uint256 _underlyingAmount
    ) external;

    function getCurrentExchangeRate()
        external
        view
        returns (uint256 _exchangeRate);

    function DF() external view returns (address);

    function balanceOf(address _account) external view returns (uint256);
}
