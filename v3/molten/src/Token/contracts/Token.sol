// SPDX-License-Identifier: UNLICENSED
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.24;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IAllowList} from "./IAllowList.sol";
import {IList} from "./IList.sol";

contract Token is Initializable, ERC20Upgradeable, ERC20PausableUpgradeable, OwnableUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    IAllowList public allowList;
    IList public blockedList;

    address public minter;
    address public burner;

    error NotInBlockList(address account);
    error InBlockList(address account);
    error NotInAllowList(address account);

    error RequireMinterAccount(address account);
    error RequireBurnerAccount(address account);

    event MinterChanged(address indexed previousAddress, address indexed newAddress);
    event BurnerChanged(address indexed previousAddress, address indexed newAddress);

    event AllowListChanged(address indexed previousAddress, address indexed newAddress);
    event BlackListChanged(address indexed previousAddress, address indexed newAddress);
    constructor() {
        _transferOwnership(_msgSender());
        _disableInitializers();
    }

    function initialize(
        string memory _name,
        string memory _symbol,
        address initialOwner,
        IAllowList _allowList,
        IList _blockedList
     ) initializer public {
        __ERC20_init(_name, _symbol);
        __ERC20Pausable_init();
        __Ownable_init(initialOwner);

        minter = initialOwner;
        burner = initialOwner;
        allowList = _allowList;
        blockedList = _blockedList;
    }

    function decimals() public pure override returns (uint8) {
        return 8;
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function setAllowList(address newAddress) public onlyOwner {
        if(newAddress != address(allowList)){
            address oldAddress = address(allowList);
            allowList = IAllowList(newAddress);
            emit AllowListChanged(oldAddress, newAddress);
        }
    }

    function setBlackList(address newAddress) public onlyOwner {
        if(newAddress != address(blockedList)){
            address oldAddress = address(blockedList);
            blockedList = IList(newAddress);
            emit BlackListChanged(oldAddress, newAddress);
        }
    }

    function setMinter(address newMinter) public onlyOwner {
        if(newMinter != minter){
            address oldMinter = minter;
            minter = newMinter;
            emit MinterChanged(oldMinter, minter);
        }
    }

    modifier onlyMinter() {
        if (minter != _msgSender()) {
            revert RequireMinterAccount(_msgSender());
        }
        _;
    }

    function mint(address to, uint256 amount) public onlyMinter {
        _mint(to, amount);
    }

    function setBurner(address newBurner) public onlyOwner {
        if(newBurner != burner){
            address oldBurner = burner;
            burner = newBurner;
            emit BurnerChanged(oldBurner, burner);
        }
    }

    modifier onlyBurner() {
        if (burner != _msgSender()) {
            revert RequireBurnerAccount(_msgSender());
        }
        _;
    }

    function burn(uint256 value) public onlyBurner {
        _burn(_msgSender(), value);
    }


    function destroy(address account, uint256 value) public onlyOwner {
        if(!blockedList.contains(account)){
            revert NotInBlockList(account);
        }

        _burn(account, value);
    }


    // The following functions are overrides required by Solidity.

    function _update(address from, address to, uint256 value)
        internal
        override(ERC20Upgradeable, ERC20PausableUpgradeable)
    {
         if (
            address(blockedList) != address(0) &&
            blockedList.contains(from) &&
            from != address(0) &&
            to != address(0)
        ) revert InBlockList(from);

        if (to != address(0)) {
            if (address(blockedList) != address(0) && blockedList.contains(to))
                revert InBlockList(to);

            if (
                address(allowList) != address(0) &&
                allowList.enabled() &&
                !allowList.contains(to)
            ) revert NotInAllowList(to);
        }

        super._update(from, to, value);
    }

    function reclaimToken(IERC20 _token) external onlyOwner {
        uint256 balance = _token.balanceOf((address)(this));
        SafeERC20.safeTransfer(_token, owner(), balance);
    }
}