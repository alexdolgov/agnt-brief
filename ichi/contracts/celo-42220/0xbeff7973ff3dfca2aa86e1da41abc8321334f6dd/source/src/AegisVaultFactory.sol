// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.7.6;
pragma abicoder v2;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Clones } from "@openzeppelin/contracts/proxy/Clones.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { ICHIVaultFactory } from "@ichifarm/ichi-vaults/contracts/ICHIVaultFactory.sol";

import { IICHIVault } from "./interfaces/external/ichi/IICHIVault.sol";

import "./base/Constants.sol";
import { PctMath } from "./utils/PctMath.sol";

import { AegisVault } from "./AegisVault.sol";
import { AegisVaultERC20 } from "./AegisVaultERC20.sol";

import "./interfaces/factory/IAegisVaultFactoryState.sol";
import "./interfaces/factory/IAegisVaultFactoryImmutables.sol";
import "./interfaces/factory/IAegisVaultFactoryOwnerActions.sol";
import { IAegisVaultFactory } from "./interfaces/IAegisVaultFactory.sol";

/// @title Aegis Vault Factory
/// @notice This contract is responsible for deploying and managing Aegis vaults
/// @dev Aegis vaults are built on top of ICHI vaults, which are themselves built on Uniswap V3 pools
///
/// Each Aegis vault interacts with two ICHI vaults:
/// 1. A depositVault that accepts deposits in the depositToken
/// 2. A targetVault that accepts deposits in the targetToken
///
/// Error Codes:
///     IIN - Invalid input
///     IVL - Invalid vault
///     MIS - Mismatched vaults
///     VID - Identical vaults
///     WVF - Wrong vault factory
///     WDT - Wrong deposit token
///     ZAD - Zero address
contract AegisVaultFactory is IAegisVaultFactory, ReentrancyGuard, Ownable {
    using Clones for address;

    /// @inheritdoc IAegisVaultFactoryImmutables
    string public override ammName;

    /// @inheritdoc IAegisVaultFactoryImmutables
    address public immutable override ichiVaultFactory;

    /// @inheritdoc IAegisVaultFactoryImmutables
    IQuoter public immutable override quoter;

    /// @inheritdoc IAegisVaultFactoryImmutables
    address public immutable override aegisVaultImplementation;

    /// @inheritdoc IAegisVaultFactoryImmutables
    address public immutable override aegisVaultERC20Implementation;

    /// @inheritdoc IAegisVaultFactoryState
    address public override defaultFeeRecipient;

    /// @inheritdoc IAegisVaultFactoryState
    uint256 public override defaultBaseFee;

    /// @inheritdoc IAegisVaultFactoryState
    mapping(address => address[]) public override allVaultsForDepositToken;

    /// @inheritdoc IAegisVaultFactoryState
    address[] public override allVaults;

    /// @notice Creates an instance of AegisVaultFactory
    /// @param _ichiVaultFactory Address of the ICHIVaultFactory contract
    /// @param _quoter Address of the Uniswap V3 quoter contract
    /// @param _aegisVaultImplementation Address of the AegisVault implementation contract
    /// @param _aegisVaultERC20Implementation Address of the AegisVaultERC20 implementation contract
    /// @param _ammName Name of the AMM
    constructor(
        address _ichiVaultFactory,
        address _quoter,
        address _aegisVaultImplementation,
        address _aegisVaultERC20Implementation,
        string memory _ammName
    ) {
        require(
            _ichiVaultFactory != NULL_ADDRESS && _quoter != NULL_ADDRESS && _aegisVaultImplementation != NULL_ADDRESS
                && _aegisVaultERC20Implementation != NULL_ADDRESS,
            "ZAD"
        );
        ichiVaultFactory = _ichiVaultFactory;
        aegisVaultImplementation = _aegisVaultImplementation;
        aegisVaultERC20Implementation = _aegisVaultERC20Implementation;
        ammName = _ammName;
        quoter = IQuoter(_quoter);
        defaultFeeRecipient = msg.sender;
        emit DeployAegisVaultFactory(
            msg.sender, _ichiVaultFactory, _quoter, _aegisVaultImplementation, _aegisVaultERC20Implementation, _ammName
        );
    }

    /// @inheritdoc IAegisVaultFactoryState
    function allVaultsLength() external view override returns (uint256) {
        return allVaults.length;
    }

    /// @inheritdoc IAegisVaultFactoryState
    function allVaultsForDepositTokenLength(address token) external view override returns (uint256) {
        require(token != NULL_ADDRESS, "ZAD");
        return allVaultsForDepositToken[token].length;
    }

    /// @inheritdoc IAegisVaultFactoryOwnerActions
    function createAegisVault(CreateAegisVaultParams memory createAegisVaultParams)
        external
        override
        nonReentrant
        onlyOwner
        returns (address aegisVault)
    {
        require(
            createAegisVaultParams.depositToken != NULL_ADDRESS && createAegisVaultParams.depositVault != NULL_ADDRESS
                && createAegisVaultParams.targetVault != NULL_ADDRESS,
            "ZAD"
        );
        require(createAegisVaultParams.depositVault != createAegisVaultParams.targetVault, "VID");

        validateVaultFromVaultFactory(createAegisVaultParams.depositVault, createAegisVaultParams.depositVaultDeployer);
        validateVaultFromVaultFactory(createAegisVaultParams.targetVault, createAegisVaultParams.targetVaultDeployer);

        address dToken0 = IICHIVault(createAegisVaultParams.depositVault).token0();
        address dToken1 = IICHIVault(createAegisVaultParams.depositVault).token1();

        address tToken0 = IICHIVault(createAegisVaultParams.targetVault).token0();
        address tToken1 = IICHIVault(createAegisVaultParams.targetVault).token1();

        require(createAegisVaultParams.depositToken == dToken0 || createAegisVaultParams.depositToken == dToken1, "IVL");

        address targetToken = dToken0 == createAegisVaultParams.depositToken ? dToken1 : dToken0;

        // Ensure deposit token is allowed in deposit vault and target token is allowed in target vault
        require(
            createAegisVaultParams.depositToken == dToken0
                ? IICHIVault(createAegisVaultParams.depositVault).allowToken0()
                    && IICHIVault(createAegisVaultParams.targetVault).allowToken1()
                    && !IICHIVault(createAegisVaultParams.depositVault).allowToken1()
                    && !IICHIVault(createAegisVaultParams.targetVault).allowToken0()
                : IICHIVault(createAegisVaultParams.depositVault).allowToken1()
                    && IICHIVault(createAegisVaultParams.targetVault).allowToken0()
                    && !IICHIVault(createAegisVaultParams.depositVault).allowToken0()
                    && !IICHIVault(createAegisVaultParams.targetVault).allowToken1(),
            "WDT"
        );
        // Ensure order of tokens in vaults always matches
        require(dToken0 == tToken0 && dToken1 == tToken1, "MIS");

        uint256 vaultIndex = allVaults.length;

        IQuoter _quoter = quoter;

        if (createAegisVaultParams.isERC20) {
            aegisVault = aegisVaultERC20Implementation.clone();
            AegisVaultERC20(aegisVault)
                .initialize(
                    _quoter,
                    IERC20(createAegisVaultParams.depositToken),
                    IERC20(targetToken),
                    IICHIVault(createAegisVaultParams.depositVault),
                    IICHIVault(createAegisVaultParams.targetVault),
                    msg.sender,
                    vaultIndex
                );
        } else {
            aegisVault = aegisVaultImplementation.clone();
            AegisVault(aegisVault)
                .initialize(
                    _quoter,
                    IERC20(createAegisVaultParams.depositToken),
                    IERC20(targetToken),
                    IICHIVault(createAegisVaultParams.depositVault),
                    IICHIVault(createAegisVaultParams.targetVault),
                    msg.sender,
                    vaultIndex
                );
        }

        allVaults.push(aegisVault);
        allVaultsForDepositToken[createAegisVaultParams.depositToken].push(aegisVault);

        emit AegisVaultCreated(
            msg.sender,
            aegisVault,
            createAegisVaultParams.depositToken,
            targetToken,
            createAegisVaultParams.depositVault,
            createAegisVaultParams.targetVault,
            vaultIndex
        );
    }

    /// @inheritdoc IAegisVaultFactoryOwnerActions
    function setDefaultFeeRecipient(address _feeRecipient) external override onlyOwner {
        require(_feeRecipient != NULL_ADDRESS, "ZAD");
        defaultFeeRecipient = _feeRecipient;
        emit SetDefaultFeeRecipient(msg.sender, _feeRecipient);
    }

    /// @inheritdoc IAegisVaultFactoryOwnerActions
    function setDefaultBaseFee(uint256 _baseFee) external override onlyOwner {
        require(PctMath.isValid(_baseFee), "IIN");
        defaultBaseFee = _baseFee;
        emit SetDefaultBaseFee(msg.sender, _baseFee);
    }

    /// @notice Validates that a given vault address was created by the expected ICHI vault factory
    /// @dev This function ensures that only legitimate ICHI vaults are used in Aegis vault creation
    /// @param vaultAddress The address of the ICHI vault to validate
    /// @param vaultDeployer The address that deployed the ICHI vault
    function validateVaultFromVaultFactory(address vaultAddress, address vaultDeployer) private view {
        ICHIVaultFactory vaultFactory = ICHIVaultFactory(ichiVaultFactory);

        address token0 = IICHIVault(vaultAddress).token0();
        address token1 = IICHIVault(vaultAddress).token1();
        uint24 fee = IICHIVault(vaultAddress).fee();
        bool allowToken0 = IICHIVault(vaultAddress).allowToken0();
        bool allowToken1 = IICHIVault(vaultAddress).allowToken1();

        bytes32 key = vaultFactory.genKey(vaultDeployer, token0, token1, fee, allowToken0, allowToken1);

        require(vaultFactory.getICHIVault(key) == vaultAddress, "WVF");
    }
}
