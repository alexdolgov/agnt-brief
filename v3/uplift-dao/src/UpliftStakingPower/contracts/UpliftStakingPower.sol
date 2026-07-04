// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./interfaces/IStaking.sol";

contract UpliftStakingPower is ERC20 {

    address staking;

    constructor(address _staking) ERC20("LIFT-SP", "LIFT-SP") {
        staking = _staking;
    }

    function balanceOf(address account) public view virtual override returns (uint256) {
        IStaking.InfoAccountDetails memory stakingDetails = IStaking(staking).info(account);
        return stakingDetails.accountDetails.totalStakingPower;
    }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        revert("UpliftStakingPower: INVALID");
    } 

    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        revert("UpliftStakingPower: INVALID");
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        revert("UpliftStakingPower: INVALID");
    }

    function increaseAllowance(address spender, uint256 addedValue) public virtual override returns (bool) {
        revert("UpliftStakingPower: INVALID");
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual override returns (bool) {
        revert("UpliftStakingPower: INVALID");
    }
}