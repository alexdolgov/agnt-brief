// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import {OFTAdapter} from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {
    SendParam, MessagingFee, MessagingReceipt, OFTReceipt
} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {EnforcedOptionParam} from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppOptionsType3.sol";
import {OptionsBuilder} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";
import {ICianFlowControl} from "../interfaces/ICianFlowControl.sol";

/// @notice OFTAdapter uses a deployed ERC-20 token and safeERC20 to interact with the OFTCore contract.
contract CianOFTWrapper is OFTAdapter {
    using OptionsBuilder for bytes;

    address public flowControl;

    event FlowControlUpdated(address indexed flowControl);

    constructor(address _token, address _lzEndpoint, address _owner, address _flowControl)
        OFTAdapter(_token, _lzEndpoint, _owner)
        Ownable(_owner)
    {
        flowControl = _flowControl;
    }

    modifier flowControlled(address _caller, uint256 _amount, uint256 _targetEid) {
        ICianFlowControl(flowControl).consume(_caller, _amount, _targetEid);
        _;
    }

    function updateFlowControl(address _flowControl) external onlyOwner {
        flowControl = _flowControl;
        emit FlowControlUpdated(_flowControl);
    }

    function setDefaultGasForSend(uint32 _eid, uint256 _gas) external onlyOwner {
        EnforcedOptionParam[] memory aEnforcedOptions = new EnforcedOptionParam[](1);
        aEnforcedOptions[0] = EnforcedOptionParam({
                eid: _eid,
                msgType: 1,
                options: OptionsBuilder.newOptions().addExecutorLzReceiveOption(uint128(_gas), 0)
            });
        _setEnforcedOptions(
            aEnforcedOptions
        );
    }

    function send(SendParam calldata _sendParam, MessagingFee calldata _fee, address _refundAddress)
        external
        payable
        virtual
        override
        flowControlled(msg.sender, _sendParam.amountLD, _sendParam.dstEid)
        returns (MessagingReceipt memory msgReceipt, OFTReceipt memory oftReceipt)
    {
        return _send(_sendParam, _fee, _refundAddress);
    }
}
