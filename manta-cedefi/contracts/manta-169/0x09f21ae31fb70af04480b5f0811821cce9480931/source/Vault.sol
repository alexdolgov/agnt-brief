// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IMessageReceiverV2} from "./interfaces/IMessageReceiverV2.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {WithdrawOAppMessageHelper} from "./utils/WithdrawOAppMessageHelper.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IVault} from "./interfaces/IVault.sol";
import {BaseMessageEndV2} from "./Sync/BaseMessageEndV2.sol";

contract Vault is
    IVault,
    IMessageReceiverV2,
    BaseMessageEndV2,
    Initializable,
    PausableUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    WithdrawOAppMessageHelper
{
    using SafeERC20 for IERC20;
    address public syncOApp;

    bytes32 public constant WITHDRAW_ROLE = keccak256("WITHDRAW_ROLE");

    // modifier, only syncOApp can call
    modifier onlySyncOApp() {
        require(msg.sender == syncOApp, "only syncOApp");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address syncOApp_) public initializer {
        __Pausable_init();
        __ReentrancyGuard_init();

        // grant DEFAULT_ADMIN_ROLE to msg.sender
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

        pause();

        require(syncOApp_ != address(0), "zero syncOApp");
        syncOApp = syncOApp_;
    }

    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    function setPeerEndWhitelist(
        uint32 _lzEndId,
        bytes32 _peerAddr,
        bool _allowed
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        super._setPeerEndWhitelist(_lzEndId, _peerAddr, _allowed);
    }

    function _withdraw(
        WithdrawOAppMessage memory _withdrawOAppMessage,
        bytes32 _guid
    ) internal returns (bool) {
        uint8 toDecimals = _withdrawOAppMessage.refundToken == address(0)
            ? 18
            : ERC20Upgradeable(_withdrawOAppMessage.refundToken).decimals();

        // calculate the amount to withdraw
        uint256 convertedTokenAmount = convertTokenDecimals(
            _withdrawOAppMessage.refundTokenAmount,
            _withdrawOAppMessage.decimals,
            toDecimals
        );

        // amount should be greater than 0
        require(convertedTokenAmount > 0, "Vault: amount is zero");

        // if ether
        if (_withdrawOAppMessage.refundToken == address(0)) {
            Address.sendValue(
                payable(_withdrawOAppMessage.refundTokenReceiver),
                convertedTokenAmount
            );
        } else {
            // transfer token
            IERC20(_withdrawOAppMessage.refundToken).safeTransfer(
                _withdrawOAppMessage.refundTokenReceiver,
                convertedTokenAmount
            );
        }

        emit TokenRefund(
            _withdrawOAppMessage.refundToken,
            _withdrawOAppMessage.refundTokenAmount,
            _withdrawOAppMessage.refundTokenReceiver,
            _guid
        );

        return true;
    }

    function withdrawByWithdrawQueue(
        WithdrawOAppMessage memory _withdrawOAppMessage
    )
        external
        whenNotPaused
        onlyRole(WITHDRAW_ROLE)
        nonReentrant
        returns (bool)
    {
        return _withdraw(_withdrawOAppMessage, bytes32(0));
    }

    function receiveXCM(
        uint32 _srcEndId,
        bytes32 _xcmSender,
        bytes memory _oappMessage,
        bytes32 _guid
    ) external whenNotPaused onlySyncOApp nonReentrant returns (bool) {
        // check whether the srcEndId is whitelisted
        require(
            peerEndRegistered(_srcEndId, _xcmSender),
            "Vault: srcEnd sender not whitelisted"
        );

        // decode oappMessage
        WithdrawOAppMessage memory withdrawOAppMessage = decodeOAppMessage(
            _oappMessage
        );

        bool success = _withdraw(withdrawOAppMessage, _guid);
        return success;
    }

    // convert token decimals
    function convertTokenDecimals(
        uint256 amount,
        uint8 fromDecimals,
        uint8 toDecimals
    ) public pure returns (uint256) {
        if (fromDecimals == toDecimals) {
            return amount;
        }

        if (fromDecimals > toDecimals) {
            return amount / (10 ** (fromDecimals - toDecimals));
        }

        return amount * (10 ** (toDecimals - fromDecimals));
    }

    // set syncOApp
    function setSyncOApp(
        address _syncOApp
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        syncOApp = _syncOApp;
        emit UpdateSyncOApp(_syncOApp);
    }

    // receive
    receive() external payable {}
}
