// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IOracle} from "../interfaces/IOracle.sol";

contract StableCoinOracle is IOracle {
    function getTokenInfor(
        address tokenAddress,
        address owner
    ) public view returns (uint256, uint256, uint8) {
        return (
            ERC20(tokenAddress).balanceOf(owner),
            10 ** ERC20(tokenAddress).decimals(),
            ERC20(tokenAddress).decimals()
        );
    }
}
