// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/manager/IAccessManaged.sol";

import "src/interfaces/IGauge.sol";
import "src/interfaces/IWrapper.sol";
import "./ISwapProvider.sol";

interface IRewarder is IAccessManaged {

    // TODO move to common library
    struct SwapInfo {
        address callee; // callee
        bytes data; // swap call data
        uint256 amount; // amount to swap
        address token; // token to swap
    }
    struct TransferInfo {
        uint256 amount; // amount to transfer
        address token; // token to transfer
    }

    function compound(
        IWrapper wrapper,
        IGauge gauge,
        ISwapProvider.SwapInfo[] calldata swaps,
        address poolToken,
        uint256 minTokensBought,
        uint32 deadline
    ) external returns(uint tokensBought);

    function recoverFunds(TransferInfo calldata transfer, address to) external;

    function pendingRewards(IWrapper wrapper) external returns(address[] memory tokens, uint[] memory amounts);
}
