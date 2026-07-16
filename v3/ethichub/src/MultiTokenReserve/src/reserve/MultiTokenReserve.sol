// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import {TREASURY_MANAGER, TRANSFER_MANAGER, RESERVE_ADMIN} from '../Roles.sol';
import './IMultiTokenReserve.sol';

import '@openzeppelin/contracts/access/AccessControl.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

/**
 * @title MultiTokenReserve
 * @dev A simple holder of tokens
 * @author Ethichub
 */
contract MultiTokenReserve is IMultiTokenReserve, AccessControl {
    using SafeERC20 for IERC20;
    
    mapping(address => bool) public isTokenManaged;

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /**
     * @dev Transfers a specified amount of tokens to a given address
     * @param _token Address of the token to transfer
     * @param _to Address of the recipient
     * @param _value Amount of tokens to transfer
     */
    function transfer(address _token, address _to, uint256 _value)
        external
        override
        onlyRole(TRANSFER_MANAGER)
    {
        if (!isTokenManaged[_token]) revert TokenNonManaged(_token);
        IERC20(_token).safeTransfer(_to, _value);
        emit Transfer(_token, _to, _value);
    }

    /**
     * @dev Adds a new token to be managed by this contract
     * @param _token Address of the token to add
     */
    function addToken(address _token) public override onlyRole(RESERVE_ADMIN) {
        if (isTokenManaged[_token]) revert TokenManaged(_token);
        isTokenManaged[_token] = true;
        emit TokenAdded(_token);
    }

    /**
     * @dev Removes a token from being managed by this contract
     * @param _token Address of the token to remove
     */
    function removeToken(address _token) public override onlyRole(RESERVE_ADMIN) {
        if (!isTokenManaged[_token]) revert TokenNonManaged(_token);
        isTokenManaged[_token] = false;
        emit TokenRemoved(_token);
    }

    /**
     * @notice Sweeps tokens accidentally sent to the contract
     * @dev This function can only be called by an account with the TREASURY_MANAGER role
     * @dev WARNING: Due diligence is needed on the token address, as it might be malicious
     * @param _token Address of the token to sweep
     * @param _to Address to send the swept tokens to
     */
    function sweepTokens(address _token, address _to) external override onlyRole(TREASURY_MANAGER) {
        if (isTokenManaged[_token]) revert TokenManaged(_token);
        uint256 balanceToDrained = IERC20(_token).balanceOf(address(this));
        IERC20(_token).safeTransfer(_to, balanceToDrained);
        emit TokensSwept(_token, _to, balanceToDrained);
    }

    /**
     * @dev Returns the balance of a specific token held by this contract
     * @param _token Address of the token to check balance for
     * @return uint256 The balance of the specified token
     */
    function balance(address _token) external view override returns (uint256) {
        return IERC20(_token).balanceOf(address(this));
    }
}
