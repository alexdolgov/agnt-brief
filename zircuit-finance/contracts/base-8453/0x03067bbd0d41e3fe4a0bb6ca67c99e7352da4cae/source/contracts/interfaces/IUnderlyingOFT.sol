// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { UnderlyingOFTParams } from "../common/Types.sol";

interface IUnderlyingOFT {
    function mint(uint256 _amount) external;
    function burn(uint256 _amount) external;
    function deposit(uint256 _amount) external;
    function withdraw(uint256 _amount) external;
    function initialize(UnderlyingOFTParams calldata _params) external;
}
