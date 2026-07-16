// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.19;

interface IRangeVault {
    function burn(uint256 share) external returns (uint256, uint256);

    function getUnderlyingBalances() external view returns (uint256, uint256);

    function mint(uint256 amount) external returns (uint256, uint256);

    function totalSupply() external view returns (uint256);
}
