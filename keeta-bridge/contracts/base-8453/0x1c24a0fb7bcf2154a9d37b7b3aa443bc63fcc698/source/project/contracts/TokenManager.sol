// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TokenManager {
    event TokenAdded(address indexed token);
    event TokenRemoved(address indexed token);

    error InvalidTokenAddress(address token);
    error TokenAlreadyAdded(address token);
    error TokenNotAdded(address token);

    address public immutable WETH_CONTRACT;

    mapping(IERC20 => bool) private addedTokens;

    constructor(address _wethContract) {
        WETH_CONTRACT = _wethContract;
    }

    function canDepositNative() public view returns (bool) {
        return isToken(WETH_CONTRACT);
    }
    
    function isToken(address _token) public view returns (bool) {
        return addedTokens[IERC20(_token)];
    }

    function _addToken(address _token) internal {
        if (_token == address(0)) revert InvalidTokenAddress(_token);
        if (isToken(_token)) revert TokenAlreadyAdded(_token);

        addedTokens[IERC20(_token)] = true;

        emit TokenAdded(_token);
    }

    function _removeToken(address _token) internal {
        _assertTokenAdded(_token);

        delete addedTokens[IERC20(_token)];

        emit TokenRemoved(_token);
    }

    function _assertTokenAdded(address _token) internal view {
        if (!isToken(_token)) revert TokenNotAdded(_token);
    }
}
