// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IInvestorRegistryMirror, ChainInvestorAddresses} from "src/interfaces/IInvestorRegistryMirror.sol";
import {LibreUUPSUpgradeable} from "src/utils/LibreUUPSUpgradeable.sol";
import "src/utils/Constant.sol";

contract InvestorRegistryMirror is IInvestorRegistryMirror, LibreUUPSUpgradeable {
    struct InvestorRegistryMirrorStorage {
        uint16 nativeChainSelector;
        mapping(bytes32 investorId => mapping(bytes32 key => bool)) booleans;
        mapping(address wallet => bytes32 investorId) walletToInvestor;
    }

    // Key used to track if an investor ID exists in the registry
    bytes32 private constant IS_INVESTOR = keccak256("IS_INVESTOR");

    // keccak256(abi.encode(uint256(keccak256("InvestorRegistryMirror.storage")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant INVESTOR_REGISTRY_MIRROR_STORAGE_SLOT =
        0x1bf421125ec5c4ae8fc3afa72f152157b16e7c83df169fcde85f61b10e42fc00;

    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IInvestorRegistryMirror
    function initialize(uint16 _nativeChainSelector, address _gatewayAccessControl) external initializer {
        __LibreUUPSUpgradeable_init(_gatewayAccessControl);
        InvestorRegistryMirrorStorage storage irms = _getInvestorRegistryMirrorStorage();
        irms.nativeChainSelector = _nativeChainSelector;
    }

    /// @inheritdoc IInvestorRegistryMirror
    function updateInvestorAddresses(bytes calldata _investorAddresses, bytes32 uid) external {
        _checkRole(GATEWAY_ROLE, msg.sender);

        // Decode the array of ChainInvestorAddresses
        ChainInvestorAddresses[] memory chainInvestorAddresses =
            abi.decode(_investorAddresses, (ChainInvestorAddresses[]));

        for (uint256 i; i < chainInvestorAddresses.length; ++i) {
            bytes32 investorId = chainInvestorAddresses[i].investorId;
            uint16 chainSelector = chainInvestorAddresses[i].chainSelector;
            uint8 addressSize = chainInvestorAddresses[i].addressSize;
            bytes[] memory addressChanges = chainInvestorAddresses[i].addressChanges;

            for (uint256 j; j < addressChanges.length; ++j) {
                (uint8 action, bytes memory bytesWalletAddress) = _decodeAddressChange(addressChanges[j]);
                // Check if wallet address size is not equal to addressSize
                if (addressSize != 0 && bytesWalletAddress.length != addressSize) {
                    revert InvestorRegistryMirror_InvalidWalletAddress();
                }

                _updateInvestorDetails(investorId, action, chainSelector, bytesWalletAddress);

                // Emit event for each address update according to reference
                bytes[] memory addresses = new bytes[](1);
                addresses[0] = bytesWalletAddress;
                emit InvestorAddressesUpdated(uid, investorId, chainSelector, addresses, bytes1(action));
            }
        }
    }

    /// @inheritdoc IInvestorRegistryMirror
    function getNativeChainSelector() external view returns (uint16) {
        InvestorRegistryMirrorStorage storage irms = _getInvestorRegistryMirrorStorage();
        return irms.nativeChainSelector;
    }

    /// @inheritdoc IInvestorRegistryMirror
    function getInvestorIdFromAddress(address wallet) external view returns (bytes32) {
        InvestorRegistryMirrorStorage storage irms = _getInvestorRegistryMirrorStorage();
        return irms.walletToInvestor[wallet];
    }

    /// @inheritdoc IInvestorRegistryMirror
    function isValidInvestorAddress(bytes32 investorId, uint16 chainSelector, bytes calldata wallet)
        external
        view
        returns (bool)
    {
        InvestorRegistryMirrorStorage storage irms = _getInvestorRegistryMirrorStorage();
        bytes32 key = keccak256(abi.encodePacked(chainSelector, wallet));
        return irms.booleans[investorId][key];
    }

    /// @inheritdoc IInvestorRegistryMirror
    function isSameInvestorAddresses(address sender, address receiver) external view returns (bool) {
        InvestorRegistryMirrorStorage storage irms = _getInvestorRegistryMirrorStorage();
        bytes32 senderInvestorId = irms.walletToInvestor[sender];
        bytes32 receiverInvestorId = irms.walletToInvestor[receiver];

        return (senderInvestorId == receiverInvestorId) && senderInvestorId != bytes32(0) ? true : false;
    }

    /// @inheritdoc IInvestorRegistryMirror
    function isInvestor(bytes32 _investorId) external view returns (bool) {
        InvestorRegistryMirrorStorage storage irms = _getInvestorRegistryMirrorStorage();
        return irms.booleans[_investorId][IS_INVESTOR];
    }

    /**
     * @notice Retrieves decoded address change data
     * @param addressChange bytes calldata with encoded info
     * @return action update action : ADD or REMOVE
     * @return walletAddress bytesWalletAddress wallet address in bytes
     */
    function _decodeAddressChange(bytes memory addressChange)
        internal
        pure
        returns (uint8 action, bytes memory walletAddress)
    {
        // addressChange has to be at least 2 bytes long (1 byte action + at least 1 byte address)
        if (addressChange.length < 2) {
            revert InvestorRegistryMirror_InvalidWalletAddress();
        }

        // First byte determines if we're adding (0) or removing (1)
        if (addressChange[0] == 0x01) {
            action = 1;
        }

        // Remaining bytes are the wallet address
        uint256 walletLength = addressChange.length - 1;
        walletAddress = new bytes(walletLength);
        for (uint256 i; i < walletLength; ++i) {
            walletAddress[i] = addressChange[i + 1];
        }
    }

    /**
     * @notice Helper function to update investor addresses
     * @param investorId Unique ID of the investor
     * @param action update action : ADD or REMOVE
     * @param chainSelector custom ID of the chain
     * @param bytesWalletAddress wallet address to be updated in bytes
     */
    function _updateInvestorDetails(
        bytes32 investorId,
        uint8 action,
        uint16 chainSelector,
        bytes memory bytesWalletAddress
    ) internal {
        InvestorRegistryMirrorStorage storage irms = _getInvestorRegistryMirrorStorage();

        if (action == 0) {
            // action: ADD
            irms.booleans[investorId][keccak256(abi.encodePacked(chainSelector, bytesWalletAddress))] = true;
            // Mark this ID as a registered investor in the registry
            irms.booleans[investorId][IS_INVESTOR] = true;
            if (chainSelector == irms.nativeChainSelector) {
                address wallet = address(bytes20(bytesWalletAddress));
                irms.walletToInvestor[wallet] = investorId;
            }
        } else {
            //action: REMOVE
            irms.booleans[investorId][keccak256(abi.encodePacked(chainSelector, bytesWalletAddress))] = false;
            if (chainSelector == irms.nativeChainSelector) {
                address wallet = address(bytes20(bytesWalletAddress));
                delete irms.walletToInvestor[wallet];
            }
        }
    }

    /**
     * @notice Retrieves the storage slot for the `InvestorRegistryMirrorStorage` structure.
     * @return irms A reference to the `InvestorRegistryMirrorStorage` located at the predefined storage slot.
     */
    function _getInvestorRegistryMirrorStorage() private pure returns (InvestorRegistryMirrorStorage storage irms) {
        assembly {
            irms.slot := INVESTOR_REGISTRY_MIRROR_STORAGE_SLOT
        }
    }
}
