// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IMintableBurnable} from "src/interfaces/IMintableBurnable.sol";

contract TokenAuthority is AccessControl, IMintableBurnable {
    error InvalidParams();

    bytes32 public constant MINTER_ROLE = keccak256("TOKEN_MINTER_ROLE");
    address public immutable tokenAddress;

    constructor(address _tokenAddress, address admin) {
        if (_tokenAddress == address(0x0)) {
            revert InvalidParams();
        }
        tokenAddress = _tokenAddress;
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }

    function whiteListMint(uint256 _amount, address _account) external onlyRole(MINTER_ROLE) {
        _mint(_account, _amount);
    }

    function whiteListBurn(uint256 _amount, address _account) external onlyRole(MINTER_ROLE) {
        _burn(_account, _amount);
    }

    function _mint(address receipt, uint256 amount) private {
        IMintableBurnable(tokenAddress).whiteListMint(amount, receipt);
    }

    function _burn(address receipt, uint256 amount) private {
        IMintableBurnable(tokenAddress).whiteListBurn(amount, receipt);
    }

    function setMinter(address minter) external {
        grantRole(MINTER_ROLE, minter);
    }

    function removeMinter(address minter) external {
        revokeRole(MINTER_ROLE, minter);
    }
}
