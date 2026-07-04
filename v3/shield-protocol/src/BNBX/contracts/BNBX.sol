// SPDX-License-Identifier: MIT

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { ERC20BurnableUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";

// File contracts/tokens/XToken.sol

pragma solidity 0.8.4;

abstract contract XToken
 is OwnableUpgradeable, ERC20BurnableUpgradeable {
    // CONTRACTS
    mapping(address => bool) public allowedMinters;

    /* ========== MODIFIERS ========== */

    modifier onlyMinter() {
        require(allowedMinters[msg.sender], "XToken::Only minter can mint");
        _;
    }

    /* ========== MUTATIVE ========== */

    /// @notice Set minter for XToken (only once)
    /// @param _minter Address of minting Pool
    function setMinter(address _minter) external onlyOwner {
        require(allowedMinters[_minter] == false, "XToken::setMinter: ALREADY_ALLOWED");
        allowedMinters[_minter] = true;
    }

    function removeMinter(address _minter) external onlyOwner {
        require(allowedMinters[_minter] == true, "XToken::setMinter: NOT_ALLOWED");
        allowedMinters[_minter] = false;
    }

    /// @notice Mint new XToken
    /// @param _address Address of receiver
    /// @param _amount Amount of new XToken
    function mint(address _address, uint256 _amount) external onlyMinter {
        _mint(_address, _amount);
    }
}

// File contracts/tokens/WETHX.sol

pragma solidity 0.8.4;

contract BNBX is XToken {
    uint256 public constant GENESIS_SUPPLY = 1 ether; // 0.1 will be minted at genesis for liq pool seeding

    address public operator;
    bool public openTrading;
    mapping(address => bool) public whitelistAddresses;


     function initialize(string memory _name, string memory _symbol,address _owner) external initializer {
        __Ownable_init_unchained();
        __ERC20_init_unchained(_name, _symbol);
        _mint(_owner, GENESIS_SUPPLY);
        operator = _owner; 
    }


    function OpenTrade() external {
        require(msg.sender == operator, "No operator.");
        require(!openTrading, "Trade already opened.");
        openTrading = true;
    }

    function includeToWhitelist(address _address) public returns (bool) {
        require(msg.sender == operator, "No operator.");
        require(!whitelistAddresses[_address], "address can't be included");
        whitelistAddresses[_address] = true;
        return true;
    }

    function excludeFromWhitlist(address _address) public returns (bool) {
        require(msg.sender == operator, "No operator.");
        require(whitelistAddresses[_address], "address can't be excluded");
        whitelistAddresses[_address] = false;
        return true;
    }

    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal virtual override {
        require(openTrading || whitelistAddresses[sender], "Trade not opened");
        super._transfer(sender, recipient, amount);
    }
}