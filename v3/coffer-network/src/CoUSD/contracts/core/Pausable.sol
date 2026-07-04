// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "./interfaces/IPausable.sol";

contract Pausable is IPausable {
    // Pauser
    address public pauser;

    // Pending Pauser
    address internal pendingPauser_;

    // Pause
    bool public paused = true;

    constructor(address _pauser) {
        require(_pauser != address(0), ErrorZeroAddress());
        pauser = _pauser;
    }

    /**
     * @dev Throws if called by any account other than the pauser.
     */
    modifier onlyPauser() {
        require(msg.sender == pauser, ErrorNotPauser());
        _;
    }

    /**
     * @dev Allows the current pauser to transfer control of the contract to a newPauser.
     * @param _newPauser The address to transfer pause right to.
     */
    function transferPauser(address _newPauser) public onlyPauser {
        require(_newPauser != address(0), ErrorZeroAddress());
        require(_newPauser != pauser, ErrorSameAddress());

        pendingPauser_ = _newPauser;
    }

    function acceptPauser() external {
        require(msg.sender == pendingPauser_, ErrorNotPendingPauser());

        address oldPauser = pauser;
        pauser = pendingPauser_;
        emit PauserTransferred(oldPauser, pauser);

        pendingPauser_ = address(0);
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     */
    modifier whenNotPaused() {
        require(!paused, ErrorWhenNotPaused());
        _;
    }

    /**
     * @dev called by the pauser to pause, triggers stopped state
     */
    function pause() public onlyPauser {
        require(!paused, ErrorSameStatus());
        paused = true;
        emit Pause();
    }

    /**
     * @dev called by the pauser to unpause, returns to normal state
     */
    function unpause() public onlyPauser {
        require(paused, ErrorSameStatus());
        paused = false;
        emit Unpause();
    }
}
