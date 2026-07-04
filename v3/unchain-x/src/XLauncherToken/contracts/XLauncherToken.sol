// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract XLauncherToken is ERC20Upgradeable, OwnableUpgradeable {
    uint public fundingSupply;
    uint public maxSupply;
    address public bondingContract;
    
    function initialize(
        string memory _name,
        string memory _symbol,

        uint256 _maxSupply,
        uint256 _fundingSupply,
        address _owner
    ) public initializer {
        __ERC20_init(_name, _symbol);

        maxSupply = _maxSupply;
        fundingSupply = _fundingSupply;
        bondingContract = _owner;
        __Ownable_init(_owner);
    }


    function mintFromBonding(address to, uint256 amount) public onlyOwner {        
        require(totalSupply() + amount <= fundingSupply, "Funding supply exceeded");
        _mint(to, amount);
    }

    function mintFormigration(address to, uint256 amount) public onlyOwner {
        require(totalSupply() + amount <= maxSupply, "Max supply exceeded");
        _mint(to, amount);
    }

    function burnFromBonding(address to, uint256 amount) public onlyOwner {
        _burn(to, amount);
    }

    function migrate(address to, uint256 amount) public onlyOwner {
        transfer(to, amount);
    }


}