// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import "../token/IERC20.sol";
import "../library/SafeERC20.sol";
import "./ProtocolFeeCollectorStorage.sol";

contract ProtocolFeeCollectorImplementationBridgeBUSD is ProtocolFeeCollectorStorage {

    using SafeERC20 for IERC20;

    function swapBnbBusdToArbitrumUsdce(uint256 amountLD, uint256 minAmountLD) external payable _onlyAdmin_ {
        address busd = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
        address stargateRouter = 0x4a364f8c717cAAD9A442737Eb7b8A55cc6cf18D8;
        address usdceDestination = 0xa544e477866a29685E4155E27f9bD886C63880a0;

        IERC20(busd).safeApprove(stargateRouter, amountLD);

        IStargateRouter(stargateRouter).swap{value: msg.value}(
            110,
            5,
            1,
            payable(msg.sender),
            amountLD,
            minAmountLD,
            IStargateRouter.lzTxObj(0, 0, abi.encodePacked(address(1))),
            abi.encodePacked(usdceDestination),
            abi.encodePacked('')
        );
    }

}

interface IStargateRouter {
    struct lzTxObj {
        uint256 dstGasForCall;
        uint256 dstNativeAmount;
        bytes dstNativeAddr;
    }
    function swap(
        uint16 _dstChainId,
        uint256 _srcPoolId,
        uint256 _dstPoolId,
        address payable _refundAddress,
        uint256 _amountLD,
        uint256 _minAmountLD,
        lzTxObj memory _lzTxParams,
        bytes calldata _to,
        bytes calldata _payload
    ) external payable;
}
