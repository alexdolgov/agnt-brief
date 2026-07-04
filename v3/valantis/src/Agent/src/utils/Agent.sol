// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

import {AccountFactory} from "../factories/AccountFactory.sol";

/**
 * @notice Agent contract to execute Account's function calls.
 */
contract Agent is Ownable2Step {
    using SafeERC20 for IERC20;
    using Address for address payable;

    /**
     *
     *  CUSTOM ERRORS
     *
     */
    error Agent__AccountNotDeployed();
    error Agent__ZeroAddress();
    error Agent__KeeperAlreadyAdded();
    error Agent__KeeperNotAdded();
    error Agent__NotKeeper();
    error Agent__CallFailed(uint256 index, bytes revertData);

    /**
     *
     *  EVENTS
     *
     */
    event KeeperAdded(address indexed keeper);
    event KeeperRemoved(address indexed keeper);
    event Swept(address indexed token, address indexed to, uint256 amount);

    /**
     *
     *  IMMUTABLES
     *
     */
    address public immutable accountFactory;

    /**
     *
     *  STORAGE
     *
     */

    /**
     * @dev Tracks whitelisted addresses which have the keeper role.
     */
    mapping(address => bool) public isKeeper;

    /**
     *
     *  MODIFIERS
     *
     */
    modifier onlyOwnerOrKeeper() {
        if (msg.sender != owner() && !isKeeper[msg.sender]) {
            revert OwnableUnauthorizedAccount(msg.sender);
        }
        _;
    }

    /**
     *
     *  CONSTRUCTOR
     *
     */
    constructor(address _owner, address _accountFactory) Ownable(_owner) {
        require(_accountFactory != address(0), Agent__ZeroAddress());
        accountFactory = _accountFactory;
    }

    /**
     *
     *  EXTERNAL FUNCTIONS
     *
     */

    receive() external payable {}

    /**
     * @notice Assigns keeper role to `_keeper`.
     * @dev Only callable by `owner`.
     * @param _keeper Address to grant the keeper role to.
     */
    function setKeeper(address _keeper) external onlyOwner {
        require(_keeper != address(0), Agent__ZeroAddress());
        require(!isKeeper[_keeper], Agent__KeeperAlreadyAdded());

        isKeeper[_keeper] = true;

        emit KeeperAdded(_keeper);
    }

    /**
     * @notice Revokes the keeper role from `_keeper`.
     * @dev Only callable by `owner`.
     * @param _keeper Address to revoke the keeper role from.
     */
    function removeKeeper(address _keeper) external onlyOwner {
        require(_keeper != address(0), Agent__ZeroAddress());
        require(isKeeper[_keeper], Agent__KeeperNotAdded());

        isKeeper[_keeper] = false;

        emit KeeperRemoved(_keeper);
    }

    /**
     * @notice Sweep tokens held by this contract.
     * @dev Only callable by `owner` or an address with keeper role.
     * @param token Token address to sweep (address(0) for native).
     * @param to Recipient address.
     * @param amount Amount to sweep (0 is a no-op).
     */
    function sweep(address token, address to, uint256 amount) external onlyOwnerOrKeeper {
        require(to != address(0), Agent__ZeroAddress());

        if (amount == 0) return;

        if (token == address(0)) {
            payable(to).sendValue(amount);
        } else {
            IERC20(token).safeTransfer(to, amount);
        }

        emit Swept(token, to, amount);
    }

    /**
     * @notice Allows an address with keeper role to execute a batch of arbitrary external calls.
     * @dev Only callable by an address with keeper role.
     * @param _account Address of the account to call.
     * @param _payloads Payloads to execute.
     */
    function multicall(address _account, bytes[] calldata _payloads) external {
        require(isKeeper[msg.sender], Agent__NotKeeper());
        // Must be a valid Account instance
        require(AccountFactory(accountFactory).isAccountDeployed(_account), Agent__AccountNotDeployed());

        for (uint256 i = 0; i < _payloads.length; i++) {
            (bool success, bytes memory revertData) = _account.call(_payloads[i]);
            if (!success) revert Agent__CallFailed(i, revertData);
        }
    }
}
