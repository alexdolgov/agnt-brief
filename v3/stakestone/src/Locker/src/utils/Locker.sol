// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

/// @title Locker for veSTO
contract Locker {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    address public immutable veSTO;

    mapping(address => uint256) public locked;

    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    event Lock(address indexed caller, uint256 amount);
    event Unlock(address indexed caller, uint256 amount);

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    constructor(address _veSTO) {
        veSTO = _veSTO;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function lock(uint256 _amount) external {
        require(_amount != 0, "Zero");

        TransferHelper.safeTransferFrom(
            veSTO,
            msg.sender,
            address(this),
            _amount
        );
        locked[msg.sender] += _amount;

        emit Lock(msg.sender, _amount);
    }

    function unlock(uint256 _amount) external {
        require(_amount <= locked[msg.sender], "Insufficient");

        locked[msg.sender] -= _amount;
        TransferHelper.safeTransfer(veSTO, msg.sender, _amount);

        emit Unlock(msg.sender, _amount);
    }
}
