//SPDX-License-Identifier:ISC
pragma solidity 0.8.20;

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";
/**
 * @title ShareToken
 * @notice Upgradeable ERC20 token with role-based minting and burning capabilities
 * @dev This contract implements an upgradeable ERC20 token with the following fea ddtures:
 * - Role-based access control for minting and burning
 * - UUPS upgradeability pattern
 * - Secure upgrade process with safety checks
 *
 * Roles:
 * - DEFAULT_ADMIN_ROLE: Can grant and revoke all roles
 * - UPGRADER_ROLE: Can upgrade the contract implementation
 * - MINTER_ROLE: Can mint and burn tokens
 *
 * Storage layout:
 * - Initializable: uint8 private _initialized, uint8 private _initializing
 * - ContextUpgradeable: empty
 * - ERC20Upgradeable: mapping(address => uint256) private _balances, mapping(address => mapping(address => uint256)) private _allowances, uint256 private _totalSupply, string private _name, string private _symbol
 * - AccessControlUpgradeable: mapping(bytes32 => RoleData) private _roles
 * - UUPSUpgradeable: empty
 * - USDRE: uint8 private _decimals
 *
 * Gap sizes:
 * - ERC20Upgradeable: uint256[45]
 * - AccessControlUpgradeable: uint256[49]
 * - UUPSUpgradeable: uint256[50]
 * - USDRE: uint256[48]
 *
 * Security considerations:`
 * - Only addresses with UPGRADER_ROLE can upgrade the implementation`
 * - New implementations must support IERC20 and IAccessControl interfaces
 * - Storage layout must be preserved in upgrades
 * - Initializers are disabled in implementation contracts
 */
contract ShareToken is
  Initializable,
  ERC20Upgradeable,
  AccessControlUpgradeable,
  UUPSUpgradeable
{
  /// @notice Role that allows upgrading the contract implementation
  bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");
  /// @notice Role that allows minting and burning tokens
  bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

  /// @notice Token decimals (immutable after initialization)
  uint8 private _decimals;

  /// @dev Error thrown when an unsupported interface is detected
  error UnsupportedInterface(string interfaceName);

  /// @notice Emitted when UPGRADER_ROLE is granted to an account
  event UpgraderRoleGranted(address indexed account);
  /// @notice Emitted when the contract implementation is upgraded
  event ShareTokenUpgraded(address indexed implementation);
  /// @notice Emitted when MINTER_ROLE is granted to an account
  event MinterRoleGranted(address indexed account);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @notice Initializes the ShareToken
   * @dev Sets up initial roles and token parameters. Can only be called once.
   * @param name_ The name of the token
   * @param symbol_ The symbol of the token
   * @param decimals_ The number of decimals for the token
   * @param admin The address to receive the DEFAULT_ADMIN_ROLE and UPGRADER_ROLE
   */
  function initialize(
    string memory name_,
    string memory symbol_,
    uint8 decimals_,
    address admin
  ) public initializer {
    __ERC20_init(name_, symbol_);
    __AccessControl_init();
    __UUPSUpgradeable_init();

    _decimals = decimals_;

    // Set up admin roles
    _grantRole(DEFAULT_ADMIN_ROLE, admin);
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _grantRole(UPGRADER_ROLE, admin);
    emit UpgraderRoleGranted(admin);
  }

  /// @notice Returns the number of decimals used for token amounts
  function decimals() public view override returns (uint8) {
    return _decimals;
  }

  /**
   * @notice Mints new tokens
   * @dev Only callable by addresses with MINTER_ROLE
   * @param to The address to receive the minted tokens
   * @param amount The amount of tokens to mint
   */
  function mint(address to, uint amount) external onlyRole(MINTER_ROLE) {
    _mint(to, amount);
  }

  /**
   * @notice Burns tokens from a user's balance
   * @dev Only callable by addresses with MINTER_ROLE
   * @param user The address to burn tokens from
   * @param amount The amount of tokens to burn
   */
  function burn(address user, uint amount) external onlyRole(MINTER_ROLE) {
    _burn(user, amount);
  }

  /**
   * @notice Authorizes an upgrade to a new implementation
   * @dev Includes safety checks for the new implementation
   * - Verifies the new implementation is a contract
   * - Verifies required interfaces are supported
   * - Verifies initialization is properly disabled
   * @param newImplementation Address of the new implementation
   */
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyRole(UPGRADER_ROLE) {
    // Verify the new implementation supports the required interfaces
    if (
      !IERC165(newImplementation).supportsInterface(type(IERC20).interfaceId)
    ) {
      revert UnsupportedInterface("IERC20");
    }
    if (
      !IERC165(newImplementation).supportsInterface(
        type(IAccessControl).interfaceId
      )
    ) {
      revert UnsupportedInterface("IAccessControl");
    }

    emit ShareTokenUpgraded(newImplementation);
  }

  function supportsInterface(
    bytes4 interfaceId
  ) public view virtual override(AccessControlUpgradeable) returns (bool) {
    return
      interfaceId == type(IERC20).interfaceId ||
      interfaceId == type(IAccessControl).interfaceId ||
      super.supportsInterface(interfaceId);
  }

  /// @dev Reserved storage space for future upgrades
  uint256[50] private __gap;
}
