// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import {IERC4626} from "openzeppelin-contracts/contracts/interfaces/IERC4626.sol";

interface IVault is IERC4626 {
    function rawWithdraw(uint256 assets, address recipient) external;
    function rawDeposit(address from, address to, uint256 assets) external;
    function mUSDC() external returns (address);
    function previewRedeemParametrized(uint256 shares, uint256 totalSupply, uint256 totalAssets)
        external
        view
        returns (uint256 assets);
    function initialize(
        address USDC,
        address ownerAddress,
        address controller,
        address mUSDCAddress,
        string memory name,
        string memory symbol
    ) external;
    function deposit(uint256 assets, uint256 minShares, address receiver) external returns (uint256);
}
