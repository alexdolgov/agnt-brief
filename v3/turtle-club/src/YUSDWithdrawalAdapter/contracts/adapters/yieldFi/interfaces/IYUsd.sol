// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/interfaces/IERC4626.sol";

interface IYUsd is IERC4626 {
    function manager() external view returns (address);
}
