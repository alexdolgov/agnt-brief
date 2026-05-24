// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

// vault that controls a single token
interface IBunnyVault {

    // Read

    function keeper() external view returns (address);

    function balanceOf(address _account) external view returns (uint256);

    function depositedAt(address _account) external view returns (uint256);

    function minter() external view returns (address);

    function principalOf(address _account) external view returns (uint256);

    function sharesOf(address _account) external view returns (uint256);

    function earned(address _account) external view returns (uint256);

    function withdrawableBalanceOf(address _account) external view returns (uint256);

    function balance() external view returns (uint256);

    function totalShares() external view returns (uint256);

    function totalSupply() external view returns (uint256);

    // for tests, callable only by keeper
    function harvest() external;
}
