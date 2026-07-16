// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.26;

import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

import {Constants} from "src/libraries/Constants.sol";

interface ILntVault0GArb is IERC165 {
    event PauseDeposit(address account);
    event UnpauseDeposit(address account);
    event PauseRedeem(address account);
    event UnpauseRedeem(address account);

    event Deposit(uint256 indexed tokenId, address indexed user);

    event Redeem(uint256 indexed tokenId, address indexed user);

    function NFT() external view returns (address);

    function deposit(uint256 tokenId) external;

    function redeem() external returns (uint256 tokenId);

    function pausedDeposit() external view returns (bool);
    function pausedRedeem() external view returns (bool);
}
