// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {INOWritable} from "./writable/INOWritable.sol";
import {INOReadable} from "./readable/INOReadable.sol";

/**
 * @title INO
 * @notice Initial NFT Offering contract.
 * @dev Constructor replaced by the `initialize` function in {INOWritable}.
 */
contract INO is
    INOWritable, // 21 inherited component
    INOReadable // 7 inherited components
{}
