// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {RageStructs} from "./RageStructs.sol";

interface IRageTreasury {
    // Events
    event ContractNominatedForAdd(address indexed owner, address indexed nominee);
    event ContractAdded(address indexed caller);
    event ContractNominatedForRemove(address indexed owner, address indexed nominee);
    event ContractRemoved(address indexed caller, uint256 freedAttribution);
    event AttributionIncreased(address indexed caller, uint256 added, uint256 newTotal);
    event RageTransferred(address indexed caller, address indexed recipient, uint256 amount);
    event RageWithdrawn(uint256 amount);

    // Withdrawal functions
    function withdrawEth() external;
    function withdrawToken(address tokenAdr) external;
    function withdrawRage() external;

    // Contract registry management
    function addContract(address caller) external;
    function removeContract(address caller) external;

    // Attribution management
    function increaseAttribution(address caller, uint256 amount) external;

    // Transfer
    function requestTransfer(address recipient, uint256 amount) external returns (bool);

    // View functions
    function getUnallocated() external view returns (uint256);
    function getAvailableFor(address caller) external view returns (uint256);
    function getRegisteredContracts() external view returns (RageStructs.TreasuryContract[] memory);
    function getState() external view returns (RageStructs.TreasuryGetState memory);
}
