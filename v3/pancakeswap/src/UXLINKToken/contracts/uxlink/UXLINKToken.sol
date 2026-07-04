// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19;
pragma abicoder v2;

import { ERC20Burnable } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import { ERC20Votes } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import {Manager} from "../libs/Manager.sol";

/**
 * @dev The UXLINK ERC20 token.
 * Only the admin address has permission to mint.
*/
contract UXLINKToken is ERC20Burnable, ERC20Votes, Manager {

    constructor() ERC20("UXLINK Token", "UXLINK") ERC20Permit("UXLINK") {
        setManager(msg.sender,true);
    }

    function mint(address _account, uint256 _amount) public onlyManager {
        _mint(_account, _amount);
    }

    function _mint(address to, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._burn(account, amount);
    }

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20, ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

}