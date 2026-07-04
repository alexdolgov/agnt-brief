// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {IMessagingChannel} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/IMessagingChannel.sol";
import {OApp, Origin, MessagingFee} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OApp.sol";
import {SendParam} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/interfaces/IOFT.sol";
import {AddressCast} from "@layerzerolabs/lz-evm-protocol-v2/contracts/libs/AddressCast.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

import {Abra} from "src/token/Abra.sol";
import {AbraStaking} from "src/token/AbraStaking.sol";
import {OFTMediator} from "src/token/OFTMediator.sol";
import {MinterUpgradeable} from "src/token/MinterUpgradeable.sol";
import {currentEpoch, previousEpoch, WEEK} from "src/libraries/EpochMath.sol";
import {VoterV4} from "src/VoterV4.sol";
import {IEpochController} from 'src/interfaces/IEpochController.sol';

// import {println} from "vulcan/test.sol"; // FIXME: remove

struct EpochReport {
    uint32  epoch;
    uint224 points; // vote power per network at the last checkpoint before the new epoch
    uint256 pointsCasted;
    uint128 locked; // number of abra tokens locked per network at the last checkpoint before the new epoch
    uint128 supply; // supply of abra tokens locked per network at the last checkpoint before the new epoch
}

struct Round {
    EpochReport report;
    bool    transmitted; // whether this chains's emission was sent or not
    uint112 gauges;     // amount of tokens emmited to a chain for gauges
    uint112 rebase;     // part of the emission that goes to the rebase
}

struct Emission {
    uint32  epoch;
    uint112 gauges;     // amount of tokens emmited to a chain for gauges
    uint112 rebase;     // part of the emission that goes to the rebase
}

struct RoundResponse {
    uint8 msgType;
    Emission emission;
}


error MinterMaster_AlreadyClosed(uint256 epoch);
error MinterMaster_AlreadyReported(uint epoch, uint32 srcEid, address sender, uint currentPoints, uint reportedPoints);
error MinterMaster_AlreadySettled();
error MinterMaster_AlreadyTransmitted(uint epoch, uint32 srcEid);
error MinterMaster_InvalidEpoch(uint256 expectedEpoch, uint256 receivedEpoch, uint32 srcEid, address sender);
error MinterMaster_NotReported(uint256 epoch, uint32 srcEid);
error MinterMaster_NotClosed(uint256 epoch);
error MinterMaster_NotEnoughFee(uint expectedFee, uint providedFee);


uint256 constant PRECISION = 1000;
// TODO: mutable, but with upper caps?
uint256 constant REBASEMAX = 300; // 30%
uint256 constant TEAMSHARE =  40; // 4%
uint256 constant AFFISHARE = 100; // 10%


function calculateRebase(uint weeklyMint, uint totalLocked, uint totalSupply) pure returns (uint) {        
    uint lockedShare = totalLocked * PRECISION  / totalSupply;
    if(lockedShare >= REBASEMAX){
        return weeklyMint * REBASEMAX / PRECISION;
    } else {
        return weeklyMint * lockedShare / PRECISION;
    }
}

