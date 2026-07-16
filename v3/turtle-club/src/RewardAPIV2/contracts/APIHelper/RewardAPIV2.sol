// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {IVotingEscrowV2} from "../VoterV5/VotingEscrow/interfaces/IVotingEscrowV2.sol";
import "../interfaces/IERC20.sol";
import "../libraries/Math.sol";
import "../interfaces/IBribeAPI.sol";
import "../interfaces/IWrappedBribeFactory.sol";
import "../interfaces/IGaugeAPI.sol";
import "../interfaces/IGaugeFactory.sol";
import "../interfaces/IMinter.sol";
import "../interfaces/IPair.sol";
import "../interfaces/IPairFactory.sol";
import "../interfaces/IVoter.sol";

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract RewardAPIV2 is Initializable {
    IPairFactory public pairFactory;
    IVoter public voter;
    address public underlyingToken;
    address public owner;

    constructor() {}

    function initialize(address _voter, IPairFactory _factory) public initializer {
        owner = msg.sender;
        voter = IVoter(_voter);
        pairFactory = _factory;
        underlyingToken = address(IVotingEscrowV2(voter.ve()).token());
    }

    struct Bribes {
        address[] tokens;
        string[] symbols;
        uint[] decimals;
        uint[] amounts;
    }

    struct Rewards {
        Bribes[] bribes;
    }

    /// @notice Get the rewards available the next epoch.
    function getExpectedClaimForNextEpoch(
        uint tokenId,
        address[] memory pairs
    ) external view returns (Rewards[] memory) {
        uint i;
        uint len = pairs.length;
        address _gauge;
        address _bribe;

        Bribes[] memory _tempReward = new Bribes[](2);
        Rewards[] memory _rewards = new Rewards[](len);

        //external
        for (i = 0; i < len; i++) {
            _gauge = voter.gauges(pairs[i]);

            // get external
            _bribe = voter.external_bribes(_gauge);
            _tempReward[0] = _getEpochRewards(tokenId, _bribe);

            // get internal
            _bribe = voter.internal_bribes(_gauge);
            _tempReward[1] = _getEpochRewards(tokenId, _bribe);
            _rewards[i].bribes = _tempReward;
        }

        return _rewards;
    }

    function _getEpochRewards(uint tokenId, address _bribe) internal view returns (Bribes memory _rewards) {
        uint totTokens = IBribeAPI(_bribe).rewardsListLength();
        uint[] memory _amounts = new uint[](totTokens);
        address[] memory _tokens = new address[](totTokens);
        string[] memory _symbol = new string[](totTokens);
        uint[] memory _decimals = new uint[](totTokens);
        uint ts = IBribeAPI(_bribe).getEpochStart();
        uint i = 0;

        (uint256 _weight, uint256 _balance) = _getWeight(_bribe, tokenId, uint48(ts));

        address _token;
        uint256 _reward;
        for (i; i < totTokens; i++) {
            _token = IBribeAPI(_bribe).rewardTokens(i);
            _tokens[i] = _token;
            if (_balance == 0 || _weight == 0) {
                _amounts[i] = 0;
                _symbol[i] = "";
                _decimals[i] = 0;
            } else {
                _symbol[i] = IERC20(_token).symbol();
                _decimals[i] = IERC20(_token).decimals();
                _reward = IBribeAPI(_bribe).rewardPerToken(_token, ts);
                _amounts[i] = ((_reward * _balance * _weight) / 1e18) / 1e18;
            }
        }

        _rewards.tokens = _tokens;
        _rewards.amounts = _amounts;
        _rewards.symbols = _symbol;
        _rewards.decimals = _decimals;
    }

    function _getWeight(
        address _bribe,
        uint tokenId,
        uint48 ts
    ) private view returns (uint256 weight, uint256 balance) {
        IVotingEscrowV2 ve = IVotingEscrowV2(voter.ve());
        address _delegatee = ve.delegates(tokenId, ts);
        uint256 power = IVotingEscrowV2(ve).balanceOfNFTAt(tokenId, ts);
        balance = IBribeAPI(_bribe).balanceOfOwnerAt(_delegatee, ts);
        uint256 delegateePower = ve.getPastVotes(_delegatee, uint(ts));
        if (delegateePower == 0) {
            weight = 0;
        } else {
            weight = (power * 1e18) / delegateePower;
        }
    }

    // read all the bribe available for a pair
    function getPairBribe(address pair) external view returns (Bribes[] memory) {
        address _gauge;
        address _bribe;

        Bribes[] memory _tempReward = new Bribes[](2);

        // get external
        _gauge = voter.gauges(pair);
        _bribe = voter.external_bribes(_gauge);
        _tempReward[0] = _getNextEpochRewards(_bribe);

        // get internal
        _bribe = voter.internal_bribes(_gauge);
        _tempReward[1] = _getNextEpochRewards(_bribe);
        return _tempReward;
    }

    function _getNextEpochRewards(address _bribe) internal view returns (Bribes memory _rewards) {
        uint totTokens = IBribeAPI(_bribe).rewardsListLength();
        uint[] memory _amounts = new uint[](totTokens);
        address[] memory _tokens = new address[](totTokens);
        string[] memory _symbol = new string[](totTokens);
        uint[] memory _decimals = new uint[](totTokens);
        uint ts = IBribeAPI(_bribe).getEpochStart();
        uint i = 0;
        address _token;
        IBribeAPI.Reward memory _reward;

        for (i; i < totTokens; i++) {
            _token = IBribeAPI(_bribe).rewardTokens(i);
            _tokens[i] = _token;
            _symbol[i] = IERC20(_token).symbol();
            _decimals[i] = IERC20(_token).decimals();
            _reward = IBribeAPI(_bribe).rewardData(_token, ts);
            _amounts[i] = _reward.rewardsPerEpoch;
        }

        _rewards.tokens = _tokens;
        _rewards.amounts = _amounts;
        _rewards.symbols = _symbol;
        _rewards.decimals = _decimals;
    }

    function setOwner(address _owner) external {
        require(msg.sender == owner, "not owner");
        require(_owner != address(0), "zeroAddr");
        owner = _owner;
    }

    function setVoter(address _voter, IPairFactory _factory) external {
        require(msg.sender == owner, "not owner");
        require(_voter != address(0), "zeroAddr");
        voter = IVoter(_voter);
        // update variable depending on voter
        pairFactory = _factory;
        underlyingToken = address(IVotingEscrowV2(voter.ve()).token());
    }
}
