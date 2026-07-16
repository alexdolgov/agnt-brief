pragma solidity ^0.8.28;

interface ITheoTTokenOracle {
    function BPS_DENOMINATOR() external view returns (uint256);

    function getLatestExchangeRate() external view returns (uint256);

    function getEpochExchangeRate(uint256 _epoch) external view returns (uint256);
}
