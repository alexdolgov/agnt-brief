// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Initializable } from "solady/src/utils/Initializable.sol";
import { Ownable } from "solady/src/auth/Ownable.sol";
import { EnumerableRoles } from "solady/src/auth/EnumerableRoles.sol";

import { AssetTokenCCIPCompatible } from "./AssetTokenCCIPCompatible.sol";
import { AssetTokenData } from "../assetToken/AssetTokenData.sol";

/// @author Swarm Markets
/// @title Asset Token Factory for Asset Token Contract
/// @notice Contract to deploy Asset Token contracts
contract AssetTokenFactoryCCIPCompatible is Initializable, Ownable, EnumerableRoles {
    error ZeroAddressPassed();
    error NameSymbolEmpty(string name, string symbol);
    error AssetTokenRegisterError(address assetToken, address issuer, address guardian);
    error TokenDisabled(address token);

    /// @notice Emitted when an asset token is deployed
    event AssetTokenDeployed(string _name, address indexed _assetTokenAddress, address indexed _deployer);

    /// @notice Emitted when the address of the asset token data is set
    event AssetTokenDataChanged(address indexed _oldAddress, address indexed _newAddress, address indexed _caller);

    /// @notice Emitted when the asset token gets its enabled structure to false (only infomarional)
    event AssetTokenInfoDisabled(address indexed _assetTokenAddress, address indexed _caller);

    /// @notice Admin role
    uint256 public constant DEFAULT_ADMIN_ROLE = uint256(keccak256("DEFAULT_ADMIN_ROLE"));
    /// @notice Role to be able to deploy an Asset Token
    uint256 public constant ASSET_DEPLOYER_ROLE = uint256(keccak256("ASSET_DEPLOYER_ROLE"));

    /// @notice struct to hold asset token data
    struct AssetTokenContract {
        string name;
        bool enabled;
    }
    /// @notice mapping holding all the deployed asset tokens
    mapping(address => AssetTokenContract) public assetTokenContracts;

    /// @notice AssetTokenData Address
    address public assetTokenDataAddress;

    modifier requireNonEmptyAddress(address _address) {
        require(_address != address(0), ZeroAddressPassed());
        _;
    }

    /**
     * @dev Initalize the contract.
     */
    function initialize(
        address _assetTokenDataAddress
    ) external initializer requireNonEmptyAddress(_assetTokenDataAddress) {
        assetTokenDataAddress = _assetTokenDataAddress;
        _initializeOwner(msg.sender);
        _setRole(msg.sender, DEFAULT_ADMIN_ROLE, true);
    }

    /// @notice Deploy an Asset Token Contract
    /// @notice Required: the caller should have ASSET_DEPLOYER_ROLE from this contract
    /// @notice Required: this contract should have ASSET_DEPLOYER_ROLE from Asset Token Data contract
    /// @param _issuer the issuer of the contract
    /// @param _guardian the guardian
    /// @param _statePercent the state percent to check the safeguard convertion
    /// @param _kya verification link
    /// @param _minimumRedemptionAmount less than this value is not allowed
    /// @param _name name of the token
    /// @param _symbol symbol of the token
    /// @return assetToken address the address of the new asset token contract deployed
    function deployAssetToken(
        address _issuer,
        address _guardian,
        uint256 _statePercent,
        string memory _kya,
        uint256 _minimumRedemptionAmount,
        string memory _name,
        string memory _symbol
    )
        external
        onlyRole(ASSET_DEPLOYER_ROLE)
        requireNonEmptyAddress(_issuer)
        requireNonEmptyAddress(_guardian)
        returns (address assetToken)
    {
        require(bytes(_name).length >= 0 && bytes(_symbol).length >= 0, NameSymbolEmpty(_name, _symbol));

        assetToken = address(
            new AssetTokenCCIPCompatible(
                assetTokenDataAddress,
                msg.sender,
                _statePercent,
                _kya,
                _minimumRedemptionAmount,
                _name,
                _symbol
            )
        );
        assetTokenContracts[assetToken] = AssetTokenContract({ name: _name, enabled: true });

        require(
            AssetTokenData(assetTokenDataAddress).registerAssetToken(assetToken, _issuer, _guardian),
            AssetTokenRegisterError(assetToken, _issuer, _guardian)
        );

        emit AssetTokenDeployed(_name, assetToken, msg.sender);
    }

    /// @notice Sets Asset Token Data Address
    /// @param _newAddress value to be set
    function setAssetTokenData(
        address _newAddress
    ) external onlyRole(DEFAULT_ADMIN_ROLE) requireNonEmptyAddress(_newAddress) {
        address oldAddress = assetTokenDataAddress;
        assetTokenDataAddress = _newAddress;
        emit AssetTokenDataChanged(oldAddress, _newAddress, msg.sender);
    }

    /// @notice Set the Token as NOT enabled (this is just for information purposes, it does not disable the token)
    /// @param _tokenAddress the address of the token
    function disableAssetTokenInfo(address _tokenAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(assetTokenContracts[_tokenAddress].enabled, TokenDisabled(_tokenAddress));
        assetTokenContracts[_tokenAddress].enabled = false;
        emit AssetTokenInfoDisabled(_tokenAddress, msg.sender);
    }

    /// @notice Gets the Token Name
    /// @param _tokenAddress the address of the token to get the name from
    /// @return string the asset token name
    function getTokenName(address _tokenAddress) external view returns (string memory) {
        return assetTokenContracts[_tokenAddress].name;
    }

    /// @notice Gets if the Token is enabled. This is used in the Authorization Contract
    /// @param _tokenAddress the address of the token to get if it is enabled (if it exists)
    /// @return bool true if the token exists
    function isTokenEnabled(address _tokenAddress) external view returns (bool) {
        return assetTokenContracts[_tokenAddress].enabled;
    }
}
