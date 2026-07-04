// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

interface IVotingEscrow {
    function create_lock_for(uint _value, uint _lock_duration, address _to) external;
}

interface IMinterUpgradable {
    function returnSurplusTokens(uint256 amount) external;
}

contract ReferralDistributor is Ownable(msg.sender), AccessControl {

    uint256 public totalCredited;
    uint256 public totalClaimed;
    uint256 public MAX_TIME = 86400 * 7 * 52 * 2;

    IERC20 public SwpxToken = IERC20(0x90C44218E202995F1c06CB0f0E452dd3b6d8eBDf);
    IVotingEscrow public VotingEscrow = IVotingEscrow(0x329D9cA4FAd82D10f128050535c138D3bd83E397);
    IMinterUpgradable public MinterUpgradable;

    mapping(address => UserInfo) public userInfo;

    // Events
    event ClaimReward(address user, uint256 amount);
    event ReturnSurplus(uint256 amount);
    event SetMinter(address minter);
    event SetVotingEscrow(address votingEscrow);
    event SetMaxTime(uint256 maxTime);
    event EarnedRewards(address user, uint256 amount, uint256 epoch);
    event EmergencyRecoverERC20(address token, uint256 amount, address to);
    event EmergencyRecoverNative(uint256 amount, address to);

    // Structs
    struct UserInfo {
        uint256 amount;
        uint256 claimed;
        uint256 totalEarned;
    }

    constructor(address _minterUpgradable) {
        IERC20(SwpxToken).approve(_minterUpgradable, type(uint256).max);
        IERC20(SwpxToken).approve(address(VotingEscrow), type(uint256).max);
        MinterUpgradable = IMinterUpgradable(_minterUpgradable);
    }

    function claimRewards() external {
        require(userInfo[msg.sender].amount > 0, 'nothing to claim');
        uint256 _userAmount = userInfo[msg.sender].amount;
        userInfo[msg.sender].amount = 0;
        userInfo[msg.sender].claimed += _userAmount;
        totalClaimed += _userAmount;

        VotingEscrow.create_lock_for(_userAmount, MAX_TIME, msg.sender);

        emit ClaimReward(msg.sender, _userAmount);
    }

    function addUserRewards(address[] memory _users, uint256[] memory _amounts, uint256 _epoch) external onlyOwner {
        require(_users.length == _amounts.length);
        for (uint256 i = 0; i < _users.length; ++i) {
            userInfo[_users[i]].amount += _amounts[i];
            userInfo[_users[i]].totalEarned += _amounts[i];

            // stats
            emit EarnedRewards(_users[i], _amounts[i], _epoch);
            totalCredited += _amounts[i];

        }
    }

    function returnSurplus(uint256 _amount) external onlyOwner {
        MinterUpgradable.returnSurplusTokens(_amount);
        emit ReturnSurplus(_amount);
    }

    function setMinter(IMinterUpgradable _newMinter) external onlyOwner {
        IERC20(SwpxToken).approve(address(MinterUpgradable), 0);

        MinterUpgradable = _newMinter;

        IERC20(SwpxToken).approve(address(_newMinter), type(uint256).max);

        emit SetMinter(address(_newMinter));
    }

    function updateMaxTime(uint256 _newMaxTime) external onlyOwner {
        MAX_TIME = _newMaxTime;
        emit SetMaxTime(_newMaxTime);
    }

    function updateVotingEscrow(IVotingEscrow _newVotingEscrow) external onlyOwner {

        IERC20(SwpxToken).approve(address(VotingEscrow), 0);

        VotingEscrow = _newVotingEscrow;

        IERC20(SwpxToken).approve(address(_newVotingEscrow), type(uint256).max);

        emit SetVotingEscrow(address(_newVotingEscrow));
    }

    // emergency recovery
    function emergencyRecoverERC20(address _tokenAddress, uint256 _tokenAmount, address _to) external onlyOwner {
        IERC20(_tokenAddress).transfer(_to, _tokenAmount);
        emit EmergencyRecoverERC20(_tokenAddress, _tokenAmount, _to);
    }

    function emergencyRecoverNative(uint256 _amount, address _to) external onlyOwner {
        (bool sent, ) = _to.call{value: _amount}("");
        require(sent, "Failed to send Ether");
        emit EmergencyRecoverNative(_amount, _to);
    }

}
