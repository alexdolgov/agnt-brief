// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {IProxyOFT} from "./IProxyOFT.sol";

interface IQuoter {
    function quoteCrossChainFlashRepayNativeFee(
        IProxyOFT proxyOFT_,
        bytes calldata lzArgs_
    ) external view returns (uint256 _nativeFee);

    function quoteCrossChainLeverageNativeFee(
        IProxyOFT proxyOFT_,
        bytes calldata lzArgs_
    ) external view returns (uint256 _nativeFee);

    function quoteLeverageCallbackNativeFee(uint16 dstChainId_) external view returns (uint256 _callbackTxNativeFee);

    function quoteFlashRepayCallbackNativeFee(uint16 dstChainId_) external view returns (uint256 _callbackTxNativeFee);

    function getFlashRepaySwapAndCallbackLzArgs(
        uint16 srcChainId_,
        uint16 dstChainId_
    ) external view returns (bytes memory lzArgs_);

    function getLeverageSwapAndCallbackLzArgs(
        uint16 srcChainId_,
        uint16 dstChainId_
    ) external view returns (bytes memory lzArgs_);
}
