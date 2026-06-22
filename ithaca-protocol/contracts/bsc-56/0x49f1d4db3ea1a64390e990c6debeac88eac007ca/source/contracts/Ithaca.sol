// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ERC20, ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/// @title Official Ithaca Protocol Token
/// @author https://www.ithacaprotocol.io
/// @dev OpenZeppelin - A library for secure smart contract development

contract ITHACA is ERC20Burnable {
  /// @notice A constructor that mint the tokens
  constructor() ERC20("Ithaca Protocol", "ITHACA") {
    _mint(0x48ca6F8D608f5c49180F249C923a34FeFaFb0962, 1_000_000_000 * 10 ** decimals());
  }
}
