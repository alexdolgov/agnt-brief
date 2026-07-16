// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@hyperlane-xyz/core/contracts/libs/TypeCasts.sol";
import { Router } from "@hyperlane-xyz/core/contracts/client/Router.sol";
import {
    PausableUpgradeable
} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import { EzAdminL2StorageV1 } from "./EzAdminL2Storage.sol";
import { IXERC20 } from "../interfaces/IXERC20.sol";
import "../utils/Errors.sol";

contract EzAdminL2 is Router, PausableUpgradeable, EzAdminL2StorageV1 {
    using TypeCasts for bytes32;

    address public immutable L1_TIMELOCK;

    IXERC20 public immutable xezETH;

    /// @dev Only allows pauser and owner to change pause state
    modifier onlyOwnerOrPauser() {
        if (msg.sender != owner() && msg.sender != pauser) revert NotPauser();
        _;
    }

    /// @dev Prevents implementation contract from being initialized.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address _mailbox, address _l1Timelock, address _xezETH) Router(_mailbox) {
        if (_l1Timelock == address(0) || _xezETH == address(0)) revert InvalidZeroInput();
        xezETH = IXERC20(_xezETH);
        L1_TIMELOCK = _l1Timelock;
        _disableInitializers();
    }

    /// @dev Initializes the contract
    function initialize(
        address _hook,
        address _interchainSecurityModule,
        address _owner,
        uint32 _sourceDomain,
        bytes32 _sourceSender
    ) external initializer {
        if (
            _owner == address(0) ||
            _sourceSender.bytes32ToAddress() == address(0) ||
            _sourceDomain == 0
        ) revert InvalidZeroInput();

        _MailboxClient_initialize(_hook, _interchainSecurityModule, _owner);

        // Enroll sender contract address as remote router
        _enrollRemoteRouter(_sourceDomain, _sourceSender);

        // pause the contract to config xRenzoDeposit
        _pause();
    }

    /******************************
     *  Internal functions
     *****************************/
    function _handle(
        uint32 _origin,
        bytes32 _sender,
        bytes calldata _message
    ) internal virtual override {
        _requireNotPaused();

        (UpgradePayload[] memory upgradePayload, address operationSender) = abi.decode(
            _message,
            (UpgradePayload[], address)
        );
        uint256 upgradesLength = upgradePayload.length;
        for (uint256 i = 0; i < upgradesLength; ) {
            // Execute the call
            _checkNewEzETHBridgeLimits(upgradePayload[i], operationSender);

            _execute(upgradePayload[i].target, upgradePayload[i].value, upgradePayload[i].payload);
            unchecked {
                ++i;
            }
        }

        emit UpgradeExecuted(_origin, _sender.bytes32ToAddress(), _message);
    }

    function _checkNewEzETHBridgeLimits(
        UpgradePayload memory _configurationPayload,
        address _sender
    ) internal view {
        // Check if target is xezETH
        if (_configurationPayload.target == address(xezETH)) {
            // Decode selector
            (bytes4 selector, bytes memory args) = _decodeWithSelector(
                _configurationPayload.payload
            );
            // Check if selector is setLimits
            if (selector == xezETH.setLimits.selector) {
                (address bridge, , ) = abi.decode(args, (address, uint256, uint256));
                // check if minting and bruning limits are 0, i.e. New Bridge and sender is not Timelock
                if (
                    xezETH.mintingMaxLimitOf(bridge) == 0 &&
                    xezETH.burningMaxLimitOf(bridge) == 0 &&
                    _sender != L1_TIMELOCK
                ) revert UnAuthorizedCall();
            }
        }
    }

    function _decodeWithSelector(
        bytes memory encodedData
    ) internal pure returns (bytes4 selector, bytes memory args) {
        if (encodedData.length >= 4) {
            selector = bytes4(encodedData);
            args = new bytes(encodedData.length - 4);
            for (uint i = 0; i < encodedData.length - 4; i++) {
                args[i] = encodedData[i + 4];
            }
        }
    }

    /**
     * @dev Execute an operation's call.
     */
    function _execute(address target, uint256 value, bytes memory data) internal virtual {
        (bool success, ) = target.call{ value: value }(data);
        if (!success) revert CallFailed(target, value, data);
    }

    /******************************
     *  Admin/OnlyOwner functions
     *****************************/

    /**
     * @notice  Update pauser address
     * @dev     permissioned call (onlyOwner)
     * @param   _pauser  new pauser address
     */
    function setPauser(address _pauser) external onlyOwner {
        if (_pauser == address(0)) revert InvalidZeroInput();
        emit PauserUpdated(pauser, _pauser);
        pauser = _pauser;
    }

    /**
     * @notice Pause the contract
     * @dev This should be a permissioned call (onlyOwner)
     */
    function unPause() external onlyOwnerOrPauser {
        _unpause();
    }

    /**
     * @notice UnPause the contract
     * @dev This should be a permissioned call (onlyOwner)
     */
    function pause() external onlyOwnerOrPauser {
        _pause();
    }
}
