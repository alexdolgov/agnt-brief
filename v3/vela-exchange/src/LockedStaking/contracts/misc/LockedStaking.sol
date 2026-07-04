// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ITokenFarm {
    function depositVlp(uint256 _amount) external;

    function harvestMany(bool _vela, bool _esvela, bool _vlp, bool _vesting) external;

    function withdrawVlp(uint256 _amount) external;

    function getStakedVLP(address _account) external view returns (uint256, uint256);
}

interface IOperators {
    function getOperatorLevel(address op) external view returns (uint256);
}

contract LockedStaking {
    using SafeERC20 for IERC20;

    IERC20 public immutable vlp;
    ITokenFarm public immutable tokenFarm;
    IOperators public immutable operators;
    address public immutable staker;
    uint256 public unlockTimestamp;

    modifier onlyOperator(uint256 level) {
        require(operators.getOperatorLevel(msg.sender) >= level, "invalid operator");
        _;
    }

    constructor(address _vlp, address _tokenFarm, address _operators, address _staker) {
        vlp = IERC20(_vlp);
        tokenFarm = ITokenFarm(_tokenFarm);
        operators = IOperators(_operators);
        staker = _staker;
        unlockTimestamp = 0;

        vlp.safeApprove(_tokenFarm, type(uint256).max);
    }

    function stakeAllVlp() external {
        require(unlockTimestamp > 0, "unlockTimestamp not set");
        uint256 vlpAmount = vlp.balanceOf(address(this));
        tokenFarm.depositVlp(vlpAmount);
    }

    function unstakeAllVlpAndTransferToStaker() external {
        require(block.timestamp >= unlockTimestamp, "not unlocked yet");

        (uint256 stakedVlpAmount, ) = tokenFarm.getStakedVLP(address(this));
        tokenFarm.withdrawVlp(stakedVlpAmount);
        vlp.safeTransfer(staker, stakedVlpAmount);
    }

    function claimRewards() external {
        tokenFarm.harvestMany(true, true, true, true);
    }

    function transferTokenToStaker(address _token) external {
        uint256 tokenBalance = IERC20(_token).balanceOf(address(this));
        IERC20(_token).safeTransfer(staker, tokenBalance);
    }

    function setUnlockTimestamp(uint256 _unlockTimestamp) external onlyOperator(3) {
        unlockTimestamp = _unlockTimestamp;
    }
}
