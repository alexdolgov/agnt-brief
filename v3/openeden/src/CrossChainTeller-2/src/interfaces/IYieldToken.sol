// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20Metadata} from "openzeppelin/token/ERC20/extensions/IERC20Metadata.sol";

interface IYieldToken is IERC20Metadata {
    function mint(address _to, uint256 _amount) external;
    function burn(uint256 _amount) external;
    function burn(address _from, uint256 _amount) external;
}
