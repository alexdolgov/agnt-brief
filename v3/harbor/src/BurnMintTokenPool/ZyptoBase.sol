// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {BurnMintTokenPool} from "@chainlink/contracts-ccip/src/v0.8/ccip/pools/BurnMintTokenPool.sol";

// Deployment Instructions:
// Pass the Base ZYPTO Address, an empty array [], 
// the Base RMN Proxy 0xC842c69d54F83170C42C4d556B4F6B2ca53Dd3E8, and the Base CCIP Router 0x881e3A65B4d4a04dD529061dd0071cf975F58bCD.