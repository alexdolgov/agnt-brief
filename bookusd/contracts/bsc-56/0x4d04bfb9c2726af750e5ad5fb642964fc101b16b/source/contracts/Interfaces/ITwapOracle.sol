// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

interface ITwapOracle {
    function update() external;

    function consult(address _token, uint _amountIn) external view returns (uint256);

    function blockTimestampLast() external view returns (uint32);

    function PERIOD() external view returns (uint256);
}
