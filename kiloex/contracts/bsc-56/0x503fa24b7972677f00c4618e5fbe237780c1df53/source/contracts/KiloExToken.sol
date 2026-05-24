// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";

contract KiloExToken is OFT, ERC20Burnable, ERC20Permit {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate,
        address _initTokenHolder
    ) OFT(_name, _symbol, _lzEndpoint, _delegate)  Ownable(_delegate) ERC20Permit(_name) {
        _mint(_initTokenHolder, 1_000_000_000 * 10 ** 18);
    }
}