// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

// interfaces
import { IPegStabilityModule } from "./interfaces/IPegStabilityModule.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// extensions
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

// layer-zero
import { OFTAdapter } from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";
import { Origin } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { OFTComposeMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";
import { OFTMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTMsgCodec.sol";

// libraries
import "./libraries/ConstantsLib.sol";
import "./libraries/EventsLib.sol";

contract RusdOftAdapter is OFTAdapter {
    using OFTMsgCodec for bytes;
    using OFTMsgCodec for bytes32;

    /// @notice USDC token
    IERC20 public constant usdc = IERC20(USDC_ADDRESS);

    /// @notice Reservoir's rUSD token
    IERC20 public constant rusd = IERC20(RUSD_ADDRESS);

    /// @notice Reservoir's PegStabilityModule contract
    IPegStabilityModule public constant psm = IPegStabilityModule(PSM_ADDRESS);

    /* CONSTRUCTOR */

    /// @param _token The address of the ERC-20 token to be adapted.
    /// @param _lzEndpoint The LayerZero endpoint address.
    /// @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
    constructor(
        address _token,
        address _lzEndpoint,
        address _delegate
    ) OFTAdapter(_token, _lzEndpoint, _delegate) Ownable(_delegate) {}

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

        /// @dev if the message is composed, convert rUSD amount to USDC in the PSM,
        /// @dev and send the USDC amount to the `toAddress` by specifying it as a recepient in `psm.redeem`
        if (_message.isComposed()) {
            uint256 rusdAmountBeforeRedemption = rusd.balanceOf(address(this));

            rusd.approve(address(psm), amountReceivedLD);
            psm.redeem(toAddress, amountReceivedLD / 1e12);

            uint256 rusdAmountAfterRedemption = rusd.balanceOf(address(this));

            uint256 redeemedRusdAmount = rusdAmountBeforeRedemption - rusdAmountAfterRedemption;

            /// @dev if `redeemedRusdAmount` is less then `amountReceivedLD`, it means that during USDC conversion,
            /// @dev some rUSD got lost due to the rounding.
            /// @dev in this case, send the remaining rUSD to the recepient.
            if (redeemedRusdAmount < amountReceivedLD)
                _credit(toAddress, amountReceivedLD - redeemedRusdAmount, _origin.srcEid);

            emit EventsLib.RedeemRusd(
                _origin.sender.bytes32ToAddress(),
                _origin.srcEid,
                toAddress,
                amountReceivedLD,
                block.timestamp
            );
        } else {
            /// @dev If the message is not composed, send rUSD directly
            _credit(toAddress, amountReceivedLD, _origin.srcEid);
        }

        emit OFTReceived(_guid, _origin.srcEid, toAddress, amountReceivedLD);
    }
}
