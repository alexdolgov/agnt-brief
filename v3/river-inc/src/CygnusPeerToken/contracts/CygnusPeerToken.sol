// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract CygnusPeerToken is ERC20Burnable, Ownable {
    error CallerNotMinter(address caller);
    error InvalidMinterZeroAddress();

    event NewMinter(address newMinter);

    address public minter;

    modifier onlyMinter() {
        if (msg.sender != minter) {
            revert CallerNotMinter(msg.sender);
        }
        _;
    }

    constructor(string memory _name, string memory _symbol, address _minter, address _owner)
        ERC20(_name, _symbol)
        Ownable(_owner)
    {
        minter = _minter;
    }

    function mint(address _account, uint256 _amount) external onlyMinter {
        _mint(_account, _amount);
    }

    function setMinter(address newMinter) external onlyOwner {
        if (newMinter == address(0)) {
            revert InvalidMinterZeroAddress();
        }
        minter = newMinter;
        emit NewMinter(newMinter);
    }
}
