// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

interface ICurveFiPool {
    function price_oracle(uint256 i) external view returns (uint256);
    function ma_last_time() external view returns (uint256);
    function coins(uint256 i) external view returns (address);
    function name() external view returns (string memory);
    function exchange(int128 i, int128 j, uint256 dx, uint256 min_dy) external returns (uint256);
    function N_COINS() external returns (uint256);
}
