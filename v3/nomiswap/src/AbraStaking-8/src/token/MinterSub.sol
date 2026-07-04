// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

import {IOAppComposer} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/interfaces/IOAppComposer.sol";
import {OFTComposeMsgCodec} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/libs/OFTComposeMsgCodec.sol";
import {OApp, OAppCore, MessagingFee, Origin} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OApp.sol";

import {Abra} from "src/token/Abra.sol";
import {AbraStaking} from "src/token/AbraStaking.sol";
import {OFTMediator} from "src/token/OFTMediator.sol";
import {RoundResponse, EpochReport, Emission} from "./MinterMaster.sol";
import {VoterV4} from "src/VoterV4.sol";
import {currentEpoch, previousEpoch, WEEK} from "src/libraries/EpochMath.sol";
import {IEpochController} from 'src/interfaces/IEpochController.sol';


error MinterSub_InvalidMediator(address mediator);
error MinterSub_InvalidEndpoint(address endpoint);
error MinterSub_AlreadySettled();
error MinterSub_AlreadyReported();
error MinterSub_ActiveEpoch();
error MinterSub_InvalidEpoch(uint expected, uint actual);
error MinterSub_InsufficientBalance(uint expected, uint actual);

contract MinterSub is IEpochController, OApp {
    Abra    immutable ABRA;

    VoterV4     public voter;
    AbraStaking public ve;
    /// Last epoch that was settled i.e. emission has been received and rewards were distributed to gauges.
    /// When a new epoch starts this will referr to a previous epoch untill we will receive emission from the master
    /// network.
    uint32 public openEpoch;
    mapping(uint32 epoch => Emission) public emissions;

    constructor(OFTMediator _mediator, VoterV4 _voter, AbraStaking _ve, address _owner)
        OApp(address(_mediator.endpoint()), _owner)
        Ownable(_owner)
    {
        ABRA = Abra(_mediator.token());
        voter = _voter;
        ve = _ve;
        openEpoch = currentEpoch();
    }

    function _lzReceive(
        Origin calldata /*_origin*/,
        bytes32 /*_guid*/,
        bytes calldata _message,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal override {
        RoundResponse memory response = abi.decode(_message, (RoundResponse));
        emissions[response.emission.epoch] = response.emission;
    }

    function settle() external {
        uint32 _openEpoch = openEpoch;
        if (_openEpoch >= currentEpoch()) {
            revert MinterSub_ActiveEpoch();
        }
        Emission memory emission = emissions[_openEpoch];
        if (emission.epoch != _openEpoch) {
            revert MinterSub_InvalidEpoch(_openEpoch, emission.epoch);
        }

        openEpoch += WEEK;
        // manually create a checkpoint for the locked supply in case no one (un)locks this week
        ve.checkpointLockedSupply();
        ABRA.approve(address(voter), emission.gauges);
        voter.notifyRewardAmount(emission.gauges);

        ABRA.transfer(address(ve.rewardsSource()), emission.rebase);
    }

    function _generateReport(uint32 _openEpoch) internal view returns (EpochReport memory) {
        return EpochReport({
            epoch: _openEpoch,
            points: uint224(ve.getPastTotalSupply(_openEpoch + WEEK - 1)),
            pointsCasted: voter.totalWeightAt(_openEpoch),
            locked: uint128(ve.lockedSupplyCheckpoints(_openEpoch)),
            supply: ABRA.supplyCheckpoints(_openEpoch)
        });
    }

    function quoteReport(uint32 eid, bytes calldata options) external view returns (MessagingFee memory) {
        EpochReport memory report = _generateReport(openEpoch);
        bytes memory message = abi.encode(report);
        return _quote(eid, message, options, false);
    }

    /// Report results of the last settled epoch.
    /// This function can be called unlimited number of times until the epoch is settled, but only one (the first)
    /// report will be processed by MinterMaster.
    // TODO: enforce minimum gass (using enforeced options)
    function reportEpoch(uint32 eid, bytes calldata options) external payable {
        uint32 _openEpoch = openEpoch;
        if (_openEpoch >= currentEpoch()) revert MinterSub_AlreadySettled();

        EpochReport memory report = _generateReport(_openEpoch);
        MessagingFee memory fee = MessagingFee({
            nativeFee: msg.value,
            lzTokenFee: 0
        });
        bytes memory message = abi.encode(report);
        _lzSend(eid, message, options, fee, msg.sender);
    }

    function setVoter(VoterV4 _voter) external onlyOwner {
        voter = _voter;
    }

    function setVe(AbraStaking _ve) external onlyOwner {
        ve = _ve;
    }

    function abra() external view returns (address) {
        return address(ABRA);
    }
}
