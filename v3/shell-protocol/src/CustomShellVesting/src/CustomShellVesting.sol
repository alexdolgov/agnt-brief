// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.19;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ISablierV2LockupLinear } from "@sablier/v2-core/src/interfaces/ISablierV2LockupLinear.sol";
import { Broker, LockupLinear } from "@sablier/v2-core/src/types/DataTypes.sol";
import { UD60x18 } from "@prb/math/src/UD60x18.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @notice
 *   Allows the owner to create custom vesting streams
 */
contract CustomShellVesting is Ownable {
    /**
     * @notice
     * SHELL address.
     */
    IERC20 public immutable shell;

    /**
     * @notice
     * sablier lock linear stream contract.
     */
    ISablierV2LockupLinear public immutable lockupLinear;

    /**
     * @notice
     * vesting addmin address who will be the stream sender and can cancel the stream.
     */
    address public immutable admin;

    /**
     * @notice
     * constructor to initialize all immutables mentioned above.
     */
    constructor(IERC20 _shell, ISablierV2LockupLinear _lockupLinear, address _admin) {
        shell = _shell;
        lockupLinear = _lockupLinear;
        admin = _admin;
    }

    /**
     * @notice creates a Sablier linear vesting stream
     */
    function _claimStream(
        address _recipient,
        uint128 _amount,
        uint40 _startTime,
        uint40 _endTime,
        bool _cancellable
    )
        internal
    {
        // Approve the Sablier contract to spend SHELL
        shell.approve(address(lockupLinear), _amount);

        // Declare the params struct
        LockupLinear.CreateWithRange memory params;

        // Declare the function parameters
        params.sender = admin; // The sender will be able to cancel the stream
        params.recipient = _recipient; // The recipient of the streamed assets
        params.totalAmount = _amount; // Total amount is the amount inclusive of all fees
        params.transferable = true; // stream is transferrable
        params.asset = shell; // The streaming asset
        params.cancelable = _cancellable; // Whether the stream will be cancelable or not
        params.range = LockupLinear.Range({ start: _startTime, cliff: _startTime, end: _endTime });
        params.broker = Broker(address(0), UD60x18.wrap(0)); // no broker fee

        // Create the Sablier stream using a function that sets the start time to `block.timestamp`
        // trusted external contract
        lockupLinear.createWithRange(params);
    }

    /**
     * @notice creates custom vesting streams
     *  @param _amount amount to claim
     */
    function claimStream(
        address[] calldata _recipient,
        uint128[] calldata _amount,
        uint40[] calldata _startTime,
        uint40[] calldata _endTime,
        bool[] calldata _cancellable
    )
        external
        onlyOwner
    {   
        if (_recipient.length != _amount.length) revert();
        if (_amount.length != _startTime.length) revert();
        if (_startTime.length != _endTime.length) revert();
        if (_endTime.length != _cancellable.length) revert();

        for (uint256 i; i < _recipient.length;) {
            _claimStream(_recipient[i], _amount[i], _startTime[i], _endTime[i], _cancellable[i]);
            unchecked {
                ++i;
            }
        }
    }
}
