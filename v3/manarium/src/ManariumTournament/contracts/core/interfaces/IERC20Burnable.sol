// SPDX-License-Identifier: MIT
import "@openzeppelin/contracts/interfaces/IERC20.sol";

pragma solidity 0.8.4;

interface IERC20Burnable is IERC20 {
     
    /**
     * @dev Burn the amount of tokens
    */
    function burn(uint256 amount) external;
}