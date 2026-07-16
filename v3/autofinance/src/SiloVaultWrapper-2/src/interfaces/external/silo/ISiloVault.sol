// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { IERC4626 } from "openzeppelin-contracts/interfaces/IERC4626.sol";

// solhint-disable func-name-mixedcase

interface ISiloVault is IERC4626 {
    function DECIMALS_OFFSET() external returns (uint256);

    function INCENTIVES_MODULE() external view returns (address);
}
