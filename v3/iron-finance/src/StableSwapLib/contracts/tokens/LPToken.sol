// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LPToken is ERC20 {
    address public minter;

    modifier onlyMinter() {
        require(msg.sender == minter, "!minter");
        _;
    }

    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        minter = msg.sender;
    }

    function burn(address _from, uint256 _amount) public {
        _burn(_from, _amount);
    }

    function setMinter(address _minter) external {
        require(minter != address(0), "zeroMinter");
        minter = _minter;
    }

    function mint(address _to, uint256 _amount) external onlyMinter {
        _mint(_to, _amount);
    }
}
