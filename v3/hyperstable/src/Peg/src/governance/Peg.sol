// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {IPeg} from "../interfaces/IPeg.sol";

contract Peg is ERC20, IPeg, Ownable {
    bool public initialMinted;
    address public minter;
    address public merkleClaim;

    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        _initializeOwner(msg.sender);
        minter = msg.sender;
        _mint(msg.sender, 0);
    }

    modifier onlyMinter() {
        if (msg.sender != minter) {
            revert OnlyMinter();
        }
        _;
    }

    // No checks as its meant to be once off to set minting rights to BaseV1 Minter
    function setMinter(address _minter) external onlyMinter {
        minter = _minter;
    }

    function setMerkleClaim(address _merkleClaim) external onlyOwner {
        merkleClaim = _merkleClaim;
    }

    function initialMint(address _recipient) external onlyOwner {
        if (initialMinted) {
            revert AlreadyInitialized();
        }

        initialMinted = true;
        _mint(_recipient, 500_000_000 * 1e18);
    }

    function mint(address account, uint256 amount) external onlyMinter returns (bool) {
        _mint(account, amount);
        return true;
    }

    function claim(address account, uint256 amount) external returns (bool) {
        require(msg.sender == merkleClaim);
        _mint(account, amount);
        return true;
    }
}
