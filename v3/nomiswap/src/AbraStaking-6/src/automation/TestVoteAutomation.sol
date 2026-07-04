// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {BaseAutomation} from "src/automation/BaseAutomation.sol";

import {VoterV4} from "src/VoterV4.sol";
import {AbraStaking} from "src/token/AbraStaking.sol";
import {IEpochController} from "src/interfaces/IEpochController.sol";
import {currentEpoch, nextEpoch} from "src/libraries/EpochMath.sol";
import {IGauge} from 'src/interfaces/IGauge.sol';

contract TestVoteAutomation is BaseAutomation {

    address public forwarder; // chainlink calls from this address
    uint256 public lockupIndex;
    VoterV4 public voter;
    AbraStaking public staking;

    constructor(address _voter) Ownable(msg.sender) {
        voter = VoterV4(_voter);
        staking = AbraStaking(voter.ve());
    }

    modifier onlyForwarder() {
        require(forwarder == _msgSender(), "Unauthorized forwarder");
        _;
    }

    function setForwarder(address _forwarder) external onlyOwner {
        forwarder = _forwarder;
    }

    function setVoter(address _voter) external onlyOwner {
        voter = VoterV4(_voter);
        staking = AbraStaking(voter.ve());
    }

    function setLockupIndex(uint _lockupIndex) external onlyOwner {
        lockupIndex = _lockupIndex;
    }

    function checkUpkeep(bytes calldata /* checkData */ )
        external
        cannotExecute
        returns (bool, /* upkeepNeeded */ bytes memory /* performData */ )
    {
        uint32 _currentEpoch = currentEpoch();
        AbraStaking.Lockup memory lockup = staking.lockups(address(this), lockupIndex);
        if (!voter.voted(lockup.id) || voter.lastVoted(lockup.id) <= _currentEpoch) {
            uint _poolsLength = voter.poolsLength();

            uint _ysLength = 0;
            for (uint i = 0; i < _poolsLength; i++) {
                address gauge = voter.gauges(voter.pools(i));
                address[] memory _ys = IGauge(gauge).yieldSources();
                _ysLength += _ys.length;
            }

            address[] memory _yieldSources = new address[](_ysLength);
            uint256[] memory _weights = new uint256[](_ysLength);

            uint index = 0;
            for (uint i = 0; i < _poolsLength; i++) {
                address gauge = voter.gauges(voter.pools(i));
                address[] memory _ys = IGauge(gauge).yieldSources();
                for (uint j = 0; j < _ys.length; j++) {
                    _yieldSources[index] = _ys[j];
                    _weights[index] = 100;
                    index++;
                }
            }

            return (true, abi.encode(lockupIndex, _yieldSources, _weights));
        }
        return (false, "");
    }

    function performUpkeep(bytes calldata performData) external onlyForwarder {
        uint256 _lockupIndex;
        address[] memory _yieldSources;
        uint256[] memory _weights;

        (_lockupIndex, _yieldSources, _weights) = abi.decode(performData, (uint256, address[], uint256[]));

        voter.vote(_lockupIndex, _yieldSources, _weights);
    }

}
