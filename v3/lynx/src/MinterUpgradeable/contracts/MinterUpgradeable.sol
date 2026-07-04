// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.13;

import "./libraries/Math.sol";
import "./libraries/Constants.sol";
import "./interfaces/IMinter.sol";
import "./interfaces/IRewardsDistributor.sol";
import "./interfaces/ISWPx.sol";
import "./interfaces/IVoter.sol";
import "./interfaces/IVotingEscrow.sol";
import "./interfaces/IMasterchef.sol";

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

// codifies the minting rules as per ve(3,3), abstracted from the token to support any token that allows minting

contract MinterUpgradeable is IMinter, OwnableUpgradeable {

    bool public isFirstMint;

    uint public EMISSION;
    uint public TAIL_EMISSION;
    uint public REBASE_MAX;
    uint public REBASE_MIN;
    uint public REBASE_STEP;
    uint public currentRebaseRate;
    uint public constant PRECISION = 1000;
    uint public teamRate;
    uint public referralRate;
    uint public surplusTokens;
    uint public constant MAX_TEAM_RATE = 50; // 5%
    uint public constant MAX_REFERRAL_RATE = 100; // 10%

    uint public weekly; // represents a starting weekly emission of 2.0M SWPx (SWPx has 18 decimals)
    uint public active_period;
    bool public isEpochsStarted;
    uint public weekNumber;
    uint public constant LOCK = 86400 * 7 * 52 * 2;

    address public team;
    address public pendingTeam;
    address public referralAddress;

    ISWPx public _swpx;
    IVoter public _voter;
    IVotingEscrow public _ve;
    IRewardsDistributor public _rewards_distributor;
    IMasterchef public masterchef;

    event Mint(address indexed sender, uint weekly, uint circulating_supply, uint circulating_emission);
    event EpochChanged(uint256 epochStartTime);

    constructor() {}

    function initialize(
        address __voter, // the voting & distribution system
        address __ve, // the ve(3,3) system that will be locked into
        address __rewards_distributor, // the distribution system that ensures users aren't diluted
        address _masterchef,
        address _initialMintRecipient
    ) initializer public {
        __Ownable_init();

        team = msg.sender;

        teamRate = 30; // 300 bps = 3%
        referralRate = 50;

        EMISSION = 990;
        TAIL_EMISSION = 2;
        REBASE_MAX = 300;
        REBASE_MIN = 100;
        REBASE_STEP = 10;

        _swpx = ISWPx(IVotingEscrow(__ve).token());
        _voter = IVoter(__voter);
        _ve = IVotingEscrow(__ve);
        _rewards_distributor = IRewardsDistributor(__rewards_distributor);
        masterchef = IMasterchef(_masterchef);

        _swpx.initialMint(_initialMintRecipient);

        weekly = 2_000_000 * 1e18; // represents a starting weekly emission of 2M SWPx (SWPx has 18 decimals)
        isFirstMint = true;
    }

    function startEpoch() external onlyOwner {
        require(!isEpochsStarted, "Already started");

        active_period = (block.timestamp / Constants.EPOCH_LENGTH) * Constants.EPOCH_LENGTH;
        isEpochsStarted = true;

        emit EpochChanged(active_period);
    }

    function setTeam(address _team) external {
        require(msg.sender == team, "not team");
        pendingTeam = _team;
    }

    function acceptTeam() external {
        require(msg.sender == pendingTeam, "not pending team");
        team = pendingTeam;
    }

    function setVoter(address __voter) external {
        require(__voter != address(0));
        require(msg.sender == team, "not team");
        _voter = IVoter(__voter);
    }

    function setTeamRate(uint _teamRate) external {
        require(msg.sender == team, "not team");
        require(_teamRate <= MAX_TEAM_RATE, "rate too high");
        teamRate = _teamRate;
    }

    function setEmission(uint _emission) external {
        require(msg.sender == team, "not team");
        require(_emission <= PRECISION * 150 / 100, "rate too high");
        EMISSION = _emission;
    }

    function setReferralRate(uint _referralRate) external {
        require(msg.sender == team, "not team");
        require(_referralRate <= MAX_REFERRAL_RATE, "rate too high");
        referralRate = _referralRate;
    }

    function setReferralAddress(address _referralAddress) external {
        require(_referralAddress != address(0));
        require(msg.sender == team, "not team");
        referralAddress = _referralAddress;
    }

    // calculate circulating supply as total token supply - locked supply
    function circulating_supply() public view returns (uint) {
        return _swpx.totalSupply() - _swpx.balanceOf(address(_ve));
    }

    // emission calculation is 1% of available supply to mint adjusted by circulating / total supply
    function calculate_emission() public view returns (uint) {
        return (weekly * EMISSION) / PRECISION;
    }

    function circulating_emission() public view returns (uint) {
        return (circulating_supply() * TAIL_EMISSION) / PRECISION;
    }

    // calculate inflation and adjust ve balances accordingly
    function calculate_rebase(uint _weeklyMint) public view returns (uint, uint) {
        if (weekNumber == 0) {
            return (0, 0);
        }

        uint256 _currentRebaseRate = currentRebaseRate;
        if (_currentRebaseRate == 0) {
            _currentRebaseRate = REBASE_MIN;
        } else if (_currentRebaseRate < REBASE_MAX) {
            _currentRebaseRate += REBASE_STEP;
        }

        uint256 rebaseAmount = _weeklyMint * _currentRebaseRate / PRECISION;

        return (_currentRebaseRate, rebaseAmount);
    }

    // update period can only be called once per cycle (1 week)
    function update_period() external returns (uint) {
        uint _period = active_period;
        if (block.timestamp >= _period + Constants.EPOCH_LENGTH && isEpochsStarted) { // only trigger if new week
            _period = (block.timestamp / Constants.EPOCH_LENGTH) * Constants.EPOCH_LENGTH;
            active_period = _period;

            if(!isFirstMint){
                weekly = calculate_emission();
            } else {
                isFirstMint = false;
            }

            uint _rebase;
            (currentRebaseRate, _rebase) = calculate_rebase(weekly);
            uint _teamEmissions = weekly * teamRate / PRECISION;
            uint _referralEmissions = weekly * referralRate / PRECISION;
            uint _required = weekly + surplusTokens;

            uint _gauge = weekly + surplusTokens - _rebase - _teamEmissions - _referralEmissions;
            delete surplusTokens;

            uint _balanceOf = _swpx.balanceOf(address(this));
            if (_balanceOf < _required) {
                _swpx.mint(address(this), _required - _balanceOf);
            }

            if (weekNumber < 12) {
                masterchef.setDistributionRateExtra(_teamEmissions);
                require(_swpx.transfer(address(masterchef), _teamEmissions));
            } else {
                require(_swpx.transfer(team, _teamEmissions));
            }

            if(referralAddress != address(0)) require(_swpx.transfer(referralAddress, _referralEmissions));
            require(_swpx.transfer(address(_rewards_distributor), _rebase));
            _rewards_distributor.checkpoint_token(); // checkpoint token balance that was just minted in rewards distributor
            _rewards_distributor.checkpoint_total_supply(); // checkpoint supply

            require(_swpx.approve(address(_voter), _gauge));
            _voter.notifyRewardAmount(_gauge);

            emit EpochChanged(_period);
            emit Mint(msg.sender, weekly, circulating_supply(), circulating_emission());

            ++weekNumber;
        }
        return _period;
    }

    function returnSurplusTokens(uint256 amount) external {
        require(msg.sender == referralAddress, "!referralAddress");

        surplusTokens += amount;

        require(_swpx.transferFrom(msg.sender, address(this), amount));
    }

    function check() external view returns(bool){
        uint _period = active_period;
        return (block.timestamp >= _period + Constants.EPOCH_LENGTH && isEpochsStarted);
    }

    function period() external view returns(uint){
        return(block.timestamp / Constants.EPOCH_LENGTH) * Constants.EPOCH_LENGTH;
    }
    function setRewardDistributor(address _rewardDistro) external {
        require(msg.sender == team);
        _rewards_distributor = IRewardsDistributor(_rewardDistro);
    }
}
