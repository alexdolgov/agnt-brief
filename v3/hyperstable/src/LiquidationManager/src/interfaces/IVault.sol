// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

interface IVault is IERC4626 {
    function MINTER_ROLE() external view returns (uint256);
    function BURNER_ROLE() external view returns (uint256);
    function TAKER_ROLE() external view returns (uint256);
    function grantRoles(address, uint256) external payable;

    function assetPrice() external view returns (uint256);
    function sharePrice() external view returns (uint256);

    function take(address, uint256) external;
}
