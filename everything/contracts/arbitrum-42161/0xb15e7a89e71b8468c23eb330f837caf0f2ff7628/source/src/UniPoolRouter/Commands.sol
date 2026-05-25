// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.0;

/**
 * @title Commands Library
 * @notice Library defining command flags and masks for the UniPool Router.
 */
library Commands {
    /// @notice Flag indicating that a command is allowed to revert without failing the entire execution.
    bytes1 internal constant FLAG_ALLOW_REVERT = 0x80;

    /// @notice Mask to extract the command type from a command byte.
    bytes1 internal constant COMMAND_TYPE_MASK = 0x3f;

    // the commands are executed in consecutive if blocks to speed up search
    // the first block is cheaper to reach than the last, and the first command in each block is cheaper than the last
    // note that the for most blocks, the last action might be more expensive than the first action of the next block
    // the number of comparisons can be used as a heuristic for the gas cost comparison between two commands

    /// @notice Command type for exact input swaps on UniPool.
    uint256 constant UNIPOOL_SWAP_EXACT_IN = 0x00;
    /// @notice Command type for exact output swaps on UniPool.
    uint256 constant UNIPOOL_SWAP_EXACT_OUT = 0x01;
    /// @notice Command type for adding liquidity to a UniPool pair.
    uint256 constant UNIPOOL_ADD_LIQUIDITY = 0x02;
    /// @notice Command type for removing liquidity from a UniPool pair.
    uint256 constant UNIPOOL_REMOVE_LIQUIDITY = 0x03;
    /// @notice Command type for creating a new UniPool pair.
    uint256 constant UNIPOOL_CREATE_PAIR = 0x04;
    // 0x05 to 0x0f unused

    /// @dev The following constant defines one of the boundaries where the if blocks split commands.
    uint256 constant FIRST_IF_BOUNDARY = 0x10;

    /// @notice Command type for a simple, single borrow on a UniPool pair.
    uint256 constant UNIPOOL_BORROW_SINGLE = 0x10;
    /// @notice Command type for a multiple borrow or leverage position on a UniPool pair.
    uint256 constant UNIPOOL_BORROW_MULTIPLE = 0x11;
    /// @notice Command type for repaying a loan.
    uint256 constant UNIPOOL_REPAY = 0x12;
    /// @notice Command type for transferring a loan on a UniPool pair.
    uint256 constant UNIPOOL_TRANSFER_LOAN = 0x13;
    /// @notice Command type to liquidate positions on a UniPool pair.
    uint256 constant UNIPOOL_LIQUIDATE = 0x14;
    /// @notice Command type for distributing protocol fees from a UniPool pair.
    uint256 constant UNIPOOL_DISTRIBUTE_PROTOCOL_FEES = 0x15;
    // 0x16 to 0x1f unused

    /// @dev The following constant defines one of the boundaries where the if blocks split commands.
    uint256 constant SECOND_IF_BOUNDARY = 0x20;

    /// @notice Command type to sweep token/ETH from the router.
    uint256 constant SWEEP = 0x20;
    /// @notice Command type to perform a `permit` with permit2.
    uint256 constant PERMIT2_PERMIT = 0x21;
    /// @notice Command type to perform a batch `permit` with permit2.
    uint256 constant PERMIT2_PERMIT_BATCH = 0x22;
    /// @notice Command type to perform a `transferFrom` with permit2.
    uint256 constant PERMIT2_TRANSFER_FROM = 0x23;
    /// @notice Command type to perform a batch `transferFrom` with permit2.
    uint256 constant PERMIT2_TRANSFER_FROM_BATCH = 0x24;
    /// @notice Command type to wrap ETH.
    uint256 constant WRAP_ETH = 0x25;
    /// @notice Command type to unwrap WETH.
    uint256 constant UNWRAP_ETH = 0x26;
    /// @notice Command type to transfer ETH or a token amount.
    uint256 constant TRANSFER = 0x27;
    // 0x28 to 0x2f unused

    /// @dev The following constant defines one of the boundaries where the if blocks split commands.
    uint256 constant THIRD_IF_BOUNDARY = 0x30;
    // 0x30 to 0x3f unused
}
