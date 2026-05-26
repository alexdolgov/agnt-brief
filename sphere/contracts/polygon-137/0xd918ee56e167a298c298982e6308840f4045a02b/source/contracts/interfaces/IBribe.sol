// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

interface IBribe {
    function rewardTokensLength() external view returns (uint256);

    function rewardTokens(uint256) external view returns (address);

    function earned(address, uint256) external view returns (uint256);
}
