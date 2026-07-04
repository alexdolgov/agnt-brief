// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title Calculate voting power for MET and esMET holders
 */
contract MetronomeVotingPowerV2 {
    IERC20 public constant MET = IERC20(0x2Ebd53d035150f328bd754D6DC66B99B0eDB89aa);
    IERC20 public constant ESMET = IERC20(0xA28D70795a61Dc925D4c220762A4344803876bb8);

    uint256 public constant MINIMUM_VOTING_POWER = 1e18;

    error AddressIsNull();

    /// @notice Get the voting power for holder_
    function balanceOf(address holder_) external view returns (uint256 _votingPower) {
        if (holder_ == address(0)) revert AddressIsNull();

        _votingPower = MET.balanceOf(holder_) + ESMET.balanceOf(holder_);

        if (_votingPower < MINIMUM_VOTING_POWER) {
            return 0;
        }
    }
}
