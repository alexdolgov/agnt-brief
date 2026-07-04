// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

abstract contract OwnerPausable is Pausable, Ownable
{
    
    function _pause() internal override onlyOwner {
        super._pause();
    }

    function _unpause() internal override onlyOwner {
        super._unpause();
    }
}