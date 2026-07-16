// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../../../interfaces/paraswap/IParaSwapV62.sol";

contract ParaSwapCaller {
    using Address for address;
    using SafeERC20 for IERC20;

    address internal constant PARASWAP_AUGUSTUS_PROXY_V6 = 0x6A000F20005980200259B80c5102003040001068;

    function _decodeBalancerV2Tokens(
        bytes memory balancerData
    ) internal pure returns (address srcToken, address destToken) {
    // solhint-disable-next-line no-inline-assembly
        assembly ("memory-safe") {
        // For a memory bytes array, the first 32 bytes store the length.
        // The actual data starts at an offset of 32 bytes from the start of the array pointer.
        let dataPtr := add(balancerData, 32)
        // The encoded function arguments start after the 4-byte function selector.
        let dataWithoutSelector := add(dataPtr, 4)

        // Check the function selector by loading the first 32 bytes of the data.
        switch mload(dataPtr)
        // If the selector is for swap(tuple singleSwap,tuple funds,uint256 limit,uint256 deadline)
        case 0x52bbbe2900000000000000000000000000000000000000000000000000000000 {
            // According to the ABI encoding for this function signature, assetIn and assetOut
            // are at fixed offsets from the start of the arguments data.
            // Load srcToken from singleSwap.assetIn.
            srcToken := mload(add(dataWithoutSelector, 288))
            // Load destToken from singleSwap.assetOut.
            destToken := mload(add(dataWithoutSelector, 320))
        }
        // If the selector is for batchSwap(uint8 kind,tuple[] swaps,address[] assets,tuple funds,int256[] limits,uint256 deadline)
        case 0x945bcec900000000000000000000000000000000000000000000000000000000 {
            // Load the offset to the 'assets' array. It's the 3rd argument, at offset 64 from the start of arguments.
            let assetsOffset := mload(add(dataWithoutSelector, 64))
            // Get the pointer to the 'assets' array data (which starts with the length).
            let assetsPtr := add(dataWithoutSelector, assetsOffset)
            // Load the length of the 'assets' array.
            let assetsCount := mload(assetsPtr)
            // Get the swap type ('kind') from the first argument.
            let swapType := mload(dataWithoutSelector)
            
            // Set srcToken and destToken based on the swapType.
            switch eq(swapType, 1) // 1 is GIVEN_OUT
            case 1 {
                // For GIVEN_OUT, srcToken is the last asset, and destToken is the first.
                // Load srcToken as the last asset in balancerData.assets.
                // The address of the last element is assetsPtr + assetsCount * 32.
                srcToken := mload(add(assetsPtr, mul(assetsCount, 32)))
                // Load destToken as the first asset in balancerData.assets.
                // The address of the first element is assetsPtr + 32.
                destToken := mload(add(assetsPtr, 32))
            }
            default { // 0 is GIVEN_IN
                // For GIVEN_IN, srcToken is the first asset, and destToken is the last.
                // Load srcToken as the first asset.
                srcToken := mload(add(assetsPtr, 32))
                // Load destToken as the last asset.
                destToken := mload(add(assetsPtr, mul(assetsCount, 32)))
            }
        }
        default {
            // If the selector is invalid, revert with a custom error.
            mstore(0, 0x7352d91c00000000000000000000000000000000000000000000000000000000) // selector for InvalidSelector()
            revert(0, 4)
        }
        // Balancer uses address(0) for ETH, so we convert it to a standard wrapped ETH representation.
        if eq(srcToken, 0) { srcToken := 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE }
        if eq(destToken, 0) { destToken := 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE }
    }
    return (srcToken, destToken);
}

    function analysisPayload(
        bytes calldata _swapData
    ) external pure returns (uint256 amountIn_, address tokenIn_, address tokenOut_) {
        // Match the selector
        require(
            _swapData.length >= 4,
            "ParaSwapCaller: Invalid calldata length"
        );
        bytes4 selector = bytes4(_swapData[:4]);
        if (selector == IParaSwapV62.swapExactAmountIn.selector) {
            // Decode the swapData
            (, GenericData memory d_, , , ) = abi.decode(
                _swapData[4:],
                (address, GenericData, uint256, bytes, bytes)
            );
            tokenIn_ = address(d_.srcToken);
            tokenOut_ = address(d_.destToken);
            amountIn_ = d_.fromAmount;
        } else if (selector == IParaSwapV62.swapOnAugustusRFQTryBatchFill.selector) {
            // todo: test this function
            // Decode the swapData
            (AugustusRFQData memory data_, OrderInfo[] memory order_, ) = abi.decode(
                _swapData[4:],
                (AugustusRFQData, OrderInfo[], bytes)
            );
            uint8 wrapApproveDirection_ = data_.wrapApproveDirection;
            bool direction_;
            assembly {
                direction_ := and(shr(3, wrapApproveDirection_), 1)
            }
            amountIn_ = data_.fromAmount;
            if (direction_) {
                // If direction is true, we are filling taker amount
                tokenIn_ = address(order_[0].order.makerAsset);
                tokenOut_ = address(order_[0].order.takerAsset);
            } else {
                // If direction is false, we are filling maker amount
                tokenIn_ = address(order_[0].order.takerAsset);
                tokenOut_ = address(order_[0].order.makerAsset);
            }
        } else if (selector == IParaSwapV62.swapExactAmountInOnBalancerV2.selector) {
            // Decode the swapData
            (BalancerV2Data memory d_, , , bytes memory data_) = abi.decode(
                _swapData[4:],
                (BalancerV2Data, uint256, bytes, bytes)
            );
            // The first 20 bytes are the beneficiary address and the left most bit is the approve flag
            (tokenIn_, tokenOut_) = _decodeBalancerV2Tokens(data_);
            amountIn_ = d_.fromAmount;
        } else if (selector == IParaSwapV62.swapExactAmountInOnCurveV1.selector) {
            (CurveV1Data memory curveV1Data_, , ) = abi.decode(
                _swapData[4:],
                (CurveV1Data, uint256, bytes)
            );
            tokenIn_ = address(curveV1Data_.srcToken);
            tokenOut_ = address(curveV1Data_.destToken);
            amountIn_ = curveV1Data_.fromAmount;
        } else if (selector == IParaSwapV62.swapExactAmountInOnCurveV2.selector) {
            (CurveV2Data memory curveV2Data_, , ) = abi.decode(
                _swapData[4:],
                (CurveV2Data, uint256, bytes)
            );
            tokenIn_ = address(curveV2Data_.srcToken);
            tokenOut_ = address(curveV2Data_.destToken);
            amountIn_ = curveV2Data_.fromAmount;
        } else if (selector == IParaSwapV62.swapExactAmountInOnUniswapV2.selector) {
            (UniswapV2Data memory uniswapV2Data_, , ) = abi.decode(
                _swapData[4:],
                (UniswapV2Data, uint256, bytes)
            );
            tokenIn_ = address(uniswapV2Data_.srcToken);
            tokenOut_ = address(uniswapV2Data_.destToken);
            amountIn_ = uniswapV2Data_.fromAmount;
        } else if (selector == IParaSwapV62.swapExactAmountInOnUniswapV3.selector) {
            (UniswapV3Data memory uniswapV3Data_, , ) = abi.decode(
                _swapData[4:],
                (UniswapV3Data, uint256, bytes)
            );
            tokenIn_ = address(uniswapV3Data_.srcToken);
            tokenOut_ = address(uniswapV3Data_.destToken);
            amountIn_ = uniswapV3Data_.fromAmount;
        } else if (selector == IParaSwapV62.swapExactAmountInOutOnMakerPSM.selector) {
            (MakerPSMData memory makerPSMData_, ) = abi.decode(
                _swapData[4:],
                (MakerPSMData, bytes)
            );
            tokenIn_ = address(makerPSMData_.srcToken);
            tokenOut_ = address(makerPSMData_.destToken);
            amountIn_ = makerPSMData_.fromAmount;
        } else {
            revert("ParaSwapCaller: Unsupported selector");
        }
    }

    /**
     * @dev Executes the swap operation and verify the validity of the parameters and results.
     * @param _amount The maximum amount of currency spent.
     * @param _srcToken The token to be spent.
     * @param _dstToken The token to be received.
     * @param _swapData Calldata of 1inch.
     * @param _swapGetMin Minimum amount of the token to be received.
     * @return returnAmount_ Actual amount of the token spent.
     * @return spentAmount_ Actual amount of the token received.
     */
    function executeSwap(
        uint256 _amount,
        address _srcToken,
        address _dstToken,
        bytes memory _swapData,
        uint256 _swapGetMin
    ) internal returns (uint256 returnAmount_, uint256 spentAmount_) {
        (bool success_, bytes memory resp_) = address(this).staticcall(
            abi.encodeWithSelector(
                this.analysisPayload.selector,
                _swapData
            )
        );
        uint256 amountBefore_ = IERC20(_dstToken).balanceOf(address(this));
        require(success_, "ParaSwapCaller: Analysis payload failed");
        (uint256 amountIn_, address tokenIn_, address tokenOut_) = abi.decode(
            resp_,
            (uint256, address, address)
        );
        require(
            amountIn_ <= _amount,
            "ParaSwapCaller: Amount in exceeds maximum"
        );
        if (_srcToken != tokenIn_) {
            revert("ParaSwapCaller: Source token mismatch");
        }
        if (_dstToken != tokenOut_) {
            revert("ParaSwapCaller: Destination token mismatch");
        }
        // If srcToken is not ETH, call approve.
        if (_srcToken != address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)) {
            IERC20(_srcToken).safeIncreaseAllowance(PARASWAP_AUGUSTUS_PROXY_V6, _amount);
        }
        // Call the ParaSwap Augustus proxy contract with the swap data.
        (success_, resp_) = PARASWAP_AUGUSTUS_PROXY_V6.call{value: _srcToken == address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) ? _amount : 0}(_swapData);
        require(success_, "ParaSwapCaller: Swap execution failed");
        uint256 amountAfter_ = IERC20(_dstToken).balanceOf(address(this));
        require(
            amountAfter_ - amountBefore_ >= _swapGetMin,
            "ParaSwapCaller: Insufficient output amount"
        );
        return (
            amountAfter_ - amountBefore_,
            amountIn_
        );
    }
}
