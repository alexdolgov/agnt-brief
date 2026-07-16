// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {UrmStructs} from "./UrmStructs.sol";

interface IRageDepot {
    event ContractAdded(address indexed caller);
    event ContractRemoved(address indexed caller, uint256 attributed);
    event AttributionIncreased(address indexed caller, address requestor, uint256 added, uint256 newTotal);
    event RageTransferred(address indexed caller, address indexed recipient, uint256 amount);
    event RageWithdrawn(uint256 amount);

    function withdrawEth() external;
    function withdrawRage() external;
    function withdrawToken(address tokenAdr) external;
    function addContract(address caller) external;
    function removeContract(address caller) external;
    function increaseAttribution(address caller, uint256 amount) external;
    function selfIncreaseAttribution(uint256 amount) external;
    function pullAndIncreaseAttribution(address target, uint256 amount) external;
    function requestTransfer(address recipient, uint256 amount) external returns (bool);
    function getAvailableFor(address caller) external view returns (uint256);
    function getRegisteredContracts() external view returns (UrmStructs.DepotContract[] memory);
    function getState() external view returns (UrmStructs.DepotGetState memory);
}
