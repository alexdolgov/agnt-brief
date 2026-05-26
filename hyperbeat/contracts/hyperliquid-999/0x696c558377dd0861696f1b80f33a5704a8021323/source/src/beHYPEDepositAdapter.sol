// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IWHYPE } from "./interfaces/IWHYPE.sol";
import { IStakingCore } from "./interfaces/IStakingCore.sol";

contract beHYPEDepositAdapter {
    using SafeERC20 for IERC20;

    IWHYPE public constant whype = IWHYPE(payable(0x5555555555555555555555555555555555555555));

    IERC20 public immutable beHype;
    IStakingCore public immutable stakingCore;

    error zeroAddress();
    error InvalidBeHypeAmount();

    constructor(address _beHype, address _stakingCore) {
        if (_beHype == address(0) || _stakingCore == address(0)) revert zeroAddress();
        beHype = IERC20(_beHype);
        stakingCore = IStakingCore(payable(_stakingCore));
    }

    function deposit(address _receiver, string memory communityCode) external payable {
        _depositAndTransfer(_receiver, msg.value, communityCode);
    }

    function depositWithWhype(address _receiver, uint256 _amount, string memory communityCode) external {
        IERC20(address(whype)).safeTransferFrom(msg.sender, address(this), _amount);
        whype.withdraw(_amount);
        _depositAndTransfer(_receiver, _amount, communityCode);
    }

    function _depositAndTransfer(address _receiver, uint256 _amount, string memory communityCode) internal {
        uint256 expectedBeHypeAmount = stakingCore.HYPEToBeHYPE(_amount);
        stakingCore.stake{ value: _amount }(communityCode);
        beHype.safeTransfer(_receiver, expectedBeHypeAmount);
    }

    receive() external payable { }
}
