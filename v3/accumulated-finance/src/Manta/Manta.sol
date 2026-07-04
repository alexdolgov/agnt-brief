// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Manta is Ownable, ERC20Votes {
    bool public transferEnabled;
    mapping(address => bool) public whitelist;

    constructor() ERC20("Manta", "MANTA") ERC20Permit("Manta") {
        whitelist[address(0)] = true;
    }

    function setWhitelist(
        address account,
        bool whitelisted
    ) external onlyOwner {
        whitelist[account] = whitelisted;
    }

    function enableTransfer() external onlyOwner {
        transferEnabled = true;
    }

    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        require(
            transferEnabled || whitelist[from],
            "Manta: failed to transfer"
        );
    }
}
