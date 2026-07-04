// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// This is a contract used to track early THRONE stakers. It is given as reward by the masterchef and cannot be traded or transfered. It is used to track the early stakers and give them bonus airdrop of THRONE token.
contract SoulboundThrone is ERC20Burnable, Ownable {
    using SafeMath for uint256;

    uint8 public immutable VERSION = 1;

    mapping(address => bool) public isMinter;

    address payable public sbtVaultAddress;

    event TokenRecoverd(address indexed _user, uint256 _amount);
    event MinterRoleAssigned(address indexed _user, address indexed _account);
    event MinterRoleRevoked(address indexed _user, address indexed _account);

    constructor() ERC20("Soulbound Throne", "SBT") {}

    modifier hasMinterRole() {
        require(isMinter[_msgSender()], "SBT: You don't have the permission!");
        _;
    }

    function setVaultAddress(address payable _vaultAddress) external onlyOwner {
        sbtVaultAddress = _vaultAddress;
    }

    function _beforeTokenTransfer(address sender, address recipient, uint256 amount) internal view override {
        require(
            sender == address(0) ||
                recipient == address(0) ||
                sbtVaultAddress == _msgSender() ||
                owner() == _msgSender(),
            "SBT: This a Soulbound token. It cannot be transferred. It can only be burned by the token owner."
        );
    }

    function mint(address _user, uint256 _amount) external hasMinterRole {
        _mint(_user, _amount);
    }

    function assignMinterRole(address _account) public onlyOwner {
        isMinter[_account] = true;

        emit MinterRoleAssigned(_msgSender(), _account);
    }

    function revokeMinterRole(address _account) public onlyOwner {
        isMinter[_account] = false;

        emit MinterRoleRevoked(_msgSender(), _account);
    }

    function recoverToken(address _token, address recipient) external onlyOwner {
        uint256 tokenBalance = IERC20(_token).balanceOf(address(this));

        require(tokenBalance > 0, "SBT: The contract doen't have tokens to be recovered!");

        IERC20(_token).transfer(recipient, tokenBalance);

        emit TokenRecoverd(recipient, tokenBalance);
    }
}
