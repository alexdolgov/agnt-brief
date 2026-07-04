// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import {IWETH} from "./interface/IWETH.sol";
import {IEERC20} from "./interface/IEERC20.sol";
import {IBeamswapExectuor} from "./interface/IBeamswapExectuor.sol";
import {BeamswapTypes} from "./BeamswapTypes.sol";
import "../interfaces/IBeamswapV3Pool.sol";

import "./libraries/TransferHelper.sol";

error BEAMSWAP_AmountOutLow();
error BEAMSWAP_Expired();
error BEAMSWAP_Paused();

error BEAMSWAP_BadFeeOrder();
error BEAMSWAP_FeeTooHigh();

error BEAMSWAP_AddressZero();
error BEAMSWAP_AmountOutMinZero();
error BEAMSWAP_SwapDataZero();

error BEAMSWAP_EthTransferFailed();

contract BeamswapHybridRouter is Ownable, BeamswapTypes {
    address private _feeDeposit;
    uint256 private _minFee;
    uint256 private _maxFee;
    uint256 private _stableFee = 2;
    uint256 private constant feeCap = 200;

    address public immutable WETH;
    IBeamswapExectuor public _executor;

    bool private _feeOn;
    bool private _paused;

    mapping(address => bool) internal isStable;

    constructor(address WETH_, address executor_) {
        _feeDeposit = msg.sender;
        _minFee = 5;
        _maxFee = 10;
        WETH = WETH_;
        _executor = IBeamswapExectuor(executor_);
        _feeOn = true;
    }

    modifier ensureDeadline(uint256 deadline) {
        if (deadline < block.timestamp) revert BEAMSWAP_Expired();
        _;
    }

    modifier notPaused() {
        if (_paused) revert BEAMSWAP_Paused();
        _;
    }

    /**
     * @notice Upon completion of any swap, the executor contract will transfer its balance of `tokenOut` back
     * to this contract, final balance checks will be completed, fees will be processed and the results of the
     * swap will be transferred to the user.
     */

    /**
     * @notice Performs a multi-path swap using the network token as the principal input and tokens as the principal output.
     * @param tokenOut Token to recieve after swap.
     * @param to Address to recieve resulting amount of tokenOut tokens.
     * @param amountOutMin Minimum amount of tokenOut to recieve, pre optimizer fee.
     * @param deadline Deadline for executing the swap. The transaction will revert if blocktime exceeds `deadline`.
     * @param swapData bytes package defining swap parameters for the executor contract.
     */
    function multiSwapEthForTokens(
        address tokenOut,
        address to,
        uint256 amountOutMin,
        uint256 deadline,
        bytes calldata swapData
    )
        external
        payable
        notPaused
        ensureDeadline(deadline)
        returns (uint256 netTokens, uint256 feeAmount)
    {
        if (amountOutMin == 0) revert BEAMSWAP_AmountOutMinZero();
        if (swapData.length == 0) revert BEAMSWAP_SwapDataZero();

        IWETH(WETH).deposit{value: msg.value}();
        TransferHelper.safeTransfer(WETH, address(_executor), msg.value);

        _executor.executeSplitSwap(
            WETH,
            tokenOut,
            msg.value,
            amountOutMin,
            swapData
        );

        // Final balance checking
        netTokens = IEERC20(tokenOut).balanceOf(address(this));

        if (netTokens < amountOutMin) revert BEAMSWAP_AmountOutLow();

        (feeAmount, netTokens) = _feeOn
            ? _sendAdminFee(tokenOut, netTokens, amountOutMin, swapData)
            : (0, netTokens);

        address receiver = to == address(0) ? msg.sender : to;
        // Transfer tokens net fees to user.
        TransferHelper.safeTransfer(tokenOut, receiver, netTokens);
    }

    /**
     * @notice Performs a multi-path swap using tokens as the principal input and ETH as the principal output.
     * @param tokenIn Input token for swap.
     * @param to Address to recieve resulting amount of tokenOut tokens.
     * @param amountIn Amount of `tokenIn` tokens with which to initiate the swap.
     * @param amountOutMin Minimum amount of tokenOut to recieve, pre optimizer fee.
     * @param deadline Deadline for executing the swap. The transaction will revert if blocktime exceeds `deadline`.
     * @param swapData bytes package defining swap parameters for the executor contract.
     */
    function multiSwapTokensForEth(
        address tokenIn,
        address to,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 deadline,
        bytes calldata swapData
    )
        external
        notPaused
        ensureDeadline(deadline)
        returns (uint256 netTokens, uint256 feeAmount)
    {
        if (amountOutMin == 0) revert BEAMSWAP_AmountOutMinZero();
        if (swapData.length == 0) revert BEAMSWAP_SwapDataZero();

        // Initial transfer of tokens from user
        TransferHelper.safeTransferFrom(
            tokenIn,
            msg.sender,
            address(_executor),
            amountIn
        );

        _executor.executeSplitSwap(
            tokenIn,
            WETH,
            amountIn,
            amountOutMin,
            swapData
        );
        // Final balance checking
        netTokens = IEERC20(WETH).balanceOf(address(this));

        if (netTokens < amountOutMin) revert BEAMSWAP_AmountOutLow();

        (feeAmount, netTokens) = _feeOn
            ? _sendAdminFee(WETH, netTokens, amountOutMin, swapData)
            : (0, netTokens);

        address receiver = to == address(0) ? msg.sender : to;

        IWETH(WETH).withdraw(netTokens);
        _sendEth(receiver, netTokens);
    }

    /**
     * @notice Performs a multi-path swap using tokens as the principal input and tokens as the principal output.
     * @param tokenIn Input token for swap.
     * @param tokenOut Token to recieve after swap.
     * @param to Address to recieve resulting amount of tokenOut tokens.
     * @param amountIn Amount of `tokenIn` tokens with which to initiate the swap.
     * @param amountOutMin Minimum amount of tokenOut to recieve, pre optimizer fee.
     * @param deadline Deadline for executing the swap. The transaction will revert if blocktime exceeds `deadline`.
     * @param swapData bytes package defining swap parameters for the executor contract.
     */
    function multiSwapTokensForTokens(
        address tokenIn,
        address tokenOut,
        address to,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 deadline,
        bytes calldata swapData
    )
        external
        notPaused
        ensureDeadline(deadline)
        returns (uint256 netTokens, uint256 feeAmount)
    {
        if (amountOutMin == 0) revert BEAMSWAP_AmountOutMinZero();
        if (swapData.length == 0) revert BEAMSWAP_SwapDataZero();
        // Initial transfer of tokens from user

        TransferHelper.safeTransferFrom(
            tokenIn,
            msg.sender,
            address(_executor),
            amountIn
        );

        _executor.executeSplitSwap(
            tokenIn,
            tokenOut,
            amountIn,
            amountOutMin,
            swapData
        );

        // Final balance checking
        netTokens = IEERC20(tokenOut).balanceOf(address(this));

        if (netTokens < amountOutMin) revert BEAMSWAP_AmountOutLow();

        (feeAmount, netTokens) = _feeOn
            ? _sendAdminFee(tokenOut, netTokens, amountOutMin, swapData)
            : (0, netTokens);
        address receiver = to == address(0) ? msg.sender : to;
        // Transfer tokens net fees to user.
        TransferHelper.safeTransfer(tokenOut, receiver, netTokens);
    }

    // Fee is equal to half of the difference between netTokens and AmountOutMin, floored at _minFee
    // and capped at _maxFee.

    function getFee(
        uint256 netTokens,
        uint256 amountOutMin
    ) public view returns (uint256, uint256) {
        return _getFee(netTokens, amountOutMin);
    }

    function _getFee(
        uint256 netTokens,
        uint256 amountOutMin
    ) internal view returns (uint256, uint256) {
        uint256 amountDiff = netTokens - amountOutMin;
        uint256 feePercent = (amountDiff * 10000) /
            ((amountOutMin + netTokens) / 2) /
            2; // in bips
        if (feePercent < _minFee) {
            feePercent = _minFee;
        } else if (feePercent > _maxFee) {
            feePercent = _maxFee;
        }
        uint256 feeAmount = ((netTokens * feePercent) / 10000);
        uint256 amountNetFee = netTokens - feeAmount;
        return (feeAmount, amountNetFee);
    }

    function _getFeeStable(
        uint256 netTokens
    ) internal view returns (uint256, uint256) {
        uint256 feeAmount = ((netTokens * _stableFee) / 10000);
        uint256 amountNetFee = netTokens - feeAmount;
        return (feeAmount, amountNetFee);
    }

    function setExecutor(address newExecutor) external onlyOwner {
        if (newExecutor == address(0)) revert BEAMSWAP_AddressZero();
        _executor = IBeamswapExectuor(newExecutor);
    }

    function setFeeDeposit(address newFeeDeposit) external onlyOwner {
        if (newFeeDeposit == address(0)) revert BEAMSWAP_AddressZero();
        _feeDeposit = newFeeDeposit;
    }

    function setFees(
        uint256 minFee_,
        uint256 maxFee_,
        uint256 stableFee_
    ) external onlyOwner {
        if (minFee_ > maxFee_) revert BEAMSWAP_BadFeeOrder();
        if (maxFee_ > feeCap) revert BEAMSWAP_FeeTooHigh();
        if (stableFee_ > feeCap) revert BEAMSWAP_FeeTooHigh();

        _minFee = minFee_;
        _maxFee = maxFee_;
        _stableFee = stableFee_;
    }

    function setFeeOn(bool state) external onlyOwner {
        _feeOn = state;
    }

    function setPaused(bool state) external onlyOwner {
        _paused = state;
    }

    function isPaused() external view returns (bool paused) {
        paused = _paused;
    }

    function minFee() public view returns (uint256 fee) {
        fee = _minFee;
    }

    function maxFee() public view returns (uint256 fee) {
        fee = _maxFee;
    }

    function executor() public view returns (address executor) {
        executor = address(_executor);
    }

    function feeDeposit() external view returns (address feeDeposit) {
        feeDeposit = _feeDeposit;
    }

    function feeOn() public view returns (bool isFeeOn) {
        isFeeOn = _feeOn;
    }

    function getStableToken(
        address token
    ) external view returns (bool isStable_) {
        isStable_ = isStable[token];
    }

    function rescueTokens(address token, uint256 amount) external onlyOwner {
        TransferHelper.safeTransfer(token, owner(), amount);
    }

    function rescueEth(uint256 amount) external onlyOwner {
        _sendEth(owner(), amount);
    }

    function _sendAdminFee(
        address token,
        uint256 netTokens,
        uint256 amountOutMin,
        bytes calldata swapData
    ) internal returns (uint256 feeAmount, uint256 amountNetFee) {
        bool stableFee = false; // checks if any swap path is using saddle stable
        bool isStableToken = isStable[token]; // gas saving
        if (isStableToken) {
            SplitPaths[] memory splitPaths = abi.decode(
                swapData,
                (SplitPaths[])
            );
            uint length = splitPaths.length;
            for (uint i; i < length; ) {
                SplitPaths memory splitPath = splitPaths[i];
                SwapDataWrapper[] memory wrappedSwapData = splitPath
                    .wrappedSwapData;
                address[] memory pools = splitPath.pools;
                uint256 len = pools.length;
                for (uint j; j < len; ) {
                    SwapDataWrapper memory wrappedSwapData_ = wrappedSwapData[
                        j
                    ];
                    if (wrappedSwapData_.swapType == SwapType.SaddleStable) {
                        stableFee = true; // if any swap path is using saddle stable then stableFee is true
                        break;
                    }
                    if (wrappedSwapData_.swapType == SwapType.UniV3) {
                        IBeamswapV3Pool v3Pool = IBeamswapV3Pool(pools[j]);
                        address token0 = v3Pool.token0();
                        address token1 = v3Pool.token1();
                        uint24 fee = v3Pool.fee();
                        if (
                            isStable[token0] &&
                            isStable[token1] &&
                            (fee == 500 || fee == 100)
                        ) {
                            stableFee = true; //if both tokens are stable and fee tier is stable
                            break;
                        }
                    }
                    unchecked {
                        ++j;
                    }
                }
                if (stableFee) {
                    break;
                }
                unchecked {
                    ++i;
                }
            }
        }

        (feeAmount, amountNetFee) = !stableFee && !isStableToken
            ? _getFee(netTokens, amountOutMin)
            : _getFeeStable(netTokens); // if token is stable and any swap path used saddle, then we charge stable fee
        if (feeAmount > 0) {
            TransferHelper.safeTransfer(token, _feeDeposit, feeAmount);
        }
    }

    function _sendEth(address to, uint256 value) private {
        (bool success, ) = to.call{value: value}(new bytes(0));
        if (!success) revert BEAMSWAP_EthTransferFailed();
    }

    receive() external payable {
        assert(msg.sender == WETH); // only accept ETH via fallback from the WETH contract
    }
}
