// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.13;

/**
 * @title   DSquared Camelot Swap Module Interface
 * @notice  Allows direct swapping via the CamelotRouter contract
 * @author  HessianX
 * @custom:developer    BowTiedPickle
 * @custom:developer    BowTiedOriole
 */
interface ICamelot_Swap_Module {
    // ---------- Functions ----------

    function camelot_swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        address referrer,
        uint256 deadline
    ) external;

    function camelot_swapExactETHForTokens(
        uint256 valueIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        address referrer,
        uint256 deadline
    ) external;

    function camelot_swapExactTokensForETH(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        address referrer,
        uint256 deadline
    ) external;

    // ---------- Getters ----------

    function camelot_router() external view returns (address);
}
