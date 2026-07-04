// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import { IStakingModule } from "./interface/IStakingModule.sol";

// openzeppelin
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

// layer-zero
import { OFTAdapter } from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";
import { Origin } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { OFTComposeMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";
import { OFTMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTMsgCodec.sol";

// libraries
import "./libraries/ConstantsLib.sol";
import "./libraries/EventsLib.sol";

contract StakedUsbdOftAdapter is OFTAdapter {
    using OFTMsgCodec for bytes;
    using OFTMsgCodec for bytes32;

    IStakingModule public immutable stakingModule;

    /* CONSTRUCTOR */

    /// @param _token The address of the ERC-20 token to be adapted.
    /// @param _stakingModule The address of the ERC-20 token to be adapted.
    /// @param _lzEndpoint The LayerZero endpoint address.
    /// @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
    constructor(
        address _token,
        address _stakingModule,
        address _lzEndpoint,
        address _delegate
    ) OFTAdapter(_token, _lzEndpoint, _delegate) Ownable(_delegate) {
        stakingModule = IStakingModule(_stakingModule);
    }

    /* INTERNAL OVERRIDEN FUNCTION */

    /// @dev overriden function of @layerzerolabs/oft-evm/contracts/OFTCore.sol
    /// @dev the core thing that's changed here is how the transaction is handled when the message is composed
    function _lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal override {
        address toAddress = _message.sendTo().bytes32ToAddress();

        uint256 amountReceivedLD = _toLD(_message.amountSD());

        /// @dev if the message is composed, request redemption in StakingModule on behalf of the user
        if (_message.isComposed()) {
            IERC20(innerToken).approve(address(stakingModule), amountReceivedLD);

            stakingModule.requestRedeem(amountReceivedLD, toAddress);

            emit EventsLib.CrossChainRedemptionRequest(toAddress, _origin.srcEid, amountReceivedLD, block.timestamp);
        } else {
            /// @dev If the message is not composed, send rUSD directly
            _credit(toAddress, amountReceivedLD, _origin.srcEid);
        }

        emit OFTReceived(_guid, _origin.srcEid, toAddress, amountReceivedLD);
    }
}
