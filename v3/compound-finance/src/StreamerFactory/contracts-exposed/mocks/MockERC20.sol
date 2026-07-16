// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/mocks/MockERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/interfaces/draft-IERC6093.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Context.sol";

contract $MockERC20 is MockERC20 {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(string memory name, string memory symbol, uint8 _dec) MockERC20(name, symbol, _dec) payable {
    }

    function $_decimals() external view returns (uint8) {
        return _decimals;
    }

    function $_transfer(address from,address to,uint256 value) external payable {
        super._transfer(from,to,value);
    }

    function $_update(address from,address to,uint256 value) external payable {
        super._update(from,to,value);
    }

    function $_mint(address account,uint256 value) external payable {
        super._mint(account,value);
    }

    function $_burn(address account,uint256 value) external payable {
        super._burn(account,value);
    }

    function $_approve(address owner,address spender,uint256 value) external payable {
        super._approve(owner,spender,value);
    }

    function $_approve(address owner,address spender,uint256 value,bool emitEvent) external payable {
        super._approve(owner,spender,value,emitEvent);
    }

    function $_spendAllowance(address owner,address spender,uint256 value) external payable {
        super._spendAllowance(owner,spender,value);
    }

    function $_msgSender() external view returns (address ret0) {
        (ret0) = super._msgSender();
    }

    function $_msgData() external view returns (bytes memory ret0) {
        (ret0) = super._msgData();
    }

    function $_contextSuffixLength() external view returns (uint256 ret0) {
        (ret0) = super._contextSuffixLength();
    }

    receive() external payable {}
}
