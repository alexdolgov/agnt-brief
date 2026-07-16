// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@hyperlane-xyz/core/contracts/libs/TypeCasts.sol";
import { Router } from "@hyperlane-xyz/core/contracts/client/Router.sol";
import {
    PausableUpgradeable
} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import {
    StandardHookMetadata
} from "@hyperlane-xyz/core/contracts/hooks/libs/StandardHookMetadata.sol";
import { EzAdminL1StorageV1 } from "./EzAdminL1Storage.sol";
import { IXERC20 } from "../interfaces/IXERC20.sol";
import "../utils/Errors.sol";

contract EzAdminL1 is Router, PausableUpgradeable, EzAdminL1StorageV1 {
    using TypeCasts for bytes32;
    using TypeCasts for address;

    /// @dev Tracks proxy Admin address for L2s
    address public immutable l2ProxyAdmin;

    /// @dev Tracks proxy Admin address for HyperEVM
    address public immutable l2ProxyAdminHyperEvm;

    IXERC20 public immutable xezETH;

    /// @dev Only allows pauser and owner to change pause state
    modifier onlyOwnerOrPauser() {
        if (msg.sender != owner() && msg.sender != pauser) revert NotPauser();
        _;
    }

    /// @dev Prevents implementation contract from being initialized.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(
        address _mailbox,
        address _proxyAdminL2,
        address _proxyAdminHyperEvm,
        address _xezETH
    ) Router(_mailbox) {
        if (
            _proxyAdminL2 == address(0) ||
            _proxyAdminHyperEvm == address(0) ||
            _xezETH == address(0)
        ) revert InvalidZeroInput();
        l2ProxyAdmin = _proxyAdminL2;
        l2ProxyAdminHyperEvm = _proxyAdminHyperEvm;
        xezETH = IXERC20(_xezETH);
        _disableInitializers();
    }

    /**
     * @notice  Initializer for the EzAdminL1 contract.
     * @param   _hook  hook address for mailbox client
     * @param   _interchainSecurityModule  ISM address for mailbox client
     * @param   _owner  owner of the ezAdminL1 contract
     * @param   _sourceSender  source sender address for the router
     */
    function initialize(
        address _hook,
        address _interchainSecurityModule,
        address _owner,
        bytes32 _sourceSender,
        uint256 _destinationGasLimit
    ) external initializer {
        if (
            _owner == address(0) ||
            _sourceSender.bytes32ToAddress() == address(0) ||
            _destinationGasLimit == 0
        ) revert InvalidZeroInput();

        _MailboxClient_initialize(_hook, _interchainSecurityModule, _owner);

        // Enroll Timelock contract address as remote router
        _enrollRemoteRouter(localDomain, _sourceSender);

        // Set the destination gas limit
        destinationGasLimit = _destinationGasLimit;

        // pause the contract to config xRenzoDeposit
        _pause();
    }

    function setL1BridgeLimits(
        UpgradePayload[] calldata upgradePayload
    ) external payable whenNotPaused {
        if (upgradePayload.length == 0) revert InvalidZeroInput();
        for (uint256 i = 0; i < upgradePayload.length; ) {
            // If new limits check caller is timelock
            if (_isNewEzETHBridge(upgradePayload[i])) {
                bytes32 _router = _mustHaveRemoteRouter(localDomain);
                require(
                    _router.bytes32ToAddress() == _msgSender(),
                    "Enrolled router does not match sender"
                );
            } else {
                // if not new limits check caller is owner
                _checkOwner();
            }
            _execute(upgradePayload[i].target, upgradePayload[i].value, upgradePayload[i].payload);
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice  Sends Upgrade to L2 via mailbox
     * @dev     permissioned call only by enrolled router
     * @param   _destinationDomain  domain ID of the destination chain
     * @param   upgradePayload  calldata payload for the upgrade
     */
    function sendL2Upgrade(
        uint32 _destinationDomain,
        UpgradePayload[] calldata upgradePayload
    ) external payable whenNotPaused {
        // check if the sender is the enrolled router
        bytes32 _router = _mustHaveRemoteRouter(localDomain);
        require(
            _router.bytes32ToAddress() == _msgSender(),
            "Enrolled router does not match sender"
        );

        _sendL2UpgradeInfo(_destinationDomain, upgradePayload);
    }

    /**
     * @notice  Sends Upgrade to L2 via mailbox
     * @dev     permissioned call only by enrolled router
     * @param   _destinationDomain  domain ID of the destination chain
     * @param   configurationPayload  calldata payload for the configuration
     */
    function sendL2Configurations(
        uint32 _destinationDomain,
        UpgradePayload[] calldata configurationPayload
    ) external payable whenNotPaused onlyOwner {
        // check revert if target is the l2ProxyAdmin
        _checkConfigurations(configurationPayload);

        _sendL2UpgradeInfo(_destinationDomain, configurationPayload);
    }

    /******************************
     *  Internal functions
     *****************************/
    function _handle(uint32, bytes32, bytes calldata) internal virtual override {
        // no source chain message handling
        revert();
    }

    function _getMetadata() internal view returns (bytes memory) {
        return
            StandardHookMetadata.formatMetadata(
                0, // ETH message value
                destinationGasLimit, // gas limit for destination handle
                address(this), // refund address
                bytes("") // custom metadata
            );
    }

    /// @dev Check if the configuration payload target is the l2ProxyAdmin
    function _checkConfigurations(UpgradePayload[] calldata configurationPayload) internal view {
        uint256 configurationsLength = configurationPayload.length;
        for (uint256 i = 0; i < configurationsLength; ) {
            if (
                configurationPayload[i].target == l2ProxyAdmin ||
                configurationPayload[i].target == l2ProxyAdminHyperEvm // proxyAdmin is different on HyperEvm
            ) revert InvalidConfigurationPayload();

            unchecked {
                ++i;
            }
        }
    }

    function _isNewEzETHBridge(
        UpgradePayload calldata _configurationPayload
    ) internal view returns (bool) {
        if (_configurationPayload.target == address(xezETH)) {
            // Decode selector
            (bytes4 selector, bytes memory args) = _decodeWithSelector(
                _configurationPayload.payload
            );
            // Check if selector is setLimits
            if (selector == xezETH.setLimits.selector) {
                (address bridge, , ) = abi.decode(args, (address, uint256, uint256));
                // return true if minting and burning limits are 0, i.e. New Bridge
                return (xezETH.mintingMaxLimitOf(bridge) == 0 &&
                    xezETH.burningMaxLimitOf(bridge) == 0);
            }
        }
    }

    function _decodeWithSelector(
        bytes calldata encodedData
    ) internal pure returns (bytes4 selector, bytes memory args) {
        require(encodedData.length >= 4, "Encoded data too short for selector");
        selector = bytes4(encodedData);
        args = new bytes(encodedData.length - 4);
        for (uint i = 0; i < encodedData.length - 4; i++) {
            args[i] = encodedData[i + 4];
        }
    }

    function _sendL2UpgradeInfo(
        uint32 _destinationDomain,
        UpgradePayload[] calldata payload
    ) internal {
        // check for 0 values
        if (_destinationDomain == 0) revert InvalidZeroInput();

        // Check if the destination domain is the local domain
        if (_destinationDomain == localDomain) revert InvalidDestinationDomain();

        // get enrolled remote router address for the destination domain
        bytes32 _destinationReceiver = _mustHaveRemoteRouter(_destinationDomain);

        // get Metadata for upgrade dispatch
        bytes memory metadata = _getMetadata();

        // encode the upgrade payload
        // Include msg sender as operation sender
        bytes memory _message = abi.encode(payload, _msgSender());

        // get fee for upgrade dispatch
        uint256 fee = mailbox.quoteDispatch(
            _destinationDomain,
            _destinationReceiver,
            _message,
            metadata
        );

        // dispatch the upgrade
        bytes32 messageId = mailbox.dispatch{ value: fee }(
            _destinationDomain,
            _destinationReceiver,
            _message,
            metadata
        );

        // emit event for upgrade dispatch
        emit UpgradeDispatched(
            messageId,
            _destinationDomain,
            _destinationReceiver.bytes32ToAddress(),
            _msgSender(),
            _message
        );
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

    /**
     * @notice  Set the destination gas limit
     * @dev     permissioned call (onlyOwner)
     * @param   _destinationGasLimit  new destination gas limit
     */
    function setDestinationGasLimit(uint256 _destinationGasLimit) external onlyOwner {
        if (_destinationGasLimit == 0) revert InvalidZeroInput();
        destinationGasLimit = _destinationGasLimit;
    }
}
