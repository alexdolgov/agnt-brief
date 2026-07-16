// TODO write teller interface
// TODO use teller interface in mint and stake functions
pragma solidity ^0.8.24;

import { ERC20 } from "solmate/tokens/ERC20.sol";

interface ITeller {
    function deposit(ERC20 depositAsset, uint256 depositAmount, uint256 minimumMint)
        external
        payable
        returns (uint256 shares);
}
