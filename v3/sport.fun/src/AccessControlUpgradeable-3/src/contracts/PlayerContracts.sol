// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import {AccessControlUpgradeable} from "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IPlayerContracts} from "../interfaces/IPlayerContracts.sol";

/**
 * @title The contract for managing player contracts.
 */
contract PlayerContracts is AccessControlUpgradeable, UUPSUpgradeable, IPlayerContracts {

    using SafeERC20 for IERC20;

    //Roles.
    bytes32 public constant GOVERNOR_ROLE = keccak256("GOVERNOR_ROLE");
    bytes32 public constant CONTRACT_RENEWAL_ROLE = keccak256("CONTRACT_RENEWER");
    
    //Treasury address.
    address public treasuryWallet;

    //Mapping of supported payment tokens (token address => enabled).
    mapping(address => bool) public supportedTokens;
    
    //Track all supported token addresses.
    address[] public supportedTokenList;

    // Storage gap for future upgrades
    uint256[50] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initialize the PlayerContracts contract.
     * @param _treasury The address of the treasury wallet.
     * @param _governorAddress The address of the governor.
     */
    function initialize(address _treasury, address _governorAddress) external initializer {
        if (_treasury == address(0) || _governorAddress == address(0)) revert ZeroAddress();

        __AccessControl_init();
        __UUPSUpgradeable_init();

         treasuryWallet = _treasury;
        
        _setRoleAdmin(GOVERNOR_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(CONTRACT_RENEWAL_ROLE, GOVERNOR_ROLE);

        _grantRole(GOVERNOR_ROLE, _governorAddress);
        _grantRole(CONTRACT_RENEWAL_ROLE, _governorAddress);
    }

    /**
     * @notice Renew a player contract with specified payment token.
     * @param _user User paying for the contract renewal.
     * @param _playerId ID of the player whose contract is being renewed.
     * @param _price Price to pay for the renewal.
     * @param _numberOfMatches Number of matches the contract covers
     * @param _paymentToken Address of the ERC20 token to use for payment
     */
    function renewContract(address _user, uint256 _playerId, uint256 _price, uint256 _numberOfMatches,
    address _paymentToken) external onlyRole(CONTRACT_RENEWAL_ROLE) {
        if (_price == 0) revert PriceCannotBeZero();
        if (_numberOfMatches == 0) revert NumberOfMatchesCannotBeZero();
        if (_user == address(0)) revert UserCannotBeZeroAddress();
        if (_playerId == 0) revert PlayerIdCannotBeZero();
        if (!supportedTokens[_paymentToken]) revert TokenNotSupported();

        //Transfer tokens to the treasury.
        IERC20(_paymentToken).safeTransferFrom(_user, treasuryWallet, _price);

        emit ContractRenewed(_user, _playerId, _price, _numberOfMatches, _paymentToken);
    }

    /**
     * @notice Add a new supported payment token.
     * @param _tokenAddress Address of the ERC20 token to add.
     * @param _tokenSymbol Symbol of the token.
     */
    function addPaymentToken(address _tokenAddress, string calldata _tokenSymbol) external onlyRole(GOVERNOR_ROLE) {
        if (_tokenAddress == address(0)) revert ZeroAddress();
        if (supportedTokens[_tokenAddress]) revert TokenAlreadySupported();

        supportedTokens[_tokenAddress] = true;
        supportedTokenList.push(_tokenAddress);

        emit PaymentTokenAdded(_tokenAddress, _tokenSymbol);
    }

    /**
     * @notice Remove a supported payment token.
     * @param _tokenAddress Address of the ERC20 token to remove.
     */
    function removePaymentToken(address _tokenAddress) external onlyRole(GOVERNOR_ROLE) {
        if (!supportedTokens[_tokenAddress]) revert TokenNotFound();

        supportedTokens[_tokenAddress] = false;

        //Remove from supportedTokenList array.
        for (uint256 i = 0; i < supportedTokenList.length;) {
            if (supportedTokenList[i] == _tokenAddress) {
                supportedTokenList[i] = supportedTokenList[supportedTokenList.length - 1];
                supportedTokenList.pop();
                break;
            }
            unchecked { i++; }
        }

        emit PaymentTokenRemoved(_tokenAddress);
    }

    /**
     * @notice Set the treasury address.
     * @param _newTreasury New treasury address.
     */
    function setTreasury(address _newTreasury) external onlyRole(GOVERNOR_ROLE) {
        if (_newTreasury == address(0)) revert ZeroAddress();

        treasuryWallet = _newTreasury;
        
        emit TreasurySet(_newTreasury);
    }

    /**
     * @notice Check if a payment token is supported.
     * @param _tokenAddress The token address to check.
     * @return True if the token is supported.
     */
    function isTokenSupported(address _tokenAddress) external view returns (bool) {
        return supportedTokens[_tokenAddress];
    }

    /**
     * @notice Get all supported payment tokens.
     * @return Array of supported token addresses.
     */
    function getSupportedTokens() external view returns (address[] memory) {
        return supportedTokenList;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override(AccessControlUpgradeable) returns (bool) {
        return interfaceId == type(IPlayerContracts).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @notice Required by the UUPSUpgradeable module
     * @dev Only allows admins to upgrade the implementation
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(GOVERNOR_ROLE) {}
}