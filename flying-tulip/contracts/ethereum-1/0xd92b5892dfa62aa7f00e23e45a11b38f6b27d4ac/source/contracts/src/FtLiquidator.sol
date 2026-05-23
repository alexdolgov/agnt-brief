// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IRfqEngine} from "./interfaces/IRfqEngine.sol";
import {IFlash} from "./interfaces/IFlash.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title FtLiquidator
/// @notice Liquidation executor for ftDNMM protocol. Calls RfqEngine.rfqFillFlash,
///         receives seized collateral via IFlash callback, swaps it for debt tokens
///         via SwapExecutor, then repays.
contract FtLiquidator is IFlash {
    using SafeERC20 for IERC20;

    address public immutable owner;
    address public immutable rfqEngine;
    address public immutable swapRelayer;
    address public immutable swapExecutor;

    mapping(address => bool) public liquidators;

    error OnlyOwner();
    error OnlyLiquidator();
    error OnlyRfqEngine();

    modifier onlyOwner() {
        if (msg.sender != owner) revert OnlyOwner();
        _;
    }

    modifier onlyLiquidator() {
        if (!liquidators[msg.sender]) revert OnlyLiquidator();
        _;
    }

    constructor(address _rfqEngine, address _swapRelayer, address _swapExecutor) {
        owner = msg.sender;
        liquidators[msg.sender] = true;
        rfqEngine = _rfqEngine;
        swapRelayer = _swapRelayer;
        swapExecutor = _swapExecutor;
    }

    /// @notice Trigger a flash liquidation on RfqEngine.
    /// @param user The liquidatable account to liquidate.
    /// @param debtIn Debts to repay on behalf of the user.
    /// @param collOut Collateral to seize from the user.
    /// @param swapData abi.encode(bytes[] calldatas) — swap calldata for SwapExecutor.
    function liquidate(
        address user,
        IRfqEngine.DebtIn[] calldata debtIn,
        IRfqEngine.CollOut[] calldata collOut,
        bytes calldata swapData
    )
        external
        onlyLiquidator
    {
        for (uint256 i; i < collOut.length; ++i) {
            IERC20(collOut[i].asset).forceApprove(swapRelayer, collOut[i].amount);
        }
        for (uint256 i; i < debtIn.length; ++i) {
            IERC20(debtIn[i].asset).forceApprove(rfqEngine, debtIn[i].amount);
        }
        IRfqEngine(rfqEngine).rfqFillFlash(user, debtIn, collOut, swapData);
    }

    /// @notice Called by RfqEngine during rfqFillFlash. Seized collateral is already
    ///         in this contract. Execute swaps via SwapExecutor to obtain debt tokens.
    function onFlash(bytes calldata data) external override {
        if (msg.sender != rfqEngine) revert OnlyRfqEngine();

        bytes[] memory calldatas = abi.decode(data, (bytes[]));

        for (uint256 i; i < calldatas.length; ++i) {
            (bool ok, bytes memory ret) = swapExecutor.call(calldatas[i]);
            if (!ok) {
                assembly {
                    revert(add(ret, 0x20), mload(ret))
                }
            }
        }
    }

    /// @notice Add or remove an address from the liquidator whitelist.
    function setLiquidator(address liquidator, bool enabled) external onlyOwner {
        liquidators[liquidator] = enabled;
    }

    /// @notice Withdraw tokens (profit or rescued funds) to the owner.
    function withdraw(address token, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(owner, amount);
    }

    /// @notice Withdraw native currency to the owner.
    function withdrawNative() external onlyOwner {
        (bool ok,) = owner.call{value: address(this).balance}("");
        require(ok);
    }

    receive() external payable {}
}
