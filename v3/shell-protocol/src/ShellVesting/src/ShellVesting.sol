// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.19;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ISablierV2LockupLinear } from "@sablier/v2-core/src/interfaces/ISablierV2LockupLinear.sol";
import { Broker, LockupLinear } from "@sablier/v2-core/src/types/DataTypes.sol";
import { UD60x18 } from "@prb/math/src/UD60x18.sol";

/**
 * @notice
 *   Allows users to burn CRAB to create a Sablier linear vesting stream of SHELL and
 *   vesting stream owners to withdraw from their streams
 */
contract ShellVesting {
    //*********************************************************************//
    // --------------------------- custom errors ------------------------- //
    //*********************************************************************//
    error UnAuthorized();

    //*********************************************************************//
    // --------------------------- events ------------------------- //
    //*********************************************************************//
    event Claimed(uint256 indexed streamId, address account);

    event Withdraw(uint256[] indexed streamIds, address account);

    uint40 constant VESTING_DURATION = 104 weeks;

    /**
     * @notice
     * CRAB address.
     */
    IERC20 immutable crab;

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
     * vesting start time.
     */
    uint40 public immutable vestingStartTime;

    /**
     * @notice
     * vesting addmin address who will be the stream sender and can cancel the stream.
     */
    address public immutable admin;

    /**
     * @notice
     * constructor to initialize all immutables mentioned above.
     */
    constructor(
        IERC20 _shell,
        IERC20 _crab,
        ISablierV2LockupLinear _lockupLinear,
        uint40 _vestingStartTime,
        address _admin
    ) {
        crab = _crab;
        shell = _shell;
        lockupLinear = _lockupLinear;
        vestingStartTime = _vestingStartTime;
        admin = _admin;
    }

    /**
     * @notice creates a Sablier linear vesting stream
     */
    function _claimStream(uint256 _amount) internal returns (uint256) {
        // Approve the Sablier contract to spend SHELL
        shell.approve(address(lockupLinear), _amount);

        // Declare the params struct
        LockupLinear.CreateWithRange memory params;

        // Declare the function parameters
        params.sender = admin; // The sender will be able to cancel the stream
        params.recipient = msg.sender; // The recipient of the streamed assets
        params.totalAmount = uint128(_amount); // Total amount is the amount inclusive of all fees
        params.transferable = true; // stream is transferrable
        params.asset = shell; // The streaming asset
        params.cancelable = false; // Whether the stream will be cancelable or not
        params.range =
            LockupLinear.Range({ start: vestingStartTime, cliff: vestingStartTime, end: vestingStartTime + VESTING_DURATION });
        params.broker = Broker(address(0), UD60x18.wrap(0)); // no broker fee

        // Create the Sablier stream using a function that sets the start time to `block.timestamp`
        // trusted external contract
        uint256 _streamId = lockupLinear.createWithRange(params);

        emit Claimed(_streamId, msg.sender);

        return _streamId;
    }

    /**
     * @notice burns CRAB to create a vesting stream with equivalent amount of SHELL
     *  @param _amount amount to claim
     */
    function claimStream(uint256 _amount) external returns (uint256) {
        // burn crabs
        crab.transferFrom(msg.sender, address(0), _amount);

        if (block.timestamp < vestingStartTime + VESTING_DURATION) return _claimStream(_amount);

        else {
            // stream cannot be claimed after the end timestamp so directly send the tokens if someone tried to claim after the end timestamp
            bool success = shell.transfer(msg.sender, _amount);
            if (!success) revert();
            return 0;
        }
    }

    /**
     * @notice allows the stream owner to withdraw from their stream
     */
    function withdrawFromStream(uint256[] calldata _streamIds) external {
        uint256 _len = _streamIds.length;
        for (uint256 i; i < _len;) {
            if (lockupLinear.ownerOf(_streamIds[i]) != msg.sender) revert UnAuthorized();

            lockupLinear.withdrawMax({ streamId: _streamIds[i], to: msg.sender });

            unchecked {
                ++i;
            }
        }
        emit Withdraw(_streamIds, msg.sender);
    } 
}
