// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IProvider } from "./interfaces/IProvider.sol";

import { MarketParamsLib } from "../moolah/libraries/MarketParamsLib.sol";
import { SharesMathLib } from "../moolah/libraries/SharesMathLib.sol";
import { IMoolahVault } from "../moolah-vault/interfaces/IMoolahVault.sol";
import { Id, IMoolah, MarketParams, Market } from "../moolah/interfaces/IMoolah.sol";
import { ErrorsLib } from "../moolah/libraries/ErrorsLib.sol";
import { UtilsLib } from "../moolah/libraries/UtilsLib.sol";

/// @title ERC20 Provider for Lista Lending
/// @author Lista DAO
/// @notice This contract allows users to interact with the Moolah protocol using ERC20 tokens.
/// @dev
/// - Handles interactions with the ERC20 vault for deposit, mint, withdraw, and redeem operations.
/// - Integrates with the Moolah core contract to support borrowing, repayment, and collateral management using ERC20 tokens.
contract Erc20Provider is UUPSUpgradeable, AccessControlEnumerableUpgradeable, IProvider {
  using MarketParamsLib for MarketParams;
  using SharesMathLib for uint256;
  using SafeERC20 for IERC20;

  /* IMMUTABLES */

  IMoolah public immutable MOOLAH;
  IMoolahVault public immutable MOOLAH_VAULT;
  address public immutable TOKEN;

  bytes32 public constant MANAGER = keccak256("MANAGER");

  modifier onlyMoolah() {
    require(msg.sender == address(MOOLAH), "not moolah");
    _;
  }

  /* CONSTRUCTOR */

  /// @custom:oz-upgrades-unsafe-allow constructor
  /// @param moolah The address of the Moolah contract.
  /// @param moolahVault The address of the WBNB Moolah Vault contract.
  /// @param token The address of the ERC20 token contract.
  constructor(address moolah, address moolahVault, address token) {
    require(moolah != address(0), ErrorsLib.ZERO_ADDRESS);
    require(moolahVault != address(0), ErrorsLib.ZERO_ADDRESS);
    require(moolah == address(IMoolahVault(moolahVault).MOOLAH()), ErrorsLib.NOT_SET);
    require(token != address(0), ErrorsLib.ZERO_ADDRESS);
    require(token == IMoolahVault(moolahVault).asset(), "asset mismatch");

    MOOLAH = IMoolah(moolah);
    MOOLAH_VAULT = IMoolahVault(moolahVault);
    TOKEN = token;

    _disableInitializers();
  }

  /// @param admin The admin of the contract.
  /// @param manager The manager of the contract.
  function initialize(address admin, address manager) public initializer {
    require(admin != address(0), ErrorsLib.ZERO_ADDRESS);
    require(manager != address(0), ErrorsLib.ZERO_ADDRESS);

    __AccessControl_init();

    _grantRole(DEFAULT_ADMIN_ROLE, admin);
    _grantRole(MANAGER, manager);
  }

  /// @dev Deposit BNB and receive shares.
  /// @param receiver The address to receive the shares.
  /// @return shares The number of shares received.
  function deposit(address receiver, uint256 assets) external returns (uint256 shares) {
    require(assets > 0, ErrorsLib.ZERO_ASSETS);

    IERC20(TOKEN).transferFrom(msg.sender, address(this), assets);
    require(IERC20(TOKEN).approve(address(MOOLAH_VAULT), assets));

    shares = MOOLAH_VAULT.deposit(assets, receiver);
  }

  /// @dev empty function to allow moolah to do liquidation
  /// @dev may support burn clisBnb in the future (mint clisBnb by providing BNB)
  function liquidate(Id id, address borrower) external onlyMoolah {}

  receive() external payable {}

  function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}
}
