// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IFlash} from "./interfaces/IFlash.sol";
import {ILeverageRfqEngine} from "./interfaces/ILeverageRfqEngine.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title LeveragedRfqFiller
/// @notice Flash-fill executor for LeverageRfqEngine: approves swap relayer, calls a flash fill on the engine,
///         then in `onFlash` forwards opaque calldata to `swapExecutor` (FtLiquidator-style, single call).
contract LeveragedRfqFiller is IFlash, Ownable {
    using SafeERC20 for IERC20;

    address public immutable LEVERAGE_RFQ_ENGINE;
    address public immutable SWAP_RELAYER;
    address public immutable SWAP_EXECUTOR;

    mapping(address => bool) public fillers;

    error OnlyFiller();
    error OnlyLeverageRfqEngine();
    error OwnershipCannotBeRenounced();

    modifier onlyFiller() {
        if (!fillers[msg.sender]) revert OnlyFiller();
        _;
    }

    constructor(
        address leverageRfqEngine_,
        address swapRelayer_,
        address swapExecutor_
    )
        Ownable(msg.sender)
    {
        LEVERAGE_RFQ_ENGINE = leverageRfqEngine_;
        SWAP_RELAYER = swapRelayer_;
        SWAP_EXECUTOR = swapExecutor_;
    }

    /// @inheritdoc Ownable
    function renounceOwnership() public view override onlyOwner {
        revert OwnershipCannotBeRenounced();
    }

    /// @notice Open leverage via flash fill (`fillTarget` = this contract).
    function fillOpenFlash(
        ILeverageRfqEngine.LeveragedOrder calldata order,
        bytes calldata swapCalldata,
        bytes calldata sig
    )
        external
        onlyFiller
    {
        IERC20(order.sellToken).forceApprove(SWAP_RELAYER, order.sellAmount);
        ILeverageRfqEngine(LEVERAGE_RFQ_ENGINE)
            .openLeverageFlash(order, address(this), swapCalldata, sig);
    }

    /// @notice Close leverage via flash fill.
    function fillCloseFlash(
        ILeverageRfqEngine.LeveragedOrder calldata order,
        bytes calldata swapCalldata,
        bytes calldata sig
    )
        external
        onlyFiller
    {
        IERC20(order.sellToken).forceApprove(SWAP_RELAYER, order.sellAmount);
        ILeverageRfqEngine(LEVERAGE_RFQ_ENGINE)
            .closeLeverageFlash(order, address(this), swapCalldata, sig);
    }

    /// @notice Swap collateral via flash fill.
    function fillSwapCollateralFlash(
        ILeverageRfqEngine.LeveragedOrder calldata order,
        bytes calldata swapCalldata,
        bytes calldata sig
    )
        external
        onlyFiller
    {
        IERC20(order.sellToken).forceApprove(SWAP_RELAYER, order.sellAmount);
        ILeverageRfqEngine(LEVERAGE_RFQ_ENGINE)
            .swapCollateralFlash(order, address(this), swapCalldata, sig);
    }

    /// @dev Called by LeverageRfqEngine during flash fill; `data` is raw calldata for `SWAP_EXECUTOR`.
    function onFlash(bytes calldata data) external override {
        if (msg.sender != LEVERAGE_RFQ_ENGINE) revert OnlyLeverageRfqEngine();

        (bytes memory swapData, address buyToken, uint256 buyAmount) =
            abi.decode(data, (bytes, address, uint256));

        (bool ok, bytes memory ret) = SWAP_EXECUTOR.call(swapData);
        if (!ok) {
            assembly {
                revert(add(ret, 0x20), mload(ret))
            }
        }

        IERC20(buyToken).safeTransfer(LEVERAGE_RFQ_ENGINE, buyAmount);
    }

    function setFiller(address account, bool enabled) external onlyOwner {
        fillers[account] = enabled;
    }

    function rescue(address token, address to, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(to, amount);
    }

    function rescueNative(address payable to) external onlyOwner {
        (bool ok,) = to.call{value: address(this).balance}("");
        require(ok, "native transfer failed");
    }

    receive() external payable {}
}
