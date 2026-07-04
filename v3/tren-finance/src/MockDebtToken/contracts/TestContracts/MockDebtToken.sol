// SPDX-License-Identifier: MIT
pragma solidity =0.8.23;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

import { IDebtToken } from "../Interfaces/IDebtToken.sol";

contract MockDebtToken is IDebtToken, ERC20Permit, Ownable {
    event WhitelistChanged(address _contract, bool _isWhitelisted);

    error DebtToken__NotWhitelistedContract(address _contract);

    string public constant NAME = "Test Tren USD";
    string public constant SYMBOL = "testTrenUSD";

    mapping(address collateral => bool isStopped) public emergencyStopMintingCollateral;
    mapping(address whitelistedContract => bool isWhitelisted) public whitelistedContracts;

    modifier onlyWhitelistedContract() {
        if (!whitelistedContracts[msg.sender]) {
            revert DebtToken__NotWhitelistedContract(msg.sender);
        }
        _;
    }

    constructor() ERC20(NAME, SYMBOL) ERC20Permit(NAME) Ownable(msg.sender) { }

    function addWhitelist(address _address) external onlyOwner {
        whitelistedContracts[_address] = true;

        emit WhitelistChanged(_address, true);
    }

    function removeWhitelist(address _address) external onlyOwner {
        whitelistedContracts[_address] = false;

        emit WhitelistChanged(_address, false);
    }

    function mintFromWhitelistedContract(uint256 _amount)
        external
        override
        onlyWhitelistedContract
    {
        _mint(msg.sender, _amount);
    }

    function burnFromWhitelistedContract(uint256 _amount)
        external
        override
        onlyWhitelistedContract
    {
        _burn(msg.sender, _amount);
    }
}
