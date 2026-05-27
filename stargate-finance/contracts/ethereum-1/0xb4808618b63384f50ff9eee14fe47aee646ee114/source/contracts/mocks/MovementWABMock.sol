// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// LayerZero imports
import { OAppOptionsType3, EnforcedOptionParam } from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OAppOptionsType3.sol";
import { MessagingFee, OApp, Origin } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { MessagingReceipt } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppSender.sol";

// OZ imports
import { IERC20Metadata, IERC20 } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";

// Wrapped Asset Bridge imports
import { SendInfo, TokenDetails, TokenStatus } from "../interfaces/IMovementWAB.sol";

// This is strictly for mock/testing purposes
contract MovementWABMock is OApp, OAppOptionsType3 {
    uint32 public immutable REMOTE_EID;

    constructor(address _endpoint, address _delegate, uint32 _remoteEid) OApp(_endpoint, _delegate) Ownable(_delegate) {
        REMOTE_EID = _remoteEid;
    }

    function sendTokens(
        SendInfo calldata _params,
        MessagingFee calldata _fee,
        address _refundAddress
    ) public payable virtual returns (MessagingReceipt memory msgReceipt, uint256 amountLD) {
        amountLD = _params.amountLD;
        bytes memory message = abi.encodePacked(_params.token, _params.to, _params.amountLD);
        msgReceipt = _lzSend(REMOTE_EID, message, _params.extraOptions, _fee, _refundAddress);
    }

    function _lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal override {
        // Do nothing
    }
}
