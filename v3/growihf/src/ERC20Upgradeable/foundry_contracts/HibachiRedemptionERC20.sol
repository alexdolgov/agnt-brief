// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

import {IHibachiRedemptionERC20} from "./interfaces/IHibachiRedemptionERC20.sol";

import "./Errors.sol";

contract HibachiRedemptionERC20 is ERC20Upgradeable, IHibachiRedemptionERC20 {
    address public admin;

    modifier onlyAdmin() {
        if (_msgSender() != admin) {
            revert Unauthorized();
        }
        _;
    }

    function initialize(string memory name, string memory symbol) external initializer {
        __ERC20_init(name, symbol);

        admin = _msgSender();
    }

    function mint(address recipient, uint256 amount) external onlyAdmin {
        _mint(recipient, amount);
    }

    function burn(address owner, uint256 amount) external onlyAdmin {
        _burn(owner, amount);
    }

    function decimals() public pure override returns (uint8) {
        return 0;
    }
}
