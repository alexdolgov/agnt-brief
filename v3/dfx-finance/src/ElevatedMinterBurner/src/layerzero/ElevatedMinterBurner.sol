// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {IMintableBurnable} from "./interfaces/IMintableBurnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract ElevatedMinterBurner is Ownable {
    using SafeERC20 for IERC20;

    IMintableBurnable public immutable token;
    mapping(address => bool) public operators;

    constructor(IMintableBurnable _token, address _owner) Ownable(_owner) {
        token = _token;
    }

    modifier onlyOperators() {
        _onlyOperators();
        _;
    }

    function _onlyOperators() internal view {
        require(operators[msg.sender], "Not authorized");
    }

    function setOperator(address _operator, bool _status) external onlyOwner {
        operators[_operator] = _status;
    }

    function burn(address _from, uint256 _amount) external onlyOperators returns (bool) {
        IERC20(address(token)).safeTransferFrom(msg.sender, address(this), _amount);
        token.burn(_amount);
        return true;
    }

    function mint(address _to, uint256 _amount) external onlyOperators returns (bool) {
        token.mint(_to, _amount);
        return true;
    }
}
