// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { LibDiamond } from "../../diamond/libraries/LibDiamond.sol";
import { LibProxyDomaRecord } from "../libraries/LibProxyDomaRecord.sol";
import { IERC7786GatewaySource } from "../../interfaces/IERC7786.sol";
import { OwnershipToken } from "../../OwnershipToken.sol";
import { SyntheticToken } from "../../SyntheticToken.sol";
import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { NameUtils } from "../../utils/NameUtils.sol";

error ZeroAddress();
error ZeroAddressSigner();
error InvalidOperation(bytes32 operation);
error CrossChainSenderAlreadyAuthorized(address sender);
error CrossChainSenderNotAuthorized(address sender);
error ProtocolAdminAlreadyAuthorized(address sender);
error ProtocolAdminNotAuthorized(address sender);

event DomaSignersChanged(address[] signers);
event RegistrarSignersChanged(uint256 indexed ianaId, address[] signers);
event FeeUpdated(bytes32 indexed operation, uint256 feeUSDCents);
event TreasuryUpdated(address treasury);
event CrossChainGatewayUpdated(IERC7786GatewaySource crossChainGateway);
event OwnershipTokenUpdated(OwnershipToken ownershipToken);
event SyntheticTokenUpdated(SyntheticToken syntheticToken);
event DomaChainInfoUpdated(string domaChainId, string domaRecordAddress);
event PriceFeedUpdated(address priceFeed);
event SupportedTargetChainAdded(string targetChainId);
event SupportedTargetChainRemoved(string targetChainId);
event CrossChainSenderAdded(address indexed sender);
event CrossChainSenderRemoved(address indexed sender);
event ProtocolAdminAdded(address indexed protocolAdmin);
event ProtocolAdminRemoved(address indexed protocolAdmin);
event ForbiddenLabelsSet(string[] labels, bool forbidden);
event RegistrarCapabilitiesUpdated(uint256 indexed registrarIanaId, uint256 capabilities);

