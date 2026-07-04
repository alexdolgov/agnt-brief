/* SPDX-License-Identifier: GPL-3.0*/

pragma solidity ^0.8.20;

import {Owned} from "solmate/auth/Owned.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface AevoStaking {
    function aevo() external view returns (address);

    function unstakeFor(
        address _recipient,
        uint16 _start,
        uint16 _end
    ) external returns (uint256);

    function stakeFor(
        bool _isRBN,
        uint256 _amount,
        address _recipient
    ) external;
}

/**
 * @title Aevo Staking
 * @notice Stake Aevo and RBN for non-transferrable sAEVO
 */
contract AevoStakingHelper is Owned {
    using SafeERC20 for IERC20;

    /// @notice The aevo staking contract address
    address public immutable aevoStaking;

    /// @notice Constructor
    /// @param _aevoStaking The AevoStaking contract
    /// @param _owner The owner
    constructor(
        address _aevoStaking,
        address _owner
    ) Owned(_owner) {
        require(address(_aevoStaking) != address(0), "!_aevoStaking");

        aevoStaking = _aevoStaking;

        // TODO: - Maybe we can consider approving infinite in constructor? 
        // Not sure whats the downside
        address aevo = AevoStaking(aevoStaking).aevo();
        IERC20(aevo).approve(address(aevoStaking), type(uint256).max);
    }

    /// @notice Restake Aevo
    /// @notice Must unstake to re-stake with new epoch
    function restake(uint16 _start, uint16 _end, uint256 _stakeAmount) external {
        _restake(msg.sender, _start, _end, _stakeAmount);
    }

    function _restake(address _recipient, uint16 _start, uint16 _end, uint256 _stakeAmount) internal {
        require(_stakeAmount > 0, "!stakeAmount");

        // Unstake to recipient
        AevoStaking(aevoStaking).unstakeFor(
            _recipient,
            _start,
            _end
        );

        // Transfer $AEVO from recipient to this, approve AevoStaking to spend $AEVO of this
        address aevo = AevoStaking(aevoStaking).aevo();
        IERC20(aevo).safeTransferFrom(_recipient, address(this), _stakeAmount);

        // _isRBN will always be false, since unstakeFor only returns $AEVO
        AevoStaking(aevoStaking).stakeFor(false, _stakeAmount, _recipient);
    }
}
