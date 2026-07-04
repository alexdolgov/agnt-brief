//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/IERC20MintBurn.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract WHIRL is ERC20Capped, Ownable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20MintBurn;

    IERC20MintBurn public tokenToMigrate;

    constructor(uint256 totalSupply, address _tokenAddress)
        ERC20("OmniWhirl", "WHIRL")
        ERC20Capped(totalSupply.mul(1e18))
    {
        tokenToMigrate = IERC20MintBurn(_tokenAddress);
    }

    function mint(address recipient, uint256 amount) public onlyOwner {
        _mint(recipient, amount);
    }

    function migrate() public {
        uint256 toMigrateAmount = tokenToMigrate.balanceOf(msg.sender);
        tokenToMigrate.safeTransferFrom(
            msg.sender,
            address(this),
            toMigrateAmount
        );
        tokenToMigrate.burn(toMigrateAmount);
        _mint(msg.sender, toMigrateAmount);
    }

    function burn(uint256 amount) public {
        _burn(_msgSender(), amount);
    }

    function burnFrom(address account, uint256 amount) public {
        uint256 currentAllowance = allowance(account, _msgSender());
        require(
            currentAllowance >= amount,
            "ERC20: burn amount exceeds allowance"
        );
        unchecked {
            _approve(account, _msgSender(), currentAllowance - amount);
        }
        _burn(account, amount);
    }
}
