// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/math/Math.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "../linSpirit/interfaces/ILinSpiritStrategy.sol";
import "./IVoter.sol";
import "./ISpiritGauge.sol";

contract VoteDistributor is OwnableUpgradeable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    uint256 public rewardTokenLength;
    mapping(uint256 => address) public rewardToken;
    uint256 public gaugeLength;
    mapping(uint256 => address) public gauge;
    mapping(uint256 => mapping(address => uint256)) public claimedBalance;
    mapping(address => uint256) public lastHarvestedWeek;

    mapping(address => bool) public rewardTokenAdded;
    mapping(address => bool) public gaugeAdded;    

    uint256 public firstWeek;

    uint256 public WEEK;
    address public linSpiritStrategy;
    address public voter;

    string public __NAME__;

    constructor() public {}

    function initialize(
        string memory _name,
        address _linSpiritStrategy,
        address _voter
    ) public initializer {
        __Ownable_init();
        linSpiritStrategy = _linSpiritStrategy;
        voter = _voter;
        WEEK = 7 days;
        __NAME__ = _name;
    }

    function _addRewardToken(address _newReward) internal {
        require(_newReward != address(0), "zero adddress");
        if (!rewardTokenAdded[_newReward]) {
            rewardToken[rewardTokenLength] = _newReward;
            rewardTokenLength += 1;
            rewardTokenAdded[_newReward] = true;
        }
    }

    function addGauge(address _gauge) external onlyOwner {
        require(_gauge != address(0), "zero adddress");
        if (!gaugeAdded[_gauge]) {
            gauge[gaugeLength] = _gauge;
            gaugeLength += 1;
            gaugeAdded[_gauge] = true;
            address _token = ISpiritGauge(_gauge).TOKEN();
            (address _token0, address _token1) = IBaseV1Pair(_token).tokens();
            _addRewardToken(_token0);
            _addRewardToken(_token1);
        }
    }

    function getRewardsFromStrategy() public {
        uint256[] memory currentBalance = new uint256[](rewardTokenLength);
        uint256 _thisWeek = thisWeek();

        for (uint256 j = 0; j < gaugeLength; j ++) {
            address _token = ISpiritGauge(gauge[j]).TOKEN();
            (address _token0, address _token1) = IBaseV1Pair(_token).tokens();
            
            for (uint256 i = 0; i < rewardTokenLength; i++) {
                currentBalance[i] = IERC20(rewardToken[i]).balanceOf(address(this));
            }
            ILinSpiritStrategy(linSpiritStrategy).claimVotingFees(
                gauge[j], 
                _token0, 
                _token1, 
                address(this)
            );

            for (uint256 i = 0; i < rewardTokenLength; i++) {
                uint256 newBalance = IERC20(rewardToken[i]).balanceOf(address(this));
                claimedBalance[_thisWeek][rewardToken[i]] += newBalance.sub(currentBalance[i]);
            }
        }
    }

    function harvestRewards(address _sender) external {
        getRewardsFromStrategy();
        uint256 _lastHarvested = lastHarvestedWeek[_sender] > firstWeek ? lastHarvestedWeek[_sender] : firstWeek;
        uint256 _thisWeek = thisWeek();

        for (uint256 j = 0; j < rewardTokenLength; j ++) {
            uint256 _rewardAmount = 0;
            for (uint256 i = _lastHarvested + WEEK; i < _thisWeek ; i += WEEK) {
                uint256 _votedWeight = IVoter(voter).votedWeight(_sender, i);
                uint256 _totalVotedWeight = IVoter(voter).totalVotedWeight(i);
                    uint256 _claimed = claimedBalance[i][rewardToken[j]];
                    if (_claimed > 0) {
                        _rewardAmount += _claimed.mul(_votedWeight).div(_totalVotedWeight);
                    }
            }
            IERC20(rewardToken[j]).safeTransfer(_sender, _rewardAmount);
        }

        lastHarvestedWeek[_sender] = _thisWeek - WEEK;
    }

    function pendingReward(
        address _sender, 
        address _rewardToken
    ) public view returns(uint256 _reward) {
        uint256 _lastHarvested = lastHarvestedWeek[_sender] > firstWeek ? lastHarvestedWeek[_sender] : firstWeek;
        uint256 _thisWeek = thisWeek();

        for (uint256 i = _lastHarvested + WEEK; i < _thisWeek ; i += WEEK) {
            uint256 _votedWeight = IVoter(voter).votedWeight(_sender, i);
            uint256 _totalVotedWeight = IVoter(voter).totalVotedWeight(i);
            uint256 _claimed = claimedBalance[i][_rewardToken];
            if (_claimed > 0) {
                _reward += _claimed.mul(_votedWeight).div(_totalVotedWeight);
            }
        }
    }

    function thisWeek() public view returns (uint256 _thisWeek) {
        _thisWeek = (block.timestamp / WEEK) * WEEK;
    }
}
