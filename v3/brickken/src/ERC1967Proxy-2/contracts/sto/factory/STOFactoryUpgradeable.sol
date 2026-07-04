/// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import {Errors} from "../helpers/Errors.sol";
import {BeaconProxy, IBeacon} from "../helpers/BeaconProxy.sol";
import {Roles} from "../helpers/Roles.sol";

import {ISTOToken} from "../interfaces/ISTOToken.sol";
import {IPriceAndSwapManager} from "../helpers/PriceAndSwapManager.sol";
import {ISTOFactoryUpgradeable} from "../interfaces/ISTOFactoryUpgradeable.sol";
import {IUniswapV2Pair, IUniswapV3Router} from "../interfaces/UniswapInterfaces.sol";

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {MathUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import {ECDSAUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";
import {AddressUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import {SafeERC20Upgradeable, IERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import {IERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20PermitUpgradeable.sol";
import {AccessControlEnumerableUpgradeable, AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";

/// @title STOFactory
/// @custom:security-contact tech@brickken.com
abstract contract STOFactoryUpgradeable is
    ISTOFactoryUpgradeable,
    Initializable,
    OwnableUpgradeable,
    PausableUpgradeable,
    UUPSUpgradeable
{
    using AddressUpgradeable for address;
    using MathUpgradeable for uint256;

    // EIP712 Domain parameters

    bytes32 public constant HASH_NAME = keccak256(bytes("OffchainReport"));
    bytes32 public constant HASH_VERSION = keccak256(bytes("1.0"));

    bytes32 private constant _OFFCHAIN_PRICE_REPORT_TYPE_HASH =
        keccak256(
            "OffchainReport(address token,uint256 tokenAmount,address spender,address issuer,uint256 deadline,uint256 nonce)"
        ); // TypeHash of EIP712 Domain
    bytes32 private constant _TYPE_HASH =
        keccak256(
            "EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"
        );

    /// Replacing old variables for immutable constants, to save gas.
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address public immutable priceAndSwapManager;
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address private immutable bkn_OLD_SLOT_2;
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address public immutable router;

    address private bkn_OLD_SLOT; // Brickken Token Address. Keep for back compatibility. Deprecated slot. Ignore.
    address public brickkenVault; // Brickken Vault Address
    address public stoBeaconToken; // Beacon Token Address
    address public stoBeaconEscrow; // Beacon Escrow Address

    uint256 private priceInBKN_OLD_SLOT; // Price of STO in BKN, this is used as a fixed amount of BKN to pay if priceInUSD is 0
    uint256 private priceInUSD_OLD_SLOT; // Price of STO in USD, used to calculate how many BKNs are charged based on oracle price
    uint256 public idSTOs; // STO ID

    // Mapping of STOTokens and STOEscrows addresses to their respective STO IDs
    mapping(uint256 id => address tokenAddress) public stoTokens;
    mapping(uint256 id => address escrowAddress) public stoEscrows;
    mapping(address whitelistedAddress => bool status)
        internal whitelist_OLD_SLOT; // Keep for back compatibility. Deprecated slot. Ignore.
    mapping(address => uint256) private _nonces;

    uint256 private bknPriceTWAPInterval_OLD_SLOT; // Time window used to invalidate the BKN price from the liquidity pool

    /// @custom:oz-upgrades-unsafe-allow constructor
    /// @dev constructor to set immutable values
    constructor(address _router, address _priceAndSwapManager) {
        if (_router == address(0)) revert Errors.NotZeroAddress();

        bkn_OLD_SLOT_2 = address(0);
        router = _router;
        priceAndSwapManager = _priceAndSwapManager;
        _disableInitializers();
    }

    /// @dev Public method to calculate how much fees are going to be paid
    /// @param offchainReport offchain report
    /// @return amountToPay amount of tokens to be paid and signer address
    function getFees(
        OffchainReport calldata offchainReport
    ) public view returns (uint256 amountToPay, address signer) {
        signer = _validateOffchainReport(offchainReport);
        amountToPay = offchainReport.tokenAmount;
    }

    /// @dev get the implementation address behind the proxy
    /// @return the implementation address
    function getImplementation() external view returns (address) {
        return _getImplementation();
    }

    function nonces(address owner) external view returns (uint256) {
        return _nonces[owner];
    }

    // INTERNAL / PRIVATE FUNCTIONS

    /// @dev Internal method initialize the contract. To be called by a parent contract.
    function __STOFactory_init() internal {
        __Ownable_init();
        __Pausable_init();
        __UUPSUpgradeable_init();
    }

    /// @dev Method to change configured parameters within the contract.
    /// @param vault this will change where fees are sent
    /// @param beaconToken this will change the beacon token used for new tokenizations
    /// @param beaconEscrow this will change the beacon escrow used for new tokenizations
    function _changeConfig(
        address vault,
        address beaconToken,
        address beaconEscrow
    ) internal {
        if (
            vault == address(0) ||
            beaconToken == address(0) ||
            beaconEscrow == address(0)
        ) revert Errors.NotZeroAddress();

        brickkenVault = vault;
        stoBeaconToken = beaconToken;
        stoBeaconEscrow = beaconEscrow;
    }

    /// @dev Method to deploy a new tokenization (escrow + token)
    /// @param config Configuration of the token to be deployed
    /// @param offchainReport the offchain report struct
    /// @param permit the permit signature struct if any
    /// @param admin Who is going to be the DEFAULT_ADMIN_ROLE account both for escrow and token
    /// @return addresses of escrow and token
    function _newTokenization(
        TokenizationConfig calldata config,
        OffchainReport calldata offchainReport,
        PermitStruct calldata permit,
        address admin
    ) internal returns (address, address) {
        {
            _chargeFee(offchainReport, permit);

            uint256 length = config.preMints.length;

            if (config.initialHolders.length != length)
                revert Errors.LengthsMismatch();

            uint256 totalPremint;

            for (uint256 i = 0; i < length; ) {
                totalPremint += config.preMints[i];
                unchecked {
                    ++i;
                }
            }

            if (config.supplyCap != 0 && totalPremint > config.supplyCap)
                revert Errors.PremintGreaterThanMaxSupply();

            // Due to Checkpoints feature, uint224.max is the max supply
            if (totalPremint > type(uint224).max)
                revert Errors.SupplyCapExceeded();

            ++idSTOs;
        }

        stoTokens[idSTOs] = address(
            new BeaconProxy(
                stoBeaconToken,
                admin,
                abi.encodeWithSignature(
                    "initialize((string,string,string,uint224,address,address,bool,uint256[],address[]),address,address,uint8)",
                    config,
                    offchainReport.issuer,
                    admin,
                    2
                )
            )
        );

        stoEscrows[idSTOs] = address(
            new BeaconProxy(
                stoBeaconEscrow,
                admin,
                abi.encodeWithSignature(
                    "initialize(address,address,address,address,address,address,bool,address,address,uint8)",
                    stoTokens[idSTOs],
                    offchainReport.issuer,
                    admin,
                    config.paymentToken,
                    router,
                    config.paymentTokenOracle,
                    config.paymentTokenOracleUnused,
                    brickkenVault,
                    priceAndSwapManager,
                    2
                )
            )
        );

        IPriceAndSwapManager(priceAndSwapManager).setAllowed(
            stoEscrows[idSTOs],
            true
        );

        return (stoTokens[idSTOs], stoEscrows[idSTOs]);
    }

    /// @dev Internal method to charge the fee given the offchain report.
    /// @param offchainReport the offchain report struct
    function _chargeFee(
        OffchainReport calldata offchainReport,
        PermitStruct calldata permit
    ) internal {
        (uint256 amountToPay, address signer) = getFees(offchainReport);
        _useNonce(signer);
        address tokenAddress = offchainReport.token;

        /// Finally is there any positive amount of BKN to be transferred, transfer them
        if (amountToPay > 0) {
            if (permit.deadline > 0)
                IERC20PermitUpgradeable(tokenAddress).permit(
                    permit.signer,
                    permit.spender,
                    permit.amount,
                    permit.deadline,
                    permit.v,
                    permit.r,
                    permit.s
                );

            SafeERC20Upgradeable.safeTransferFrom(
                IERC20Upgradeable(tokenAddress),
                offchainReport.spender,
                brickkenVault,
                amountToPay
            );

            emit ChargeFee(offchainReport.spender, tokenAddress, amountToPay);
        }
    }

    /// @dev Method to validate the offchain report
    /// @param offchainReport Configuration of the offchain report
    function _validateOffchainReport(
        OffchainReport memory offchainReport
    ) internal view virtual returns (address signer) {
        uint256 deadline = offchainReport.deadline;
        if (block.timestamp > deadline) {
            revert Errors.ExpiredSignature(deadline, block.timestamp);
        }

        bytes32 structHash = keccak256(
            abi.encode(
                _OFFCHAIN_PRICE_REPORT_TYPE_HASH,
                offchainReport.token,
                offchainReport.tokenAmount,
                offchainReport.spender,
                offchainReport.issuer,
                deadline,
                offchainReport.nonce
            )
        );

        bytes32 hash = _hashTypedDataV4(structHash);

        signer = ECDSAUpgradeable.recover(hash, offchainReport.signature);
    }

    /// INTERNAL FUNCTIONS FOR EIP712 DOMAIN

    function _hashTypedDataV4(
        bytes32 structHash
    ) internal view virtual returns (bytes32) {
        return
            ECDSAUpgradeable.toTypedDataHash(_domainSeparatorV4(), structHash);
    }

    function _domainSeparatorV4() internal view returns (bytes32) {
        return _buildDomainSeparator(_TYPE_HASH, HASH_NAME, HASH_VERSION);
    }

    function _buildDomainSeparator(
        bytes32 typeHash,
        bytes32 nameHash,
        bytes32 versionHash
    ) private view returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    typeHash,
                    nameHash,
                    versionHash,
                    block.chainid,
                    address(this)
                )
            );
    }

    function _useNonce(address owner) internal returns (uint256) {
        // For each account, the nonce has an initial value of 0, can only be incremented by one, and cannot be
        // decremented or reset. This guarantees that the nonce never overflows.
        unchecked {
            // It is important to do x++ and not ++x here.
            return _nonces[owner]++;
        }
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[38] private __gap;
}
