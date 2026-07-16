// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IBlueIceStaking.sol";

/*
    BlueIceVotingProxy:
    - count for BlueICE in wallet
    - count for BlueICE staking in BlueIceStaking
*/
contract BlueIceVotingProxy  {
    IERC20 public blueICE = IERC20(0xB1Bf26c7B43D2485Fa07694583d2F17Df0DDe010);
    IBlueIceStaking public staking = IBlueIceStaking(0xcFfc0C2a7456dE0145dEF3Aab731b36375DEf7D2);

    function balanceOf(address _addr) external view returns (uint256 _balance) {
        _balance = blueICE.balanceOf(_addr);
        (uint256 _amount, , , ) = staking.userInfo(_addr);
        _balance = _balance + _amount;
    }
}
