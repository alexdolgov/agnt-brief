// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {Initializable} from "@openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ClonesUpgradeable} from "@openzeppelin-contracts-upgradeable/proxy/ClonesUpgradeable.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {IVaultFactory} from "./interfaces/IVaultFactory.sol";
import {IPortal, IPortalTypes, IPortalCommonTypes} from "./interfaces/IPortal.sol";
import {IVaultPortal} from "./interfaces/IVaultPortal.sol";

/// @title VaultPortal
/// @notice Manages different vault types through a factory pattern for tax tokens
/// @dev Upgradeable contract using Transparent Proxy pattern
contract VaultPortal is Initializable, AccessControlUpgradeable, IVaultPortal {
    using SafeERC20 for IERC20;

    /// @notice Role that can manage vault factories
    bytes32 public constant VAULT_ADMIN_ROLE = keccak256("VAULT_ADMIN_ROLE");

    /// @notice Role that can register adapters and submit audit reports
    bytes32 public constant AUDITOR_ROLE = keccak256("AUDITOR_ROLE");

    /// @notice Vanity suffix for tax tokens (0x7777)
    uint256 public immutable TAX_TOKEN_SUFFIX;

    /// @notice The Portal contract address (immutable)
    address public immutable PORTAL;

    /// @notice The tax token V1 implementation address (immutable)
    address public immutable TOKEN_IMPL_TAXED;

    /// @notice The tax token V2 implementation address (immutable)
    address public immutable TOKEN_IMPL_TAXED_V2;

    /// @notice Mapping from vault factory address to VaultFactoryInfo
    mapping(address => VaultFactoryInfo) public vaultFactories;

    /// @notice Mapping from tax token address to VaultedTaxTokenInfo
    mapping(address => VaultedTaxTokenInfo) internal taxVaults;

    /// @notice Mapping from tax token address to array of audit reports
    mapping(address => AuditReport[]) internal auditReports;

    /// @notice Mapping from vault factory address to array of audit reports
    mapping(address => AuditReport[]) internal factoryAuditReports;

    /// @notice Constructor to set immutable variables
    /// @param portal The Portal contract address (for BNB chain: 0xe2cE6ab80874Fa9Fa2aAE65D277Dd6B8e65C9De0)
    /// @param _tokenImplTaxed The tax token V1 implementation address (must get from Portal)
    /// @param _tokenImplTaxedV2 The tax token V2 implementation address
    /// @param _taxTokenSuffix The vanity suffix for tax tokens (e.g., 0x7777)
    constructor(address portal, address _tokenImplTaxed, address _tokenImplTaxedV2, uint256 _taxTokenSuffix) {
        if (portal == address(0)) {
            revert ZeroPortalAddress();
        }
        if (_tokenImplTaxed == address(0)) {
            revert ZeroTokenImplAddress();
        }
        if (_tokenImplTaxedV2 == address(0)) {
            revert ZeroTokenImplAddress();
        }

        PORTAL = portal;
        TOKEN_IMPL_TAXED = _tokenImplTaxed;
        TOKEN_IMPL_TAXED_V2 = _tokenImplTaxedV2;
        TAX_TOKEN_SUFFIX = _taxTokenSuffix;

        _disableInitializers();
    }

    /// @notice Initialize the contract
    /// @dev Grants DEFAULT_ADMIN_ROLE and VAULT_ADMIN_ROLE to deployer
    function initialize() external initializer {
        __AccessControl_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(VAULT_ADMIN_ROLE, msg.sender);
    }

    /// @notice Get the version of this contract
    /// @return The version string
    function version() external pure returns (string memory) {
        // v1.1.0:
        // - Allow any vault factory to be used with newTaxTokenWithVault.
        //   Unregistered or disabled factories are treated as unofficial with UNVERIFIED risk level.
        return "1.1.0";
    }

    /// @notice Create a new tax token with vault
    /// @dev Any vault factory can be used. If the factory is not registered or is disabled,
    ///      the vault will be treated as unofficial with UNVERIFIED risk level
    /// @param params The parameters for creating the tax token with vault
    /// @return token The address of the newly created tax token
    function newTaxTokenWithVault(NewTaxTokenWithVaultParams calldata params)
        external
        payable
        returns (address token)
    {
        // Validate tax rate (must be > 0 and <= 1000 which is 10%)
        if (params.taxRate == 0 || params.taxRate > 1000) {
            revert InvalidTaxRate(params.taxRate);
        }

        // Only support BNB (address(0)) as quote token for now
        if (params.quoteToken != address(0)) {
            revert UnsupportedQuoteToken(params.quoteToken);
        }

        // Validate mktBps
        if (params.mktBps == 0) {
            revert InvalidMktBps();
        }

        // Look up vault factory info (unregistered/disabled factories are treated as unverified)
        VaultFactoryInfo storage factoryInfo = vaultFactories[params.vaultFactory];
        bool isRegisteredAndEnabled = factoryInfo.enabled;

        // Predict the tax token address
        address impl = params.mktBps == 10000 ? TOKEN_IMPL_TAXED : TOKEN_IMPL_TAXED_V2;
        address predictedToken = ClonesUpgradeable.predictDeterministicAddress(impl, params.salt, PORTAL);

        // Verify vanity ending (last 2 bytes must match TAX_TOKEN_SUFFIX)
        if ((uint256(uint160(predictedToken)) & 0xFFFF) != TAX_TOKEN_SUFFIX) {
            revert InvalidVanity(predictedToken);
        }

        // Clean upper dirty bits
        predictedToken = address(uint160(uint256(uint160(predictedToken))));

        // Call factory's newVault method with predicted token address
        address vault =
            IVaultFactory(params.vaultFactory).newVault(predictedToken, params.quoteToken, msg.sender, params.vaultData);

        // Create the tax token with the vault address as the beneficiary using Portal's newTokenV5
        IPortalTypes.NewTokenV5Params memory tokenParams = IPortalTypes.NewTokenV5Params({
            name: params.name,
            symbol: params.symbol,
            meta: params.meta,
            dexThresh: params.dexThresh,
            salt: params.salt,
            taxRate: params.taxRate,
            migratorType: params.migratorType,
            quoteToken: params.quoteToken,
            quoteAmt: params.quoteAmt,
            beneficiary: vault,
            permitData: params.permitData,
            extensionID: params.extensionID,
            extensionData: params.extensionData,
            dexId: params.dexId,
            lpFeeProfile: params.lpFeeProfile,
            taxDuration: params.taxDuration,
            antiFarmerDuration: params.antiFarmerDuration,
            mktBps: params.mktBps,
            deflationBps: params.deflationBps,
            dividendBps: params.dividendBps,
            lpBps: params.lpBps,
            minimumShareBalance: params.minimumShareBalance
        });

        token = IPortal(PORTAL).newTokenV5{value: msg.value}(tokenParams);

        // Ensure the token address matches the predicted address
        if (token != predictedToken) {
            revert TokenAddressMismatch();
        }

        // Store the vault info in the mapping
        // If factory is registered and enabled, inherit official and riskLevel from factory
        // Otherwise, treat as unofficial with UNVERIFIED risk level
        taxVaults[token] = VaultedTaxTokenInfo({
            vault: vault,
            isOfficial: isRegisteredAndEnabled ? factoryInfo.official : false,
            riskLevel: isRegisteredAndEnabled ? factoryInfo.riskLevel : RiskLevel.UNVERIFIED,
            reserved0: bytes10(0),
            vaultFactory: params.vaultFactory,
            reserved1: bytes12(0),
            adapter: address(0),
            reserved2: bytes12(0)
        });

        // If quoteAmt > 0, transfer bought tokens to msg.sender
        if (params.quoteAmt > 0) {
            uint256 tokenBalance = IERC20(token).balanceOf(address(this));
            if (tokenBalance > 0) {
                IERC20(token).safeTransfer(msg.sender, tokenBalance);
            }
        }

        // Sweep any BNB refund back to msg.sender
        uint256 bnbBalance = address(this).balance;
        if (bnbBalance > 0) {
            (bool success,) = msg.sender.call{value: bnbBalance}("");
            if (!success) {
                revert BnbTransferFailed();
            }
        }

        // Emit event
        emit FlapTaxVaultTokenCreated(token, vault, params.vaultFactory);

        return token;
    }

    /// @notice Predict the tax token V1 address
    /// @param salt The salt for deterministic deployment
    /// @return predictedAddress The predicted tax token address
    function predictTaxTokenV1Address(bytes32 salt) external view returns (address predictedAddress) {
        // Use ClonesUpgradeable.predictDeterministicAddress
        address predicted = ClonesUpgradeable.predictDeterministicAddress(TOKEN_IMPL_TAXED, salt, PORTAL);

        // Clean upper dirty bits
        predictedAddress = address(uint160(uint256(uint160(predicted))));
    }

    /// @notice Get vault info for a tax token
    /// @param taxToken The tax token address
    /// @return info The vault info
    function getVault(address taxToken) external view returns (VaultInfo memory info) {
        VaultedTaxTokenInfo storage vaultInfo = taxVaults[taxToken];

        if (vaultInfo.vault == address(0)) {
            revert VaultNotFound(taxToken);
        }

        // Check if adapter exists first, use it to get description
        address descriptionSource = vaultInfo.adapter != address(0) ? vaultInfo.adapter : vaultInfo.vault;

        // Get description from vault or adapter
        (bool success, bytes memory result) = descriptionSource.staticcall(abi.encodeWithSignature("description()"));

        string memory desc = "";
        if (success && result.length > 0) {
            desc = abi.decode(result, (string));
        }

        return VaultInfo({
            vault: vaultInfo.vault,
            vaultFactory: vaultInfo.vaultFactory,
            description: desc,
            isOfficial: vaultInfo.isOfficial,
            riskLevel: vaultInfo.riskLevel
        });
    }

    /// @notice Try to get vault info for a tax token
    /// @param taxToken The tax token address
    /// @dev mainly for unified access from UI side
    /// @return found Whether the vault was found
    /// @return info The vault info
    function tryGetVault(address taxToken) external view returns (bool found, VaultInfo memory info) {
        VaultedTaxTokenInfo storage vaultInfo = taxVaults[taxToken];

        // First check if vault exists in mapping
        if (vaultInfo.vault != address(0)) {
            // Check if adapter exists first, use it to get description
            address descriptionSource = vaultInfo.adapter != address(0) ? vaultInfo.adapter : vaultInfo.vault;

            // Get description from vault or adapter
            (bool descSuccess, bytes memory descResult) =
                descriptionSource.staticcall(abi.encodeWithSignature("description()"));

            string memory desc = "";
            if (descSuccess && descResult.length > 0) {
                desc = abi.decode(descResult, (string));
            }

            return (
                true,
                VaultInfo({
                    vault: vaultInfo.vault,
                    vaultFactory: vaultInfo.vaultFactory,
                    description: desc,
                    isOfficial: vaultInfo.isOfficial,
                    riskLevel: vaultInfo.riskLevel
                })
            );
        }

        // Fallback search: Try to find vault from Portal
        address potentialVault = _findVaultFromPortal(taxToken);

        // If vault found, verify it's a contract before returning
        if (potentialVault != address(0) && _isContract(potentialVault)) {
            (bool descSuccess, bytes memory descResult) =
                potentialVault.staticcall(abi.encodeWithSignature("description()"));

            string memory desc = "";
            if (descSuccess && descResult.length > 0) {
                desc = abi.decode(descResult, (string));
            }

            // Fallback always returns false for isOfficial and UNVERIFIED riskLevel, and zero address for vaultFactory
            return (
                true,
                VaultInfo({
                    vault: potentialVault,
                    vaultFactory: address(0),
                    description: desc,
                    isOfficial: false,
                    riskLevel: RiskLevel.UNVERIFIED
                })
            );
        }

        // Not found
        return (
            false,
            VaultInfo({
                vault: address(0),
                vaultFactory: address(0),
                description: "",
                isOfficial: false,
                riskLevel: RiskLevel.UNVERIFIED
            })
        );
    }

    /// @notice Register or update a vault factory
    /// @param factory The vault factory address
    /// @param enabled Whether the factory is enabled
    /// @param official Whether vaults from this factory are official
    /// @param riskLevel The risk level classification for vaults from this factory
    function registerVaultFactory(address factory, bool enabled, bool official, RiskLevel riskLevel)
        external
        onlyRole(VAULT_ADMIN_ROLE)
    {
        vaultFactories[factory] =
            VaultFactoryInfo({enabled: enabled, official: official, riskLevel: riskLevel, reserved: bytes29(0)});

        emit FlapTaxVaultFactoryRegistered(factory, enabled, official, riskLevel);
    }

    /// @notice Register an adapter for a legacy tax token vault
    /// @param taxToken The tax token address
    /// @param adapter The adapter contract address
    function registerAdapter(address taxToken, address adapter) external onlyRole(AUDITOR_ROLE) {
        VaultedTaxTokenInfo storage vaultInfo = taxVaults[taxToken];

        // If vault doesn't exist, try to find it from Portal
        if (vaultInfo.vault == address(0)) {
            address potentialVault = _findVaultFromPortal(taxToken);
            if (potentialVault == address(0) || !_isContract(potentialVault)) {
                revert TokenNotFound(taxToken);
            }
            // Initialize vault info with default values
            vaultInfo.vault = potentialVault;
        }

        // Set the adapter
        vaultInfo.adapter = adapter;

        emit AdapterRegistered(taxToken, adapter);
    }

    /// @notice Submit a new audit report for a tax token
    /// @param taxToken The tax token address
    /// @param riskLevel The risk level classification from this audit
    /// @param ipfsCid The IPFS CID of the audit report
    function submitAuditReport(address taxToken, RiskLevel riskLevel, string calldata ipfsCid)
        external
        onlyRole(AUDITOR_ROLE)
    {
        VaultedTaxTokenInfo storage vaultInfo = taxVaults[taxToken];

        // If vault doesn't exist, try to find it from Portal
        if (vaultInfo.vault == address(0)) {
            address potentialVault = _findVaultFromPortal(taxToken);
            if (potentialVault == address(0) || !_isContract(potentialVault)) {
                revert TokenNotFound(taxToken);
            }
            // Initialize vault info with default values
            vaultInfo.vault = potentialVault;
        }

        // Update the risk level
        vaultInfo.riskLevel = riskLevel;

        // Create and store the audit report
        auditReports[taxToken].push(AuditReport({auditor: msg.sender, riskLevel: riskLevel, ipfsCid: ipfsCid}));

        emit AuditReportSubmitted(taxToken, msg.sender, riskLevel, ipfsCid);
    }

    /// @notice Submit a new audit report for a vault factory
    /// @param factory The vault factory address
    /// @param riskLevel The risk level classification from this audit
    /// @param ipfsCid The IPFS CID of the audit report
    function submitFactoryAuditReport(address factory, RiskLevel riskLevel, string calldata ipfsCid)
        external
        onlyRole(VAULT_ADMIN_ROLE)
    {
        // Ensure the factory is registered and enabled
        if (!vaultFactories[factory].enabled) {
            revert VaultFactoryNotRegistered(factory);
        }

        // Create and store the audit report for the factory
        factoryAuditReports[factory].push(AuditReport({auditor: msg.sender, riskLevel: riskLevel, ipfsCid: ipfsCid}));

        emit FactoryAuditReportSubmitted(factory, msg.sender, riskLevel, ipfsCid);
    }

    /// @notice Get recent audit reports for a tax token with pagination
    /// @param taxToken The tax token address
    /// @param offset The number of reports to skip from the end (0 = most recent)
    /// @param limit The maximum number of reports to return
    /// @return reports The array of audit reports
    /// @return total The total number of audit reports for this token
    function getAuditReports(address taxToken, uint256 offset, uint256 limit)
        external
        view
        returns (AuditReport[] memory reports, uint256 total)
    {
        AuditReport[] storage tokenReports = auditReports[taxToken];
        AuditReport[] storage activeReports;

        // If the token has audit reports, use them; otherwise fall back to factory reports
        if (tokenReports.length > 0) {
            activeReports = tokenReports;
            total = tokenReports.length;
        } else {
            VaultedTaxTokenInfo storage vaultInfo = taxVaults[taxToken];
            if (vaultInfo.vaultFactory != address(0)) {
                activeReports = factoryAuditReports[vaultInfo.vaultFactory];
                total = activeReports.length;
            } else {
                // No reports available
                return (new AuditReport[](0), 0);
            }
        }

        // If offset is beyond the array, return empty
        if (offset >= total) {
            return (new AuditReport[](0), total);
        }

        // Calculate the number of reports to return
        uint256 remaining = total - offset;
        uint256 count = remaining < limit ? remaining : limit;

        // Create the result array
        reports = new AuditReport[](count);

        // Fill the array from the end (most recent first)
        for (uint256 i = 0; i < count; i++) {
            reports[i] = activeReports[total - 1 - offset - i];
        }

        return (reports, total);
    }

    /// @notice Allow the contract to receive ETH refunds from Portal
    receive() external payable {}

    /// @notice Find vault address from Portal for a given tax token
    /// @param taxToken The tax token address
    /// @return vault The vault address, or address(0) if not found
    function _findVaultFromPortal(address taxToken) internal view returns (address vault) {
        // Get token from Portal
        (bool success, bytes memory result) =
            PORTAL.staticcall(abi.encodeWithSignature("getTokenV6(address)", taxToken));

        if (!success || result.length == 0) {
            return address(0);
        }

        IPortalTypes.TokenStateV6 memory state = abi.decode(result, (IPortalTypes.TokenStateV6));

        // For TOKEN_TAXED (v1): get tax splitter, then beneficiary
        if (state.tokenVersion == IPortalTypes.TokenVersion.TOKEN_TAXED) {
            // Get tax splitter address
            (bool splitterSuccess, bytes memory splitterResult) =
                taxToken.staticcall(abi.encodeWithSignature("taxSplitter()"));

            if (splitterSuccess && splitterResult.length > 0) {
                address taxSplitter = abi.decode(splitterResult, (address));

                // Get beneficiary from tax splitter
                (bool beneficiarySuccess, bytes memory beneficiaryResult) =
                    taxSplitter.staticcall(abi.encodeWithSignature("beneficiary()"));

                if (beneficiarySuccess && beneficiaryResult.length > 0) {
                    vault = abi.decode(beneficiaryResult, (address));
                }
            }
        }
        // For TOKEN_TAXED_V2 (v2): get tax processor, check marketBps > 0, then get marketAddress
        else if (state.tokenVersion == IPortalTypes.TokenVersion.TOKEN_TAXED_V2) {
            // Get tax processor address
            (bool processorSuccess, bytes memory processorResult) =
                taxToken.staticcall(abi.encodeWithSignature("taxProcessor()"));

            if (processorSuccess && processorResult.length > 0) {
                address taxProcessor = abi.decode(processorResult, (address));

                // Get feeConfig from tax processor
                (bool configSuccess, bytes memory configResult) =
                    taxProcessor.staticcall(abi.encodeWithSignature("feeConfig()"));

                if (configSuccess && configResult.length > 0) {
                    // Decode PackedFeeConfig struct (marketBps, deflationBps, lpBps, dividendBps, feeRate, isWeth)
                    (uint16 marketBps,,,,,) = abi.decode(configResult, (uint16, uint16, uint16, uint16, uint16, bool));

                    if (marketBps > 0) {
                        // Get marketAddress from tax processor
                        (bool marketSuccess, bytes memory marketResult) =
                            taxProcessor.staticcall(abi.encodeWithSignature("marketAddress()"));

                        if (marketSuccess && marketResult.length > 0) {
                            vault = abi.decode(marketResult, (address));
                        }
                    }
                }
            }
        }

        return vault;
    }

    /// @notice Check if an address is a contract (excluding EIP-7702 delegated EOAs)
    /// @param account The address to check
    /// @return True if the address is a contract, false if it's an EOA or EIP-7702 delegated account
    function _isContract(address account) internal view returns (bool) {
        // Check if account has code
        if (account.code.length == 0) {
            return false;
        }

        // Check for EIP-7702 delegation indicator (0xef0100)
        // EIP-7702 delegated accounts start with this prefix
        if (account.code.length >= 3) {
            bytes memory code = account.code;
            if (code[0] == 0xef && code[1] == 0x01 && code[2] == 0x00) {
                return false;
            }
        }

        return true;
    }
}
