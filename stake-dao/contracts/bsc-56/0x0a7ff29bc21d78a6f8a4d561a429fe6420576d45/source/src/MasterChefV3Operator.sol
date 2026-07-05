// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IMasterChefV3.sol";

contract MasterChefV3Operator is Ownable {
    IMasterChefV3 public immutable masterChefV3;

    /// @notice operator address => is operator.
    mapping(address => bool) public isOperator;

    event OperatorUpdated(address indexed operator, bool enabled);
    event PoolsUpdated(address indexed caller, uint256[] pids);

    error ZeroAddress();
    error NotOwnerOrOperator();

    modifier onlyOwnerOrOperator() {
        if (msg.sender != owner() && !isOperator[msg.sender]) revert NotOwnerOrOperator();
        _;
    }

    constructor(address _masterChefV3) Ownable(msg.sender) {
        if (_masterChefV3 == address(0)) revert ZeroAddress();
        masterChefV3 = IMasterChefV3(_masterChefV3);
    }

    /// @notice Add or remove an operator.
    /// @dev Callable by owner.
    /// @param _operator The operator address.
    /// @param _enabled True to grant, false to revoke.
    function setOperator(address _operator, bool _enabled) external onlyOwner {
        if (_operator == address(0)) revert ZeroAddress();
        isOperator[_operator] = _enabled;
        emit OperatorUpdated(_operator, _enabled);
    }

    /// @notice Forward updatePools call to MasterChefV3.
    /// @dev This contract must be set as the operator on MasterChefV3 for the call to succeed.
    /// @param pids Pool ids to update.
    function updatePools(uint256[] calldata pids) external onlyOwnerOrOperator {
        masterChefV3.updatePools(pids);
        emit PoolsUpdated(msg.sender, pids);
    }

    /// @notice Return all pool ids whose allocPoint > 0, and each pid's allocPoint.
    /// @dev Valid pids in MasterChefV3 are 1..poolLength (pid 0 is invalid).
    /// @return pids Active pool ids.
    /// @return allocPoints allocPoints[i] is the allocPoint of pids[i].
    function getActivePids() external view returns (uint256[] memory pids, uint256[] memory allocPoints) {
        uint256 length = masterChefV3.poolLength();
        uint256[] memory pidBuffer = new uint256[](length);
        uint256[] memory allocBuffer = new uint256[](length);
        uint256 count;
        for (uint256 pid = 1; pid <= length; pid++) {
            (uint256 allocPoint,,,,,,) = masterChefV3.poolInfo(pid);
            if (allocPoint > 0) {
                pidBuffer[count] = pid;
                allocBuffer[count] = allocPoint;
                count++;
            }
        }
        pids = new uint256[](count);
        allocPoints = new uint256[](count);
        for (uint256 i = 0; i < count; i++) {
            pids[i] = pidBuffer[i];
            allocPoints[i] = allocBuffer[i];
        }
    }
}