contract MinterMaster is OApp {

    using EnumerableSet for EnumerableSet.UintSet;
    using AddressCast for bytes32;

    Abra    public immutable ABRA;
    VoterV4 public immutable VOTER;
    AbraStaking public immutable VE;

    MinterUpgradeable public minter;
    OFTMediator public mediator;
    address public team;
    address public affiliate;
    address public rewardSource;

    EnumerableSet.UintSet private eids;
    mapping(uint256 epoch => mapping(uint256 eid => Round)) private rounds;

    event EmissionAllocated(uint32 indexed epoch, uint256 gauges, uint256 rebase, uint256 team, uint256 affiliate);

    constructor(
        OFTMediator _mediator,
        MinterUpgradeable _minter, 
        VoterV4 voter,
        address _team,
        address _affiliate,
        address _owner
    ) 
        OApp(address(_mediator.endpoint()), _owner)
        Ownable(_owner)
    {
        mediator  = _mediator;
        minter    = _minter;
        team      = _team;
        affiliate = _affiliate;
        ABRA = Abra(mediator.token());
        VOTER = voter;
        VE = AbraStaking(voter.ve());
        rewardSource = address(VE.rewardsSource());
    }


    // struct Origin {
    //     uint32 srcEid;
    //     bytes32 sender;
    //     uint64 nonce;
    // }
    function _lzReceive(
        Origin calldata _origin, // struct containing info about the message sender
        bytes32, //_guid, // global packet identifier
        bytes calldata payload, // encoded message payload being received
        address, // _executor, // the Executor address.
        bytes calldata // _extraData // arbitrary data appended by the Executor
    ) internal override {
        EpochReport memory report = abi.decode(payload, (EpochReport));
        _receiveReport(_origin.srcEid, _origin.sender.toAddress(), report);
    }

    // TODO: проверить что мы не можем зарепортить эпоху со страыми параметрами totalSupply totalLocked и т.д.
    function _receiveReport(uint32 eid, address sender, EpochReport memory report) internal {
        // [1]. Validate that epoch has 7 day difference with the current one
        if (report.epoch > previousEpoch()) {
            revert MinterMaster_InvalidEpoch(previousEpoch(), report.epoch, eid, sender);
        }

        EpochReport memory prevReport = rounds[report.epoch][eid].report;
        // [2]. Validate that the epoch is not already reported
        if (prevReport.epoch > 0) {
            revert MinterMaster_AlreadyReported(report.epoch, eid, sender, prevReport.points, report.points);
        }

        rounds[report.epoch][eid] = Round({
            report: report,
            transmitted: false,
            gauges: 0,
            rebase: 0
        });
    }

    function _reportLocal(uint32 _openEpoch) internal view returns (EpochReport memory) {
        return EpochReport({
            epoch: _openEpoch,
            points: uint224(VE.getPastTotalSupply(_openEpoch + WEEK)),
            pointsCasted: VOTER.totalWeightAt(_openEpoch), 
            locked: uint128(VE.lockedSupplyCheckpoints(_openEpoch)),
            supply: ABRA.supplyChekpoints(_openEpoch)
        });
    }

    struct RoundTotals {
        uint points;
        uint casted;
        uint abraLocked;
        uint supply;
    }

    function closeRound()
        external
        returns (uint32 epoch, uint112 localGauges, uint112 localRebase, uint256 teamPart, uint256 affPart)
    {    
        epoch = minter.openEpoch();
        if (epoch >= currentEpoch()) revert MinterMaster_AlreadyClosed(epoch);

        // [1]. Calculate total votes casted across all networks
        uint l = eids.length();
        RoundTotals memory total;

        for (uint256 i = 0; i < l; i++) {
            uint32 eid = uint32(eids.at(i));
            EpochReport memory report = rounds[epoch][eid].report;
            // ALL current registered networks must send reports to close the current round
            if (report.epoch == 0) {
                revert MinterMaster_NotReported(epoch, eid);
            }
            total.points     += report.points;
            total.casted     += report.pointsCasted;
            total.abraLocked += report.locked;
            total.supply     += report.supply;

            // println(
            //     "report eid={u} points={u} pointsCasted={u} locked={u} supply={u}",
            //     abi.encode(eid, report.points, report.pointsCasted, report.locked, report.supply)
            // );
        }

        // [1.1] Add up local stat
        EpochReport memory localReport = _reportLocal(epoch);
        total.points     += localReport.points;
        total.casted     += localReport.pointsCasted;
        total.abraLocked += localReport.locked;
        total.supply     += localReport.supply;

        // [1.2] Prevent division by zero if we have no votes or 0 locked tokens in this epoch.
        //       All divisions will yield 0, so the value doesn't really matter
        if (total.points == 0) total.points = 1;
        if (total.casted == 0) total.casted = 1;

        // [2]. Mint new tokens
        uint minted = minter.mint(address(this));
        uint rebase = calculateRebase(minted, total.abraLocked, total.supply);
        teamPart    = minted * TEAMSHARE / PRECISION;
        affPart     = minted * AFFISHARE / PRECISION;
        uint gauges = minted - rebase - teamPart - affPart;

        emit EmissionAllocated(epoch, gauges, rebase, teamPart, affPart);

        // [3]. Transfer shares        
        ABRA.transfer(team, teamPart);
        ABRA.transfer(affiliate, affPart);


        // [4]. Calculate distribution of minted tokens to each networks pro-rata
        for (uint256 i = 0; i < l; i++) {
            uint32 eid = uint32(eids.at(i));
            rounds[epoch][eid].gauges = uint112(gauges * rounds[epoch][eid].report.pointsCasted / total.casted);
            rounds[epoch][eid].rebase = uint112(rebase * rounds[epoch][eid].report.points / total.points);
        }

        // [5]. Calculate and distribute local emission;
        localGauges = uint112(gauges * localReport.pointsCasted / total.casted);
        localRebase = uint112(rebase * localReport.points / total.points);

        // push local report
        rounds[epoch][IMessagingChannel(endpoint).eid()] = Round({
            report: localReport,
            transmitted: false,
            gauges: localGauges,
            rebase: localRebase
        });
        
        // manually create a checkpoint for the locked supply in case if no-one will lock/unlock this week
        VE.checkpointLockedSupply();

        ABRA.approve(address(VOTER), localGauges);
        VOTER.notifyRewardAmount(localGauges);

        ABRA.transfer(rewardSource, localRebase);
    }

    function _getTransmitSendParams(
        uint32 eid, 
        uint amount, 
        bytes calldata options
    ) internal view returns (SendParam memory) {
        return SendParam({
            dstEid: eid, // Destination endpoint ID.
            to: peers[eid], // Recipient address.
            amountLD: amount, // Amount to send in local decimals.
            minAmountLD: amount, // Minimum amount to send in local decimals.
            extraOptions: options, // Additional options supplied by the caller to be used in the LayerZero message.
            composeMsg: new bytes(0), // The composed message for the send() operation.
            oftCmd: new bytes(0) // The OFT command to be executed, unused in default OFT implementations.
        });
    }

    function quoteSendEmission(
        uint32 epoch,
        uint32 eid,
        bytes calldata options
    ) external view returns (MessagingFee memory msgFee) {
        (uint128 gauges, uint128 rebase) = (rounds[epoch][eid].gauges, rounds[epoch][eid].rebase);
        uint amount = mediator.removeDust(gauges + rebase);

        SendParam memory sendParam = _getTransmitSendParams(eid, amount, options);
        return mediator.quoteSend(sendParam, false);
    }

    function quoteSendRoundResponse(
        uint32 epoch,
        uint32 eid,
        bytes calldata options
    ) external view returns (MessagingFee memory msgFee) {
        (uint112 gauges, uint112 rebase) = (rounds[epoch][eid].gauges, rounds[epoch][eid].rebase);
        RoundResponse memory response = RoundResponse({
            msgType: 0,
            emission: Emission({
                epoch: epoch,
                gauges: gauges,
                rebase: rebase
            })
        });
        bytes memory message = abi.encode(response);
        return _quote(eid, message, options, false);
    }

    function transmit(
        uint32 epoch, 
        uint32 eid, 
        uint sendTokenFee, 
        uint sendResponseFee,
        bytes calldata sendTokenOptions,
        bytes calldata sendResponseOptions
    ) external payable returns (uint112 gauges, uint112 rebase) {
        if (epoch >= minter.openEpoch()) {
            revert MinterMaster_NotClosed(epoch);
        }
        if (rounds[epoch][eid].transmitted == true) {
            revert MinterMaster_AlreadyTransmitted(epoch, eid);
        }
        if (msg.value < (sendTokenFee + sendResponseFee)) {
            revert MinterMaster_NotEnoughFee((sendTokenFee + sendResponseFee), msg.value);
        }
        rounds[epoch][eid].transmitted = true;
        (gauges, rebase) = (rounds[epoch][eid].gauges, rounds[epoch][eid].rebase);      
        uint112 amount = uint112(mediator.removeDust(gauges + rebase));
        // since we've lowered the sent amount through dust removal, we need to adjust the numbers (by lowering them)
        // in the round response, keeping in mind that some of the numbers may be 0
        if (gauges > rebase) {
            gauges = amount - rebase;
        } else {
            rebase = amount - gauges;
        }

        {
            SendParam memory sendParam = _getTransmitSendParams(eid, amount, sendTokenOptions);
            MessagingFee memory tokenFee = MessagingFee({
                nativeFee: sendTokenFee,
                lzTokenFee: 0
            });

            ABRA.approve(address(mediator), sendParam.amountLD);
            mediator.send{value: sendTokenFee}(sendParam, tokenFee, msg.sender);
        }

        RoundResponse memory response = RoundResponse({
            msgType: 0,
            emission: Emission({
                epoch: epoch,
                gauges: gauges,
                rebase: rebase
            })
        });
        // println("round-response eid={u} epoch={u} gauges={u:d18} rebase={u:d18}", abi.encode(eid, epoch, gauges, rebase));
        MessagingFee memory responseFee = MessagingFee({
            nativeFee: sendResponseFee,
            lzTokenFee: 0
        });
        bytes memory message = abi.encode(response);

        _lzSend(eid, message, sendResponseOptions, responseFee, msg.sender);
    }

    /// We need to be able to iterate over the eids and peers
    function _setPeer(uint32 _eid, bytes32 _peer) internal override {
        if (_peer == bytes32(0)) {
            eids.remove(_eid);
        } else {
            eids.add(_eid);
        }
        super._setPeer(_eid, _peer);
    }

    function _payNative(uint256 _nativeFee) internal override returns (uint256 nativeFee) {
        if (msg.value < _nativeFee) revert NotEnoughNative(msg.value);
        return _nativeFee;
    }

    function setMinter(MinterUpgradeable _minter) external onlyOwner {
        minter = _minter;
    }

    function setMediator(OFTMediator _mediator) external onlyOwner {
        mediator = _mediator;
    }

    function setTeam(address _team) external onlyOwner {
        team = _team;
    }

    function setAffiliate(address _affiliate) external onlyOwner {
        affiliate = _affiliate;
    }

    function setRewardSource(address _rewardSource) external onlyOwner {
        rewardSource = _rewardSource;
    }

    // -------------------------------------- getters -----------------------------------------------------
    function getRound(uint32 epoch, uint32 eid) external view returns (Round memory) {
        return rounds[epoch][eid];
    }

    function eidsLength() external view returns (uint) {
        return eids.length();
    }

    function getEidAt(uint at) external view returns (uint32) {
        return uint32(eids.at(at));
    }
}
