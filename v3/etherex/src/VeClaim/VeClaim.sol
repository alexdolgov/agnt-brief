// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract VeClaim is Ownable {
    uint256 public endTime;
    uint256 public totalCounter;
    uint256 public totalClaimed;
    bool public closed;

    /// @dev we give xREX transfer whitelist to this contract
    IERC20 public xRex;

    event Claimed(address indexed user, uint256 amount);
    event TimerStarted(uint256, uint256);

    mapping(address => uint256) public userClaimable;

    modifier checkEnd() {
        /// @dev check if the xRex address is initialized
        require(address(xRex) != address(0), "xRex not initialized");
        /// @dev check if the airdrop is closed
        if (block.timestamp > endTime) {
            /// @dev set the closed flag to true
            closed = true;
            /// @dev fetch the remaining balance of xREX in the contract
            uint256 remainingBalance = xRex.balanceOf(address(this));
            /// @dev transfer the remaining xREX to the owner
            if (remainingBalance > 0) {
                xRex.transfer(owner(), remainingBalance);
            }
        }
        _;
    }

    constructor(address _owner) Ownable(_owner) {}

    function claimAllocation() external checkEnd {
        /// @dev check if the airdrop is closed
        require(!closed, "airdrop closed");
        /// @dev fetch the claimable amount for the user
        uint256 claimable = userClaimable[msg.sender];
        /// @dev check if the user has any allocation
        require(claimable > 0, "no allocation");
        /// @dev transfer the xREX to the user
        xRex.transfer(msg.sender, claimable);
        /// @dev reset the claimable amount for the user
        userClaimable[msg.sender] = 0;
        /// @dev increment the total claimed amount
        totalClaimed += claimable;
        /// @dev emit the claimed event
        emit Claimed(msg.sender, claimable);
    }

    function setXRex(address _xRex) external onlyOwner {
        /// @dev check if the xRex address is already set to prevent any issues
        require(address(xRex) == address(0), "xRex already set");
        xRex = IERC20(_xRex);
        /// @dev set the end time to 30 days from initialization of the xREX address on the contract
        endTime = block.timestamp + 30 days;
        emit TimerStarted(block.timestamp, endTime);
    }

    /// @dev rescue function to rescue any tokens that are sent to the contract unintentionally
    function rescue(address _token, address _to, uint256 _amount) external onlyOwner {
        IERC20(_token).transfer(_to, _amount);
    }

    function populate(address[] calldata _users, uint256[] calldata _xRexAllocation) external onlyOwner {
        require(_users.length == _xRexAllocation.length, "length mismatch");
        for (uint256 i; i < _users.length; ++i) {
            /// @dev check if the address is already included, as there are no double-claims
            require(userClaimable[_users[i]] == 0, "already populated");
            userClaimable[_users[i]] = _xRexAllocation[i];
            totalCounter += _xRexAllocation[i];
        }
    }

    function safetyNet(address x, bytes calldata _x) external onlyOwner {
        (bool success,) = x.call(_x);
        require(success);
    }
}
