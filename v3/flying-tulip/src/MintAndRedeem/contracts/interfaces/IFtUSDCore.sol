// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

interface IFtUSDCore {
    function ftUSD() external view returns (address);

    function mint(address to, uint256 amount) external;

    function burn(uint256 amount) external;
}
