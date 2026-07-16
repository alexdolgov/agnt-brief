// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.13;

import "./libraries/Math.sol";
import "./interfaces/IMinter.sol";
import "./interfaces/IRewardsDistributor.sol";
import "./interfaces/ILynex.sol";
import "./interfaces/IVoter.sol";
import "./VoterV5/VotingEscrow/interfaces/IVotingEscrowV2.sol";

import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "./Constants.sol";

// codifies the minting rules as per ve(3,3), abstracted from the token to support any token that allows minting

contract MinterUpgradeableV2 is IMinter, Ownable2StepUpgradeable, ReentrancyGuardUpgradeable {
    
    bool public isFirstMint;

    uint public EMISSION;
    uint public TAIL_EMISSION;
    uint public REBASEMAX;
    uint public REBASE_CHANGE_RATE_MAX;
    int public REBASE_CHANGE_RATE;
    uint public constant MAX_INCREASE = 1050; // 5% of emission increase per epoch
    uint public constant PRECISION = 1000;
    uint public teamRate;
    uint public constant MAX_TEAM_RATE = 50; // 5%

    uint public WEEK = Constants.EPOCH; // allows minting once per week (reset every Thursday 00:00 UTC)
    uint public weekly; // represents a starting weekly emission of 2.6M LNX (LNX has 18 decimals)
    uint public active_period;
    uint public constant LOCK = 86400 * 7 * 52 * 2;

    address internal _initializer;
    address public team;
    address public pendingTeam;
    address public governor;
    address public pendingGovernor;
    
    ILynex public _lynex;
    IVoter public _voter;
    IVotingEscrowV2 public _ve;
    IRewardsDistributor public _rewards_distributor;
    uint256[50] private __gap;

    event Mint(address indexed sender, uint weekly, uint circulating_supply, uint circulating_emission);
    event SetGovernor(address newGovernor);
    event SetTeam(address newTeam);
    event SetVoter(address newVoter);
    event SetTeamRate(uint256 newRate);
    event SetEmission(uint256 newRate);
    event SetRebase(uint256 newRate);
    event SetRebaseChange(int256 newRate);

    constructor() {}

    function initialize(    
        address __voter, // the voting & distribution system
        address __ve, // the ve(3,3) system that will be locked into
        address __rewards_distributor // the distribution system that ensures users aren't diluted
    ) initializer public {
        __Ownable_init();

        _initializer = msg.sender;
        team = msg.sender;
        governor = msg.sender;

        teamRate = 40; // 400 bps = 4%

        EMISSION = 990;

        TAIL_EMISSION = 2; // 0.2% of total supply
        REBASEMAX = 520; // 52% means one year until rebase hits 0
        REBASE_CHANGE_RATE = -10; // Reduce rebase by 1% each epoch
        REBASE_CHANGE_RATE_MAX = 50; // 5 %
        WEEK = Constants.EPOCH;

        _lynex = ILynex(address(IVotingEscrowV2(__ve).token()));
        _voter = IVoter(__voter);
        _ve = IVotingEscrowV2(__ve);
        _rewards_distributor = IRewardsDistributor(__rewards_distributor);


        active_period = ((block.timestamp + (2 * WEEK)) / WEEK) * WEEK;
        weekly = 5_000_000 * 1e18; // represents a starting weekly emission of 5M LYNX (LYNX has 18 decimals)
        isFirstMint = true;

    }

    function _initialize(
        address[] memory claimants,
        uint[] memory amounts,
        uint max // sum amounts / max = % ownership of top protocols, so if initial 20m is distributed, and target is 25% protocol ownership, then max - 4 x 20m = 80m
    ) external {
        require(governor == msg.sender, 'not governor');
        require(_initializer != address(0), 'already initialized');
        require(claimants.length == amounts.length, "Length missmatch");
        _lynex.acceptOwnership();
        if(max > 0) {
            uint256 sum;
            _lynex.mint(address(this), max);
            _lynex.approve(address(_ve), type(uint).max);
            for (uint i = 0; i < claimants.length; i++) {
                _ve.createLockFor(amounts[i], LOCK, claimants[i], true);
                sum +=amounts[i];
            }
            require(sum == max, "Incorrect max value");
        }

        _initializer = address(0);
        active_period = ((block.timestamp) / WEEK) * WEEK; // allow minter.update_period() to mint new emissions THIS Thursday
    }

    function setTeam(address _team) external {
        require(msg.sender == team, "not team");
        pendingTeam = _team;
        emit SetTeam(pendingTeam);
    }

    function acceptTeam() external {
        require(msg.sender == pendingTeam, "not pending team");
        team = pendingTeam;
    }

    function setGovernor(address _governor) external {
        require(msg.sender == governor, "not governor");
        pendingGovernor = _governor;
        emit SetGovernor(pendingGovernor);
    }

    function acceptGovernor() external {
        require(msg.sender == pendingGovernor, "not pending governor");
        governor = pendingGovernor;
        pendingGovernor = address(0);
    }

    function setVoter(address __voter) external {
        require(__voter != address(0));
        require(msg.sender == team, "not team");
        _voter = IVoter(__voter);
        emit SetVoter(__voter);
    }

    function setTeamRate(uint _teamRate) external {
        require(msg.sender == governor, "not governor");
        require(_teamRate <= MAX_TEAM_RATE, "rate too high");
        teamRate = _teamRate;
        emit SetTeamRate(teamRate);
    }

    function setEmission(uint _emission) external {
        require(msg.sender == governor, "not governor");
        require(_emission <= MAX_INCREASE, "rate too high");
        EMISSION = _emission;
        emit SetEmission(EMISSION);
    }

    function setRebase(uint _rebase) external {
        require(msg.sender == governor, "not governor");
        require(_rebase <= PRECISION, "rate too high");
        REBASEMAX = _rebase;
        emit SetRebase(REBASEMAX);
    }

    function setRebaseChange(int _rebaseChange) external {
        require(msg.sender == governor, "not governor");
        require(uint(_rebaseChange) <= REBASE_CHANGE_RATE_MAX, "Above maximum rate change");
        REBASE_CHANGE_RATE = _rebaseChange;
        emit SetRebaseChange(REBASE_CHANGE_RATE);
    }

    // calculate circulating supply as total token supply - locked supply
    function circulating_supply() public view returns (uint) {
        return _lynex.totalSupply() - _ve.supply();
    }

    // emission calculation is 1% of available supply to mint adjusted by circulating / total supply
    function calculate_emission() public view returns (uint) {
        return (weekly * EMISSION) / PRECISION;
    }

    // weekly emission takes the max of calculated (aka target) emission versus circulating tail end emission
    function weekly_emission() public view returns (uint) {
        return Math.max(calculate_emission(), circulating_emission());
    }

    // calculates tail end (infinity) emissions as 0.2% of total supply
    function circulating_emission() public view returns (uint) {
        return (circulating_supply() * TAIL_EMISSION) / PRECISION;
    }

    // calculate inflation and adjust ve balances accordingly
    function calculate_rebase(uint _weeklyMint) public view returns (uint) {
        uint _veTotal = _ve.supply();
        uint _lynexTotal = _lynex.totalSupply();
        
        uint lockedShare = (_veTotal) * PRECISION  / _lynexTotal;
        if(lockedShare >= REBASEMAX){
            return _weeklyMint * REBASEMAX / PRECISION;
        } else {
            return _weeklyMint * lockedShare / PRECISION;
        }
    }

    function calculate_new_rebase_rate() public view returns (uint) {
        if(REBASE_CHANGE_RATE == 0) return REBASEMAX;
        if(REBASE_CHANGE_RATE > 0) return REBASEMAX + uint(REBASE_CHANGE_RATE);
        if(REBASE_CHANGE_RATE < 0) {
            if(REBASEMAX < uint(-REBASE_CHANGE_RATE)) return 0;
            return REBASEMAX - uint(-REBASE_CHANGE_RATE);
        }
        return REBASEMAX; //fallback
    }

    // update period can only be called once per cycle (1 week)
    function update_period() external nonReentrant returns (uint) {
        uint _period = active_period;
        if (block.timestamp >= _period + WEEK && _initializer == address(0)) { // only trigger if new week
            _period = (block.timestamp / WEEK) * WEEK;
            active_period = _period;

            if(!isFirstMint){
                weekly = weekly_emission();
                // Adjust rebase on each epoch
                REBASEMAX = calculate_new_rebase_rate();
            } else {
                isFirstMint = false;
            }

            uint _rebase = calculate_rebase(weekly);
            uint _teamEmissions = weekly * teamRate / PRECISION;
            uint _required = weekly;

            uint _gauge = weekly - _rebase - _teamEmissions;

            uint _balanceOf = _lynex.balanceOf(address(this));
            if (_balanceOf < _required) {
                _lynex.mint(address(this), _required - _balanceOf);
            }

            require(_lynex.transfer(team, _teamEmissions));
            
            require(_lynex.transfer(address(_rewards_distributor), _rebase));
            _rewards_distributor.checkpoint_token(); // checkpoint token balance that was just minted in rewards distributor
            _rewards_distributor.checkpoint_total_supply(); // checkpoint supply

            _lynex.approve(address(_voter), _gauge);
            _voter.notifyRewardAmount(_gauge);

            emit Mint(msg.sender, weekly, circulating_supply(), circulating_emission());
        }
        return _period;
    }

    function check() external view returns(bool){
        uint _period = active_period;
        return (block.timestamp >= _period + WEEK && _initializer == address(0));
    }

    function period() external view returns(uint){
        return(block.timestamp / WEEK) * WEEK;
    }
    function setRewardDistributor(address _rewardDistro) external {
        require(msg.sender == team);
        _rewards_distributor = IRewardsDistributor(_rewardDistro);
    }
}
