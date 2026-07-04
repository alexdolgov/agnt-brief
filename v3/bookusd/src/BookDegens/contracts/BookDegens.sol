// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract BookDegens is Initializable, AccessControlUpgradeable {
    bytes32 public constant OPERATOR = keccak256("OPERATOR");

    IERC20 public bookToken;

    // Track all user deposits and withdraws
    struct UserDeposit {
        uint256 amount;
        uint256 timestamp;
    }
    mapping(address => UserDeposit[]) public userDeposits;
    mapping(address => UserDeposit[]) public userWithdraws;

    event Deposit(address indexed user, uint256 amount);
    event Withdraw(address indexed user, uint256 amount);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address defaultAdmin, IERC20 _bookToken) public initializer {
        __AccessControl_init();

        bookToken = _bookToken;
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
    }

    function deposit(uint256 amount) public {
        //Can be called by all users, and emits an event for the game to listen to
        bookToken.transferFrom(msg.sender, address(this), amount);
        emit Deposit(msg.sender, amount);
        userDeposits[msg.sender].push(UserDeposit(amount, block.timestamp));
    }

    function withdraw(uint256 amount, address _user) public onlyRole(OPERATOR) {
        //Can only be called by the OPERATOR role
        bookToken.transfer(_user, amount);
        emit Withdraw(_user, amount);
        userWithdraws[_user].push(UserDeposit(amount, block.timestamp));
    }

    function addOperator(address account) public onlyRole(DEFAULT_ADMIN_ROLE) {
        _grantRole(OPERATOR, account);
    }

    function removeOperator(address account) public onlyRole(DEFAULT_ADMIN_ROLE) {
        _revokeRole(OPERATOR, account);
    }
}
