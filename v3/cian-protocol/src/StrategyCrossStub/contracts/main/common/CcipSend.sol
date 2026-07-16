// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IRouterClient} from "@chainlink/contracts-ccip/src/v0.8/ccip/interfaces/IRouterClient.sol";
import {Client} from "@chainlink/contracts-ccip/src/v0.8/ccip/libraries/Client.sol";

abstract contract CcipSend {
    using SafeERC20 for IERC20;

    event AssetCcipBridged(address indexed token, uint256 amount, bytes32 messageId);

    function _ccipSend(address _transferToken, address _receiver, uint256 _amount, address _router, uint64 _dstSelector) internal returns (bytes32) {
        Client.EVMTokenAmount[] memory tokenAmounts_ = new Client.EVMTokenAmount[](1);
        tokenAmounts_[0] = Client.EVMTokenAmount({
            token: _transferToken,
            amount: _amount
        });
        Client.EVM2AnyMessage memory m = Client.EVM2AnyMessage({
            receiver: abi.encode(_receiver),
            data: "",
            tokenAmounts: tokenAmounts_,
            extraArgs: Client._argsToBytes(
                // Additional arguments, setting gas limit to 0 as we are not sending any data
                Client.EVMExtraArgsV1({
                    gasLimit: 0 // Gas limit for the callback on the destination chain
                })),
            feeToken: address(0)
        });
        // Approve token to router
        IERC20(_transferToken).safeIncreaseAllowance(_router, _amount);
        bytes32 messageId_ = IRouterClient(_router).ccipSend{value: msg.value}(_dstSelector, m);
        emit AssetCcipBridged(_transferToken, _amount, messageId_);
        return messageId_;
    }
}