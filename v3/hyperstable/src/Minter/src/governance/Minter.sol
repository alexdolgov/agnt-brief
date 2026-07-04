// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.28;

import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {Errors} from "../libraries/Errors.sol";
import {SystemEpoch} from "./SystemEpoch.sol";

import {IMinter} from "../interfaces/IMinter.sol";
import {IPeg} from "../interfaces/IPeg.sol";
import {IVoter} from "../interfaces/IVoter.sol";
import {IVotingEscrow} from "../interfaces/IVotingEscrow.sol";
import {IRewardsDistributor} from "../interfaces/IRewardsDistributor.sol";
import {IEmissionScheduler} from "../interfaces/IEmissionScheduler.sol";

// codifies the minting rules as per ve(3,3), abstracted from the token to support any token that allows minting

contract Minter is Ownable, SystemEpoch, IMinter {
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeTransferLib for address;

    uint256 internal constant PRECISION = 1000;

    IPeg public immutable PEG;
    IVoter public immutable VOTER;
    IVotingEscrow public immutable VE;
    IRewardsDistributor public immutable REWARDS_DISTRIBUTOR;

    IEmissionScheduler public emissionScheduler;
    address public team;

    EnumerableSet.AddressSet private _ignoreSupplyFrom;

    event PeriodUpdated(address indexed sender, uint256 toVoter, uint256 toLockers, uint256 toTeam);
    event NewTeam(address indexed sender, address oldTeam, address newTeam);
    event Initialized(address indexed sender, address emissionScheduler, uint256 startTime);
    event AddToSkipSupply(address indexed sender, address added);
    event RemoveFromSkipSupply(address indexed sender, address removed);

    constructor(
        address _voterAddress, // the voting & distribution system
        address _veAddress, // the ve(3,3) system that will be locked into
        address _rewardsDIstributorAddress // the distribution system that ensures users aren't diluted
    ) {
        _initializeOwner(msg.sender);
        PEG = IPeg(IVotingEscrow(_veAddress).token());
        VOTER = IVoter(_voterAddress);
        VE = IVotingEscrow(_veAddress);
        REWARDS_DISTRIBUTOR = IRewardsDistributor(_rewardsDIstributorAddress);

        team = msg.sender;
    }

    function initialize(address _emissionSchedulerAddress) external onlyOwner {
        if (address(emissionScheduler) != address(0)) {
            revert Errors.AlreadyInitialized();
        }

        uint256 startTime = ((block.timestamp) / EPOCH) * EPOCH; // allow minter.updatePeriod() to mint new emissions THIS Thursday

        IEmissionScheduler(_emissionSchedulerAddress).initialize(startTime);
        emissionScheduler = IEmissionScheduler(_emissionSchedulerAddress);

        emit Initialized(msg.sender, _emissionSchedulerAddress, startTime);
    }

    function setTeam(address _newTeam) external onlyOwner {
        address oldTeam = team;

        team = _newTeam;

        emit NewTeam(msg.sender, oldTeam, _newTeam);
    }

    function toggleIgnoreSupply(address _toToggle, bool _add) external onlyOwner {
        if (_add) {
            _ignoreSupplyFrom.add(_toToggle);
            emit AddToSkipSupply(msg.sender, _toToggle);
        } else {
            _ignoreSupplyFrom.remove(_toToggle);
            emit RemoveFromSkipSupply(msg.sender, _toToggle);
        }
    }

    // calculate circulating supply as total token supply - locked supply
    function circulatingSupply() public view returns (uint256) {
        uint256 ignoredCount = _ignoreSupplyFrom.length();
        uint256 ignoredSupply;

        for (uint256 i; i < ignoredCount; i++) {
            ignoredSupply += PEG.balanceOf(_ignoreSupplyFrom.at(i));
        }

        return (PEG.totalSupply() - ignoredSupply) - VE.totalSupply();
    }

    // update period can only be called once per cycle (1 week)
    function updatePeriod() external returns (uint256) {
        IEmissionScheduler scheduler = emissionScheduler;
        if (address(scheduler) == address(0)) {
            return 0;
        }

        (uint256 toVoter, uint256 toLockers, uint256 toTeam) =
            scheduler.epochEmission(PEG.totalSupply(), VE.totalSupply());

        uint256 totalEmissions = toVoter + toLockers + toTeam;

        if (totalEmissions == 0) {
            return 0;
        }

        uint256 pegBalance = PEG.balanceOf(address(this));
        if (totalEmissions > pegBalance) {
            PEG.mint(address(this), totalEmissions - pegBalance);
        }

        if (toVoter > 0) {
            PEG.approve(address(VOTER), toVoter);
            VOTER.notifyRewardAmount(toVoter);
        }

        if (toLockers > 0) {
            address(PEG).safeTransfer(address(REWARDS_DISTRIBUTOR), toLockers);
            REWARDS_DISTRIBUTOR.checkpoint_token();
            REWARDS_DISTRIBUTOR.checkpoint_total_supply();
        }

        if (toTeam > 0) {
            address(PEG).safeTransfer(team, toTeam);
        }

        emit PeriodUpdated(msg.sender, toVoter, toLockers, toTeam);

        return totalEmissions;
    }
}
