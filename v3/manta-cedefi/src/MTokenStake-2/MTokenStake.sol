// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

contract MTokenStake is
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;

    struct MTokenStatus {
        bool registered;
        bool allowStake;
        bool allowUnstake;
    }

    // whitelisted mTokens
    mapping(address => MTokenStatus) public mTokens;

    // user's staked balance
    mapping(address => mapping(address => uint256)) public stakedBalance;

    // minimal stake requirement
    mapping(address => uint256) public minimalStake;

    bytes32 public constant WHITELIST_STAKER = keccak256("WHITELIST_STAKER");

    // events
    event RegisterMToken(address mToken);
    event Unstake(address indexed user, address indexed mToken, uint256 amount);
    event Stake(address indexed user, address indexed mToken, uint256 amount);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address[] calldata _mTokens) public initializer {
        __Pausable_init();
        __ReentrancyGuard_init();
        __AccessControl_init();

        // grant DEFAULT_ADMIN_ROLE to msg.sender
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        pause();

        // register mTokns
        for (uint256 i = 0; i < _mTokens.length; ++i) {
            _registerMToken(_mTokens[i]);
        }
    }

    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    // regiser mToken
    function registerMTokens(
        address[] calldata _mTokens
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // loop to register mToken
        for (uint256 i = 0; i < _mTokens.length; ++i) {
            _registerMToken(_mTokens[i]);
        }
    }

    // register mToken
    function _registerMToken(address _mToken) private {
        require(
            !mTokens[_mToken].registered,
            "MTokenStake: mToken already registered"
        );
        mTokens[_mToken].registered = true;
        mTokens[_mToken].allowStake = true;
        mTokens[_mToken].allowUnstake = true;

        emit RegisterMToken(_mToken);
    }

    // stake mToken
    function stake(
        address _mToken,
        uint256 _amount
    ) external whenNotPaused nonReentrant {
        // require registered
        require(
            mTokens[_mToken].registered,
            "MTokenStake: mToken not registered"
        );

        require(
            mTokens[_mToken].allowStake,
            "MTokenStake: mToken not allowed to stake"
        );

        if (!hasRole(WHITELIST_STAKER, msg.sender)) {
            // check minimal stake requirement
            require(
                _amount >= minimalStake[_mToken],
                "MTokenStake: amount less than minimal stake requirement"
            );
        }

        // transfer mToken from user to contract
        IERC20(_mToken).safeTransferFrom(msg.sender, address(this), _amount);

        // update user's staked balance
        stakedBalance[_mToken][msg.sender] += _amount;

        emit Stake(msg.sender, _mToken, _amount);
    }

    // unstake mToken
    function unstake(
        address _mToken,
        uint256 _amount
    ) external whenNotPaused nonReentrant {
        // require registered
        require(
            mTokens[_mToken].registered,
            "MTokenStake: mToken not registered"
        );

        require(
            mTokens[_mToken].allowUnstake,
            "MTokenStake: mToken not allowed to unstake"
        );

        // check balance
        require(
            stakedBalance[_mToken][msg.sender] >= _amount,
            "MTokenStake: insufficient balance"
        );

        // update user's staked balance
        stakedBalance[_mToken][msg.sender] -= _amount;

        // transfer mToken from contract to user
        IERC20(_mToken).safeTransfer(msg.sender, _amount);

        emit Unstake(msg.sender, _mToken, _amount);
    }

    // batch set mToken status
    function batchSetMTokenStatus(
        address[] calldata _mTokens,
        bool _allowStake,
        bool _allowUnstake
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // loop to set mToken status
        for (uint256 i = 0; i < _mTokens.length; ++i) {
            // require registered
            require(
                mTokens[_mTokens[i]].registered,
                "MTokenStake: mToken not registered"
            );

            mTokens[_mTokens[i]].allowStake = _allowStake;
            mTokens[_mTokens[i]].allowUnstake = _allowUnstake;
        }
    }

    // update minimal stake requirement
    function updateMinimalStake(
        address _mToken,
        uint256 _minimalStake
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // check mToken registered
        require(
            mTokens[_mToken].registered,
            "MTokenStake: mToken not registered"
        );

        minimalStake[_mToken] = _minimalStake;
    }
}
