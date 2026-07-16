// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "./IERC20.sol";
import {UrmStructs} from "./UrmStructs.sol";

interface IUrm is IERC20 {
    function getTotalSupply() external view returns (uint256);
    function getInitialSupply() external view returns (uint256);
    function getMintedSupply() external view returns (uint256);
    function getBurnedSupply() external view returns (uint256);
    function getNextRequestSupplyTime() external view returns (uint256);
    function getState() external view returns (UrmStructs.UrmState memory);
    function burn(uint256 amount) external;
    function requestSupply(uint256 percent) external returns (uint256);
    function setUrmFortress(address newOwner) external;
    function lockUrmFortress() external;
}