contract ProxyDomaRecordAdminFacet is Initializable {
    function initialize(
        string calldata domaChainId_,
        string calldata domaRecordAddress_,
        IERC7786GatewaySource crossChainGateway_,
        OwnershipToken ownershipToken_
    ) external initializer {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        ds.domaChainId = domaChainId_;
        ds.domaRecordAddress = domaRecordAddress_;
        ds.crossChainGateway = crossChainGateway_;
        ds.ownershipToken = ownershipToken_;
    }

    /**
     * @dev Sets list of allowed EIP-712 voucher signers for Doma Protocol.
     */
    function setDomaSigners(address[] calldata signers) external onlyOwner {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        for (uint256 i = 0; i < ds.domaSignerList.length; i++) {
            ds.domaSigners[ds.domaSignerList[i]] = false;
        }
        delete ds.domaSignerList;

        // Set new signers
        for (uint256 i = 0; i < signers.length; i++) {
            if (signers[i] == address(0)) revert ZeroAddressSigner();
            ds.domaSigners[signers[i]] = true;
            ds.domaSignerList.push(signers[i]);
        }

        emit DomaSignersChanged(signers);
    }

    function setRegistrarSigners(
        uint256 ianaId,
        address[] calldata signers
    ) external onlyProtocolAdmin {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        // Clear existing signers for this IANA ID
        address[] storage currentSigners = ds.registrarSignerList[ianaId];
        for (uint256 i = 0; i < currentSigners.length; i++) {
            delete ds.registrarSigners[currentSigners[i]];
        }
        delete ds.registrarSignerList[ianaId];

        // Set new signers
        for (uint256 i = 0; i < signers.length; i++) {
            if (signers[i] == address(0)) revert ZeroAddressSigner();
            ds.registrarSigners[signers[i]] = ianaId;
            ds.registrarSignerList[ianaId].push(signers[i]);
        }

        emit RegistrarSignersChanged(ianaId, signers);
    }

    function setCrossChainGateway(IERC7786GatewaySource crossChainGateway_) external onlyOwner {
        if (address(crossChainGateway_) == address(0)) revert ZeroAddress();
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        ds.crossChainGateway = crossChainGateway_;
        emit CrossChainGatewayUpdated(crossChainGateway_);
    }

    function setDomaChainInfo(
        string calldata domaChainId_,
        string calldata domaRecordAddress_
    ) external onlyOwner {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        ds.domaChainId = domaChainId_;
        ds.domaRecordAddress = domaRecordAddress_;
        emit DomaChainInfoUpdated(domaChainId_, domaRecordAddress_);
    }

    function setOwnershipToken(OwnershipToken ownershipToken_) external onlyOwner {
        if (address(ownershipToken_) == address(0)) revert ZeroAddress();
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        ds.ownershipToken = ownershipToken_;
        emit OwnershipTokenUpdated(ownershipToken_);
    }

    function setSyntheticToken(SyntheticToken syntheticToken_) external onlyOwner {
        if (address(syntheticToken_) == address(0)) revert ZeroAddress();
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        ds.syntheticToken = syntheticToken_;
        emit SyntheticTokenUpdated(syntheticToken_);
    }

    function setFee(bytes32 operation, uint256 feeUSDCents) external onlyOwner {
        if (!LibProxyDomaRecord._isValidOperation(operation)) {
            revert InvalidOperation(operation);
        }

        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        ds.feesUSDCents[operation] = feeUSDCents;
        emit FeeUpdated(operation, feeUSDCents);
    }

    function setTreasury(address treasury_) external onlyOwner {
        if (treasury_ == address(0)) revert ZeroAddress();
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        ds.treasury = treasury_;
        emit TreasuryUpdated(treasury_);
    }

    function setPriceFeed(AggregatorV3Interface priceFeedAddress) external onlyOwner {
        if (address(priceFeedAddress) == address(0)) revert ZeroAddress();
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        ds.priceFeed = priceFeedAddress;
        emit PriceFeedUpdated(address(priceFeedAddress));
    }

    function addSupportedTargetChain(string calldata targetChainId) external onlyOwner {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        // Check if the chain ID is already supported
        if (ds.supportedTargetChains[targetChainId]) {
            return;
        }

        // Add the chain ID to the mapping
        ds.supportedTargetChains[targetChainId] = true;

        emit SupportedTargetChainAdded(targetChainId);
    }

    function removeSupportedTargetChain(string calldata targetChainId) external onlyOwner {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        // Check if the chain ID is supported
        if (!ds.supportedTargetChains[targetChainId]) {
            return;
        }

        // Remove the chain ID from the mapping
        ds.supportedTargetChains[targetChainId] = false;

        emit SupportedTargetChainRemoved(targetChainId);
    }

    function addCrossChainSender(address sender) external onlyOwner {
        if (sender == address(0)) revert ZeroAddress();
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        if (ds.crossChainSenders[sender]) {
            revert CrossChainSenderAlreadyAuthorized(sender);
        }

        ds.crossChainSenders[sender] = true;
        emit CrossChainSenderAdded(sender);
    }

    function removeCrossChainSender(address sender) external onlyOwner {
        if (sender == address(0)) revert ZeroAddress();
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        if (!ds.crossChainSenders[sender]) {
            revert CrossChainSenderNotAuthorized(sender);
        }

        ds.crossChainSenders[sender] = false;
        emit CrossChainSenderRemoved(sender);
    }

    // Protocol Admin Management (Diamond Owner Only)
    function addProtocolAdmin(address protocolAdmin) external onlyOwner {
        if (protocolAdmin == address(0)) revert ZeroAddress();
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        if (ds.protocolAdmins[protocolAdmin]) {
            revert ProtocolAdminAlreadyAuthorized(protocolAdmin);
        }

        ds.protocolAdmins[protocolAdmin] = true;
        emit ProtocolAdminAdded(protocolAdmin);
    }

    function removeProtocolAdmin(address protocolAdmin) external onlyOwner {
        if (protocolAdmin == address(0)) revert ZeroAddress();
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        if (!ds.protocolAdmins[protocolAdmin]) {
            revert ProtocolAdminNotAuthorized(protocolAdmin);
        }

        ds.protocolAdmins[protocolAdmin] = false;
        emit ProtocolAdminRemoved(protocolAdmin);
    }

    function isProtocolAdmin(address protocolAdmin) external view returns (bool) {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        return ds.protocolAdmins[protocolAdmin];
    }

    function isCrossChainSender(address sender) external view returns (bool) {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        return ds.crossChainSenders[sender];
    }

    /**
     * @dev Returns the list of signers for a given registrar.
     * @param ianaId Registrar IANA ID.
     */
    function registrarSigners(uint256 ianaId) external view returns (address[] memory) {
        return LibProxyDomaRecord.proxyDomaRecordStorage().registrarSignerList[ianaId];
    }

    function crossChainGateway() public view returns (IERC7786GatewaySource) {
        return LibProxyDomaRecord.proxyDomaRecordStorage().crossChainGateway;
    }

    /// @notice Returns the ownership token contract address
    function ownershipToken() public view returns (OwnershipToken) {
        return LibProxyDomaRecord.proxyDomaRecordStorage().ownershipToken;
    }

    /// @notice Returns the synthetic token contract address
    function syntheticToken() public view returns (SyntheticToken) {
        return LibProxyDomaRecord.proxyDomaRecordStorage().syntheticToken;
    }

    function domaChainId() public view returns (string memory) {
        return LibProxyDomaRecord.proxyDomaRecordStorage().domaChainId;
    }

    function domaRecordAddress() public view returns (string memory) {
        return LibProxyDomaRecord.proxyDomaRecordStorage().domaRecordAddress;
    }

    function priceFeed() public view returns (AggregatorV3Interface) {
        return LibProxyDomaRecord.proxyDomaRecordStorage().priceFeed;
    }

    function treasury() public view returns (address) {
        return LibProxyDomaRecord.proxyDomaRecordStorage().treasury;
    }

    function correlationNonce() public view returns (uint256) {
        return LibProxyDomaRecord.proxyDomaRecordStorage().correlationNonce;
    }

    /**
     * @dev Returns the list of Doma signers.
     */
    function domaSigners() external view returns (address[] memory) {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        return ds.domaSignerList;
    }

    /**
     * @dev Sets forbidden status for multiple subdomain labels.
     * IMPORTANT: Labels must be provided in lowercase. The function stores them as-is
     * without conversion. Validation will be case-insensitive by converting input to lowercase
     * before checking.
     * @param labels Array of subdomain labels (must be lowercase) to set forbidden status for
     * @param forbidden True to forbid the labels, false to allow them
     */
    function setForbiddenLabels(
        string[] calldata labels,
        bool forbidden
    ) external onlyProtocolAdmin {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        for (uint256 i = 0; i < labels.length; i++) {
            NameUtils.ensureValidLabel(labels[i]);
            bytes32 labelHash = keccak256(bytes(labels[i]));
            ds.forbiddenLabels[labelHash] = forbidden;
        }

        emit ForbiddenLabelsSet(labels, forbidden);
    }

    /**
     * @dev Checks if a subdomain label is forbidden (case-insensitive).
     * @param label The subdomain label to check
     * @return True if the label is forbidden, false otherwise
     */
    function isLabelForbidden(string calldata label) external view returns (bool) {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        NameUtils.ensureValidLabel(label);
        bytes32 labelHash = keccak256(bytes(label));

        return ds.forbiddenLabels[labelHash];
    }

    /**
     * @notice Update registrar capabilities for a registrar.
     * Can only be called by protocol admin.
     * @param registrarIanaId Registrar IANA ID.
     * @param capabilities New registrar capabilities bitmask.
     */
    function updateRegistrarCapabilities(
        uint256 registrarIanaId,
        uint256 capabilities
    ) external onlyProtocolAdmin {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        ds.registrarCapabilities[registrarIanaId] = capabilities;
        emit RegistrarCapabilitiesUpdated(registrarIanaId, capabilities);
    }

    /**
     * @notice Returns registrar-level capabilities.
     * These are the capabilities supported by the registrar.
     * @param registrarIanaId Registrar IANA ID.
     * @return uint256 Registrar capabilities bitmask.
     */
    function registrarCapabilitiesOf(uint256 registrarIanaId) external view returns (uint256) {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        return ds.registrarCapabilities[registrarIanaId];
    }

    modifier onlyOwner() {
        LibDiamond.enforceIsContractOwner();
        _;
    }

    modifier onlyProtocolAdmin() {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        if (!ds.protocolAdmins[msg.sender]) {
            revert LibProxyDomaRecord.AccessControlNotAProtocolAdmin(msg.sender);
        }
        _;
    }
}
