// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IMToken} from "../interfaces/IMToken.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract MTokenDepositEntry is
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;

    struct MTokenStatus {
        bool registered;
        bool allowStake;
        bool allowUnstake;
        address mTokenLst;
        address depositReceiver;
        uint256 minimalStake;
    }

    // whitelisted mTokens
    mapping(address => MTokenStatus) public mTokens;

    // whitelist depositer
    mapping(address mToken => mapping(address depositer => bool allowDeposit))
        public whitelistDepositer;

    // whitelist withdrawer
    mapping(address mToken => mapping(address withdrawer => bool allowWithdraw))
        public whitelistWithdrawer;

    // events
    event RegisterMToken(address mToken, MTokenStatus mTokenStatus);
    event Unstake(
        address indexed user,
        address indexed mTokenLst,
        uint256 mTokenLstAmount,
        uint256 mTokenAmount
    );
    event Stake(
        address indexed user,
        address indexed mToken,
        uint256 mTokenamount,
        uint mTokenLstAmount
    );

    event SetMTokenStatus(
        address indexed mToken,
        bool allowStake,
        bool allowUnstake,
        address depositReceiver,
        uint256 minimalStake
    );

    event SetWhitelistDepositer(
        address indexed mToken,
        address indexed depositer,
        bool allowDeposit
    );

    event SetWhitelistWithdrawer(
        address indexed mToken,
        address indexed withdrawer,
        bool allowWithdraw
    );

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Pausable_init();
        __ReentrancyGuard_init();
        __AccessControl_init();

        // grant DEFAULT_ADMIN_ROLE to msg.sender
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        pause();
    }

    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    struct RegisterMTokenParams {
        address mToken;
        address mTokenLst;
        address depositReceiver;
        uint256 minimalStake;
    }

    // regiser mToken
    function registerMTokens(
        RegisterMTokenParams[] calldata _params
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // loop to register mToken
        for (uint256 i = 0; i < _params.length; ++i) {
            _registerMToken(_params[i]);
        }
    }

    // register mToken
    function _registerMToken(RegisterMTokenParams memory _params) private {
        require(
            !mTokens[_params.mToken].registered,
            "MTokenDepositEntry: mToken already registered"
        );

        // check mTokenLst, depositReceiver addresses not zero
        require(
            _params.mTokenLst != address(0),
            "MTokenDepositEntry: zero mTokenLst"
        );
        require(
            _params.depositReceiver != address(0),
            "MTokenDepositEntry: zero depositReceiver"
        );

        MTokenStatus memory newMTokenStatus = MTokenStatus({
            registered: true,
            allowStake: true,
            allowUnstake: true,
            mTokenLst: _params.mTokenLst,
            depositReceiver: _params.depositReceiver,
            minimalStake: _params.minimalStake
        });

        mTokens[_params.mToken] = newMTokenStatus;

        emit RegisterMToken(_params.mToken, newMTokenStatus);
    }

    // stake mToken
    function stake(
        address _mToken,
        uint256 _amount
    ) external whenNotPaused nonReentrant {
        // require registered
        require(
            mTokens[_mToken].registered,
            "MTokenDepositEntry: mToken not registered"
        );

        require(
            mTokens[_mToken].allowStake,
            "MTokenDepositEntry: mToken not allowed to stake"
        );

        // check whether the depositer is allowed to deposit
        require(
            whitelistDepositer[_mToken][msg.sender],
            "MTokenDepositEntry: depositer not allowed to deposit"
        );

        // _amount not zero
        require(_amount > 0, "MTokenDepositEntry: zero amount");

        // check minimal stake requirement
        require(
            _amount >= mTokens[_mToken].minimalStake,
            "MTokenDepositEntry: amount less than minimal stake requirement"
        );

        // transfer mToken from user to contract
        IERC20(_mToken).safeTransferFrom(
            msg.sender,
            mTokens[_mToken].depositReceiver,
            _amount
        );

        // calculate equivalent asset amount
        // get decimals of mTokenLst
        uint8 lstDecimals = ERC20Upgradeable(mTokens[_mToken].mTokenLst)
            .decimals();
        uint8 mTokenDecimals = ERC20Upgradeable(_mToken).decimals();

        // require mToken decimals less than or equal to mTokenLst decimals
        require(
            mTokenDecimals <= lstDecimals,
            "MTokenDepositEntry: mToken decimals greater than mTokenLst decimals"
        );

        uint256 equivalentAssetAmount = convertTokenDecimals(
            _amount,
            mTokenDecimals,
            lstDecimals
        );

        // mint mTokenLst
        uint shareAmount = IMToken(mTokens[_mToken].mTokenLst)
            .mintWithAssetAmount(equivalentAssetAmount, msg.sender);

        emit Stake(msg.sender, _mToken, _amount, shareAmount);
    }

    // unstake mToken
    function unstake(
        address _mToken,
        uint256 _mTokenLstAmount
    ) external whenNotPaused nonReentrant {
        // require registered
        require(
            mTokens[_mToken].registered,
            "MTokenDepositEntry: mToken not registered"
        );

        require(
            mTokens[_mToken].allowUnstake,
            "MTokenDepositEntry: mToken not allowed to unstake"
        );

        // check whitelist withdrawer
        require(
            whitelistWithdrawer[_mToken][msg.sender],
            "MTokenDepositEntry: withdrawer not allowed to withdraw"
        );

        // amount not zero
        require(_mTokenLstAmount > 0, "MTokenDepositEntry: zero amount");

        uint redeemableAmount = IMToken(mTokens[_mToken].mTokenLst)
            .convertToTokens(_mTokenLstAmount);

        // get decimals
        uint8 lstDecimals = ERC20Upgradeable(mTokens[_mToken].mTokenLst)
            .decimals();
        uint8 mTokenDecimals = ERC20Upgradeable(_mToken).decimals();

        // require mToken decimals less than or equal to mTokenLst decimals
        require(
            mTokenDecimals <= lstDecimals,
            "MTokenDepositEntry: mToken decimals greater than mTokenLst decimals"
        );

        // convert mTokenLstAmount to mToken amount
        uint256 mTokenAmount = convertTokenDecimals(
            redeemableAmount,
            lstDecimals,
            mTokenDecimals
        );

        // transfer mToken from contract to user
        IMToken(mTokens[_mToken].mTokenLst).burn(msg.sender, _mTokenLstAmount);

        // transfer mToken from contract to user
        IERC20(_mToken).safeTransfer(msg.sender, mTokenAmount);

        emit Unstake(
            msg.sender,
            mTokens[_mToken].mTokenLst,
            _mTokenLstAmount,
            mTokenAmount
        );
    }

    // batch set mToken status
    function setMTokenStatus(
        address _mToken,
        bool _allowStake,
        bool _allowUnstake,
        address _depositReceiver,
        uint256 _minimalStake
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // require registered
        require(
            mTokens[_mToken].registered,
            "MTokenDepositEntry: mToken not registered"
        );

        // check depositReceiver address not zero
        require(
            _depositReceiver != address(0),
            "MTokenDepositEntry: zero depositReceiver"
        );

        mTokens[_mToken].allowStake = _allowStake;
        mTokens[_mToken].allowUnstake = _allowUnstake;
        mTokens[_mToken].depositReceiver = _depositReceiver;
        mTokens[_mToken].minimalStake = _minimalStake;

        emit SetMTokenStatus(
            _mToken,
            _allowStake,
            _allowUnstake,
            _depositReceiver,
            _minimalStake
        );
    }

    // set whitelist depositer
    function setWhitelistDepositer(
        address _mToken,
        address _depositer,
        bool _allowDeposit
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // require mToken registered
        require(
            mTokens[_mToken].registered,
            "MTokenDepositEntry: mToken not registered"
        );

        whitelistDepositer[_mToken][_depositer] = _allowDeposit;

        emit SetWhitelistDepositer(_mToken, _depositer, _allowDeposit);
    }

    // set whitelist withdrawer
    function setWhitelistWithdrawer(
        address _mToken,
        address _withdrawer,
        bool _allowWithdraw
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        // require mToken registered
        require(
            mTokens[_mToken].registered,
            "MTokenDepositEntry: mToken not registered"
        );

        whitelistWithdrawer[_mToken][_withdrawer] = _allowWithdraw;

        emit SetWhitelistWithdrawer(_mToken, _withdrawer, _allowWithdraw);
    }

    // convert token decimals
    function convertTokenDecimals(
        uint256 amount,
        uint8 fromDecimals,
        uint8 toDecimals
    ) internal pure returns (uint256) {
        if (fromDecimals == toDecimals) {
            return amount;
        }

        if (fromDecimals > toDecimals) {
            return amount / (10 ** (fromDecimals - toDecimals));
        }

        return amount * (10 ** (toDecimals - fromDecimals));
    }

    function getExchangeableLstAmount(
        address mToken,
        uint256 mTokenAmount
    ) public view returns (uint256) {
        // require registered
        require(
            mTokens[mToken].registered,
            "MTokenDepositEntry: mToken not registered"
        );

        // calculate equivalent asset amount
        // get decimals of mTokenLst
        uint8 lstDecimals = ERC20Upgradeable(mTokens[mToken].mTokenLst)
            .decimals();
        uint8 mTokenDecimals = ERC20Upgradeable(mToken).decimals();

        // require mToken decimals less than or equal to mTokenLst decimals
        require(
            mTokenDecimals <= lstDecimals,
            "MTokenDepositEntry: mToken decimals greater than mTokenLst decimals"
        );

        uint256 equivalentAssetAmount = convertTokenDecimals(
            mTokenAmount,
            mTokenDecimals,
            lstDecimals
        );

        uint256 mTokenLstAmount = IMToken(mTokens[mToken].mTokenLst)
            .convertToShares(equivalentAssetAmount);

        return mTokenLstAmount;
    }

    function getRedeemableMTokenAmount(
        address mToken,
        uint256 mTokenLstAmount
    ) public view returns (uint256) {
        // require registered
        require(
            mTokens[mToken].registered,
            "MTokenDepositEntry: mToken not registered"
        );

        uint redeemableAmount = IMToken(mTokens[mToken].mTokenLst)
            .convertToTokens(mTokenLstAmount);

        // get decimals
        uint8 lstDecimals = ERC20Upgradeable(mTokens[mToken].mTokenLst)
            .decimals();
        uint8 mTokenDecimals = ERC20Upgradeable(mToken).decimals();

        // require mToken decimals less than or equal to mTokenLst decimals
        require(
            mTokenDecimals <= lstDecimals,
            "MTokenDepositEntry: mToken decimals greater than mTokenLst decimals"
        );

        // convert mTokenLstAmount to mToken amount
        uint256 mTokenAmount = convertTokenDecimals(
            redeemableAmount,
            lstDecimals,
            mTokenDecimals
        );

        return mTokenAmount;
    }

    // get mTokens info
    function getMTokensInfo(
        address[] calldata _mTokens
    ) external view returns (MTokenStatus[] memory) {
        MTokenStatus[] memory mTokenStatuses = new MTokenStatus[](
            _mTokens.length
        );

        for (uint256 i = 0; i < _mTokens.length; ++i) {
            mTokenStatuses[i] = mTokens[_mTokens[i]];
        }

        return mTokenStatuses;
    }
}
