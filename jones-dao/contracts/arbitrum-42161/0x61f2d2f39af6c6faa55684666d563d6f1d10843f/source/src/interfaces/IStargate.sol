// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

interface IStargate {
    function swapETH(
        uint16 _dstChainId, // destination Stargate chainId
        address payable _refundAddress, // refund additional messageFee to this address
        bytes calldata _toAddress, // the receiver of the destination ETH
        uint256 _amountLD, // the amount, in Local Decimals, to be swapped
        uint256 _minAmountLD // the minimum amount accepted out on destination
    ) external payable;

    function stargateRouter() external view returns (address);

    function poolId() external view returns (uint16);
}
