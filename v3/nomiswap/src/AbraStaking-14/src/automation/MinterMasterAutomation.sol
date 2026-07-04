// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {BaseAutomation} from "src/automation/BaseAutomation.sol";

import { OptionsBuilder } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/libs/OptionsBuilder.sol";
import { MessagingFee } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OApp.sol";
import { MessagingReceipt } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OAppSender.sol";

import {WEEK} from "src/libraries/EpochMath.sol";
import {MinterMaster, Round} from "src/token/MinterMaster.sol";

enum UpkeepType {
    CloseRound,
    Transmit,
    CompleteTransmission
}

struct TransmitPerformData {
    uint32 epoch;
    uint32 eid;
    uint256 sendFee;
    uint256 responseFee;
}

contract MinterMasterAutomation is BaseAutomation {

    using OptionsBuilder for bytes;

    address public forwarder; // chainlink calls from this address
    MinterMaster public minterMaster;
    uint32  public transmitingEpoch;
    uint128 public sendGas;
    uint128 public responseGas;

    constructor(address _minterMaster, uint32 _transmitingEpoch, uint128 _sendGas, uint128 _responseGas) Ownable(msg.sender) {
        minterMaster = MinterMaster(_minterMaster);
        transmitingEpoch = _transmitingEpoch;
        sendGas = _sendGas;
        responseGas = _responseGas;
    }

    modifier onlyForwarder() {
        require(forwarder == _msgSender(), "Unauthorized forwarder");
        _;
    }

    receive() external payable{}

    function setForwarder(address _forwarder) external onlyOwner {
        forwarder = _forwarder;
    }

    function setMinterMaster(address _minterMaster) external onlyOwner {
        minterMaster = MinterMaster(_minterMaster);
    }

    function setSendGas(uint128 _sendGas) external onlyOwner {
        sendGas = _sendGas;
    }

    function setResponseGas(uint128 _responseGas) external onlyOwner {
        responseGas = _responseGas;
    }

    function setTransmitingEpoch(uint32 _transmitingEpoch) external onlyOwner {
        transmitingEpoch = _transmitingEpoch;
    }

    function checkUpkeep(bytes calldata /* checkData */)
        external
        cannotExecute
        returns (bool /* upkeepNeeded */, bytes memory /* performData */)
    {   
        (bool upkeepNeeded, bytes memory performData) = checkCloseRound();
        if (upkeepNeeded) {
            return (upkeepNeeded, performData);
        }

        return checkTransmit();
    }

    function checkCloseRound() private returns (bool /* upkeepNeeded */, bytes memory /* performData */) {
        (bool success,) = address(minterMaster).call(abi.encodeWithSelector(minterMaster.closeRound.selector));
        if (success) {
            return (true, abi.encode(UpkeepType.CloseRound));
        }
        return (false, "");

    }

    function checkTransmit() private view returns (bool /* upkeepNeeded */, bytes memory /* performData */) {
        uint32 openEpoch = minterMaster.minter().openEpoch();
        if (transmitingEpoch >= openEpoch) {
            return (false, "");
        }

        for (uint i = 0; i < minterMaster.eidsLength(); i++) {
            uint32 eid = minterMaster.getEidAt(i);
            Round memory round = minterMaster.getRound(transmitingEpoch, eid);
            if (!round.transmitted) {
                bytes memory sendOptions = OptionsBuilder.newOptions().addExecutorLzReceiveOption(sendGas, 0);
                MessagingFee memory sendFee = minterMaster.quoteSendEmission(transmitingEpoch, eid, sendOptions);
                bytes memory responseOptions = OptionsBuilder.newOptions().addExecutorLzReceiveOption(responseGas, 0);
                MessagingFee memory responseFee = minterMaster.quoteSendRoundResponse(transmitingEpoch, eid, responseOptions);

                TransmitPerformData memory data =
                    TransmitPerformData(transmitingEpoch, eid, sendFee.nativeFee, responseFee.nativeFee);
                return (true, abi.encode(UpkeepType.Transmit, data));
            }
        }

        return (true, abi.encode(UpkeepType.CompleteTransmission));
    }

    function performUpkeep(bytes calldata performData) external onlyForwarder {
        UpkeepType t = abi.decode(performData, (UpkeepType));
        if (t == UpkeepType.CloseRound) {
            performCloseRound();
        } else if (t == UpkeepType.Transmit) {
            (, TransmitPerformData memory data) = abi.decode(performData, (UpkeepType, TransmitPerformData));
            performTransmit(data);
        } else if (t == UpkeepType.CompleteTransmission) {
            performCompleteTransmission();
        } else {
            revert("unknown type");
        }
    }

    function performCloseRound() internal {
        minterMaster.closeRound();
    }

    function performTransmit(TransmitPerformData memory data) internal {
        bytes memory sendOptions = OptionsBuilder.newOptions().addExecutorLzReceiveOption(sendGas, 0);
        bytes memory responseOptions = OptionsBuilder.newOptions().addExecutorLzReceiveOption(responseGas, 0);

        minterMaster.transmit{value: data.sendFee + data.responseFee}(
            data.epoch,
            data.eid,
            data.sendFee,
            data.responseFee,
            sendOptions,
            responseOptions
        );
    }

    function performCompleteTransmission() internal {
        transmitingEpoch += WEEK;
    }

}