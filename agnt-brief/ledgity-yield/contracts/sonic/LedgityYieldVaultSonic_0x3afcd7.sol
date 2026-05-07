// ============================================================
// FILE: @chainlink/contracts-ccip/contracts/interfaces/IGetCCIPAdmin.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IGetCCIPAdmin {
  /// @notice Returns the admin of the token.
  /// @dev This method is named to never conflict with existing methods.
  function getCCIPAdmin() external view returns (address);
}

// ============================================================
// FILE: @chainlink/contracts/src/v0.8/shared/token/ERC20/IBurnMintERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "../../../vendor/openzeppelin-solidity/v4.8.3/contracts/token/ERC20/IERC20.sol";

interface IBurnMintERC20 is IERC20 {
  /// @notice Mints new tokens for a given address.
  /// @param account The address to mint the new tokens to.
  /// @param amount The number of tokens to be minted.
  /// @dev this function increases the total supply.
  function mint(address account, uint256 amount) external;

  /// @notice Burns tokens from the sender.
  /// @param amount The number of tokens to be burned.
  /// @dev this function decreases the total supply.
  function burn(uint256 amount) external;

  /// @notice Burns tokens from a given address..
  /// @param account The address to burn tokens from.
  /// @param amount The number of tokens to be burned.
  /// @dev this function decreases the total supply.
  function burn(address account, uint256 amount) external;

  /// @notice Burns tokens from a given address..
  /// @param account The address to burn tokens from.
  /// @param amount The number of tokens to be burned.
  /// @dev this function decreases the total supply.
  function burnFrom(address account, uint256 amount) external;
}

// ============================================================
// FILE: @chainlink/contracts/src/v0.8/vendor/openzeppelin-solidity/v4.8.3/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
  /**
   * @dev Emitted when `value` tokens are moved from one account (`from`) to
   * another (`to`).
   *
   * Note that `value` may be zero.
   */
  event Transfer(address indexed from, address indexed to, uint256 value);

  /**
   * @dev Emitted when the allowance of a `spender` for an `owner` is set by
   * a call to {approve}. `value` is the new allowance.
   */
  event Approval(address indexed owner, address indexed spender, uint256 value);

  /**
   * @dev Returns the amount of tokens in existence.
   */
  function totalSupply() external view returns (uint256);

  /**
   * @dev Returns the amount of tokens owned by `account`.
   */
  function balanceOf(address account) external view returns (uint256);

  /**
   * @dev Moves `amount` tokens from the caller's account to `to`.
   *
   * Returns a boolean value indicating whether the operation succeeded.
   *
   * Emits a {Transfer} event.
   */
  function transfer(address to, uint256 amount) external returns (bool);

  /**
   * @dev Returns the remaining number of tokens that `spender` will be
   * allowed to spend on behalf of `owner` through {transferFrom}. This is
   * zero by default.
   *
   * This value changes when {approve} or {transferFrom} are called.
   */
  function allowance(address owner, address spender) external view returns (uint256);

  /**
   * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
   *
   * Returns a boolean value indicating whether the operation succeeded.
   *
   * IMPORTANT: Beware that changing an allowance with this method brings the risk
   * that someone may use both the old and the new allowance by unfortunate
   * transaction ordering. One possible solution to mitigate this race
   * condition is to first reduce the spender's allowance to 0 and set the
   * desired value afterwards:
   * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
   *
   * Emits an {Approval} event.
   */
  function approve(address spender, uint256 amount) external returns (bool);

  /**
   * @dev Moves `amount` tokens from `from` to `to` using the
   * allowance mechanism. `amount` is then deducted from the caller's
   * allowance.
   *
   * Returns a boolean value indicating whether the operation succeeded.
   *
   * Emits a {Transfer} event.
   */
  function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    function __Ownable_init() internal onlyInitializing {
        __Ownable_init_unchained();
    }

    function __Ownable_init_unchained() internal onlyInitializing {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/interfaces/draft-IERC1822Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (interfaces/draft-IERC1822.sol)

pragma solidity ^0.8.0;

/**
 * @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822ProxiableUpgradeable {
    /**
     * @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
     * address.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy.
     */
    function proxiableUUID() external view returns (bytes32);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/interfaces/IERC1967Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (interfaces/IERC1967.sol)

pragma solidity ^0.8.0;

/**
 * @dev ERC-1967: Proxy Storage Slots. This interface contains the events defined in the ERC.
 *
 * _Available since v4.8.3._
 */
interface IERC1967Upgradeable {
    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Emitted when the beacon is changed.
     */
    event BeaconUpgraded(address indexed beacon);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/interfaces/IERC4626Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (interfaces/IERC4626.sol)

pragma solidity ^0.8.0;

import "../token/ERC20/IERC20Upgradeable.sol";
import "../token/ERC20/extensions/IERC20MetadataUpgradeable.sol";

/**
 * @dev Interface of the ERC4626 "Tokenized Vault Standard", as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[ERC-4626].
 *
 * _Available since v4.7._
 */
interface IERC4626Upgradeable is IERC20Upgradeable, IERC20MetadataUpgradeable {
    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /**
     * @dev Returns the address of the underlying token used for the Vault for accounting, depositing, and withdrawing.
     *
     * - MUST be an ERC-20 token contract.
     * - MUST NOT revert.
     */
    function asset() external view returns (address assetTokenAddress);

    /**
     * @dev Returns the total amount of the underlying asset that is “managed” by Vault.
     *
     * - SHOULD include any compounding that occurs from yield.
     * - MUST be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT revert.
     */
    function totalAssets() external view returns (uint256 totalManagedAssets);

    /**
     * @dev Returns the amount of shares that the Vault would exchange for the amount of assets provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Returns the amount of assets that the Vault would exchange for the amount of shares provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be deposited into the Vault for the receiver,
     * through a deposit call.
     *
     * - MUST return a limited value if receiver is subject to some deposit limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of assets that may be deposited.
     * - MUST NOT revert.
     */
    function maxDeposit(address receiver) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their deposit at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of Vault shares that would be minted in a deposit
     *   call in the same transaction. I.e. deposit should return the same or more shares as previewDeposit if called
     *   in the same transaction.
     * - MUST NOT account for deposit limits like those returned from maxDeposit and should always act as though the
     *   deposit would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewDeposit SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewDeposit(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Mints shares Vault shares to receiver by depositing exactly amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   deposit execution, and are accounted for during deposit.
     * - MUST revert if all of assets cannot be deposited (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of the Vault shares that can be minted for the receiver, through a mint call.
     * - MUST return a limited value if receiver is subject to some mint limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of shares that may be minted.
     * - MUST NOT revert.
     */
    function maxMint(address receiver) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their mint at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of assets that would be deposited in a mint call
     *   in the same transaction. I.e. mint should return the same or fewer assets as previewMint if called in the
     *   same transaction.
     * - MUST NOT account for mint limits like those returned from maxMint and should always act as though the mint
     *   would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewMint SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by minting.
     */
    function previewMint(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Mints exactly shares Vault shares to receiver by depositing amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the mint
     *   execution, and are accounted for during mint.
     * - MUST revert if all of shares cannot be minted (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function mint(uint256 shares, address receiver) external returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be withdrawn from the owner balance in the
     * Vault, through a withdraw call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxWithdraw(address owner) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their withdrawal at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of Vault shares that would be burned in a withdraw
     *   call in the same transaction. I.e. withdraw should return the same or fewer shares as previewWithdraw if
     *   called
     *   in the same transaction.
     * - MUST NOT account for withdrawal limits like those returned from maxWithdraw and should always act as though
     *   the withdrawal would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewWithdraw SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewWithdraw(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Burns shares from owner and sends exactly assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   withdraw execution, and are accounted for during withdraw.
     * - MUST revert if all of assets cannot be withdrawn (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * Note that some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of Vault shares that can be redeemed from the owner balance in the Vault,
     * through a redeem call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST return balanceOf(owner) if owner is not subject to any withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxRedeem(address owner) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their redeemption at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of assets that would be withdrawn in a redeem call
     *   in the same transaction. I.e. redeem should return the same or more assets as previewRedeem if called in the
     *   same transaction.
     * - MUST NOT account for redemption limits like those returned from maxRedeem and should always act as though the
     *   redemption would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewRedeem SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by redeeming.
     */
    function previewRedeem(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Burns exactly shares from owner and sends assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   redeem execution, and are accounted for during redeem.
     * - MUST revert if all of shares cannot be redeemed (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * NOTE: some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/proxy/beacon/IBeaconUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (proxy/beacon/IBeacon.sol)

pragma solidity ^0.8.0;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeaconUpgradeable {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {BeaconProxy} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/proxy/ERC1967/ERC1967UpgradeUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/ERC1967/ERC1967Upgrade.sol)

pragma solidity ^0.8.2;

import "../beacon/IBeaconUpgradeable.sol";
import "../../interfaces/IERC1967Upgradeable.sol";
import "../../interfaces/draft-IERC1822Upgradeable.sol";
import "../../utils/AddressUpgradeable.sol";
import "../../utils/StorageSlotUpgradeable.sol";
import "../utils/Initializable.sol";

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 *
 * _Available since v4.1._
 */
abstract contract ERC1967UpgradeUpgradeable is Initializable, IERC1967Upgradeable {
    function __ERC1967Upgrade_init() internal onlyInitializing {
    }

    function __ERC1967Upgrade_init_unchained() internal onlyInitializing {
    }
    // This is the keccak-256 hash of "eip1967.proxy.rollback" subtracted by 1
    bytes32 private constant _ROLLBACK_SLOT = 0x4910fdfa16fed3260ed0e7147f7cc6da11a60208b5b9406d12a635614ffd9143;

    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev Returns the current implementation address.
     */
    function _getImplementation() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        require(AddressUpgradeable.isContract(newImplementation), "ERC1967: new implementation is not a contract");
        StorageSlotUpgradeable.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Perform implementation upgrade
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeTo(address newImplementation) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);
    }

    /**
     * @dev Perform implementation upgrade with additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCall(address newImplementation, bytes memory data, bool forceCall) internal {
        _upgradeTo(newImplementation);
        if (data.length > 0 || forceCall) {
            AddressUpgradeable.functionDelegateCall(newImplementation, data);
        }
    }

    /**
     * @dev Perform implementation upgrade with security checks for UUPS proxies, and additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCallUUPS(address newImplementation, bytes memory data, bool forceCall) internal {
        // Upgrades from old implementations will perform a rollback test. This test requires the new
        // implementation to upgrade back to the old, non-ERC1822 compliant, implementation. Removing
        // this special case will break upgrade paths from old UUPS implementation to new ones.
        if (StorageSlotUpgradeable.getBooleanSlot(_ROLLBACK_SLOT).value) {
            _setImplementation(newImplementation);
        } else {
            try IERC1822ProxiableUpgradeable(newImplementation).proxiableUUID() returns (bytes32 slot) {
                require(slot == _IMPLEMENTATION_SLOT, "ERC1967Upgrade: unsupported proxiableUUID");
            } catch {
                revert("ERC1967Upgrade: new implementation is not UUPS");
            }
            _upgradeToAndCall(newImplementation, data, forceCall);
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Returns the current admin.
     */
    function _getAdmin() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        require(newAdmin != address(0), "ERC1967: new admin is the zero address");
        StorageSlotUpgradeable.getAddressSlot(_ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {AdminChanged} event.
     */
    function _changeAdmin(address newAdmin) internal {
        emit AdminChanged(_getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is bytes32(uint256(keccak256('eip1967.proxy.beacon')) - 1)) and is validated in the constructor.
     */
    bytes32 internal constant _BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Returns the current beacon.
     */
    function _getBeacon() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the EIP1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        require(AddressUpgradeable.isContract(newBeacon), "ERC1967: new beacon is not a contract");
        require(
            AddressUpgradeable.isContract(IBeaconUpgradeable(newBeacon).implementation()),
            "ERC1967: beacon implementation is not a contract"
        );
        StorageSlotUpgradeable.getAddressSlot(_BEACON_SLOT).value = newBeacon;
    }

    /**
     * @dev Perform beacon upgrade with additional setup call. Note: This upgrades the address of the beacon, it does
     * not upgrade the implementation contained in the beacon (see {UpgradeableBeacon-_setImplementation} for that).
     *
     * Emits a {BeaconUpgraded} event.
     */
    function _upgradeBeaconToAndCall(address newBeacon, bytes memory data, bool forceCall) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);
        if (data.length > 0 || forceCall) {
            AddressUpgradeable.functionDelegateCall(IBeaconUpgradeable(newBeacon).implementation(), data);
        }
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.2;

import "../../utils/AddressUpgradeable.sol";

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     * @custom:oz-retyped-from bool
     */
    uint8 private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint8 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
     * constructor.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require(
            (isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1),
            "Initializable: contract is already initialized"
        );
        _initialized = 1;
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: setting the version to 255 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint8 version) {
        require(!_initializing && _initialized < version, "Initializable: contract is already initialized");
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized != type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint8) {
        return _initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _initializing;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/utils/UUPSUpgradeable.sol)

pragma solidity ^0.8.0;

import "../../interfaces/draft-IERC1822Upgradeable.sol";
import "../ERC1967/ERC1967UpgradeUpgradeable.sol";
import "./Initializable.sol";

/**
 * @dev An upgradeability mechanism designed for UUPS proxies. The functions included here can perform an upgrade of an
 * {ERC1967Proxy}, when this contract is set as the implementation behind such a proxy.
 *
 * A security mechanism ensures that an upgrade does not turn off upgradeability accidentally, although this risk is
 * reinstated if the upgrade retains upgradeability but removes the security mechanism, e.g. by replacing
 * `UUPSUpgradeable` with a custom implementation of upgrades.
 *
 * The {_authorizeUpgrade} function must be overridden to include access restriction to the upgrade mechanism.
 *
 * _Available since v4.1._
 */
abstract contract UUPSUpgradeable is Initializable, IERC1822ProxiableUpgradeable, ERC1967UpgradeUpgradeable {
    function __UUPSUpgradeable_init() internal onlyInitializing {
    }

    function __UUPSUpgradeable_init_unchained() internal onlyInitializing {
    }
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address private immutable __self = address(this);

    /**
     * @dev Check that the execution is being performed through a delegatecall call and that the execution context is
     * a proxy contract with an implementation (as defined in ERC1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
     * fail.
     */
    modifier onlyProxy() {
        require(address(this) != __self, "Function must be called through delegatecall");
        require(_getImplementation() == __self, "Function must be called through active proxy");
        _;
    }

    /**
     * @dev Check that the execution is not being performed through a delegate call. This allows a function to be
     * callable on the implementing contract but not through proxies.
     */
    modifier notDelegated() {
        require(address(this) == __self, "UUPSUpgradeable: must not be called through delegatecall");
        _;
    }

    /**
     * @dev Implementation of the ERC1822 {proxiableUUID} function. This returns the storage slot used by the
     * implementation. It is used to validate the implementation's compatibility when performing an upgrade.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy. This is guaranteed by the `notDelegated` modifier.
     */
    function proxiableUUID() external view virtual override notDelegated returns (bytes32) {
        return _IMPLEMENTATION_SLOT;
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     *
     * @custom:oz-upgrades-unsafe-allow-reachable delegatecall
     */
    function upgradeTo(address newImplementation) public virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, new bytes(0), false);
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`, and subsequently execute the function call
     * encoded in `data`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     *
     * @custom:oz-upgrades-unsafe-allow-reachable delegatecall
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) public payable virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, data, true);
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeTo} and {upgradeToAndCall}.
     *
     * Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
     *
     * ```solidity
     * function _authorizeUpgrade(address) internal override onlyOwner {}
     * ```
     */
    function _authorizeUpgrade(address newImplementation) internal virtual;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    function __Pausable_init() internal onlyInitializing {
        __Pausable_init_unchained();
    }

    function __Pausable_init_unchained() internal onlyInitializing {
        _paused = false;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        require(!paused(), "Pausable: paused");
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        require(paused(), "Pausable: not paused");
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import "./IERC20Upgradeable.sol";
import "./extensions/IERC20MetadataUpgradeable.sol";
import "../../utils/ContextUpgradeable.sol";
import "../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20Upgradeable is Initializable, ContextUpgradeable, IERC20Upgradeable, IERC20MetadataUpgradeable {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    function __ERC20_init(string memory name_, string memory symbol_) internal onlyInitializing {
        __ERC20_init_unchained(name_, symbol_);
    }

    function __ERC20_init_unchained(string memory name_, string memory symbol_) internal onlyInitializing {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(address from, address to, uint256 amount) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            // Overflow not possible: the sum of all balances is capped by totalSupply, and the sum is preserved by
            // decrementing then incrementing.
            _balances[to] += amount;
        }

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        unchecked {
            // Overflow not possible: balance + amount is at most totalSupply + amount, which is checked above.
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
            // Overflow not possible: amount <= accountBalance <= totalSupply.
            _totalSupply -= amount;
        }

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(address owner, address spender, uint256 amount) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 amount) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[45] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/ERC4626.sol)

pragma solidity ^0.8.0;

import "../ERC20Upgradeable.sol";
import "../utils/SafeERC20Upgradeable.sol";
import "../../../interfaces/IERC4626Upgradeable.sol";
import "../../../utils/math/MathUpgradeable.sol";
import "../../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the ERC4626 "Tokenized Vault Standard" as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[EIP-4626].
 *
 * This extension allows the minting and burning of "shares" (represented using the ERC20 inheritance) in exchange for
 * underlying "assets" through standardized {deposit}, {mint}, {redeem} and {burn} workflows. This contract extends
 * the ERC20 standard. Any additional extensions included along it would affect the "shares" token represented by this
 * contract and not the "assets" token which is an independent contract.
 *
 * [CAUTION]
 * ====
 * In empty (or nearly empty) ERC-4626 vaults, deposits are at high risk of being stolen through frontrunning
 * with a "donation" to the vault that inflates the price of a share. This is variously known as a donation or inflation
 * attack and is essentially a problem of slippage. Vault deployers can protect against this attack by making an initial
 * deposit of a non-trivial amount of the asset, such that price manipulation becomes infeasible. Withdrawals may
 * similarly be affected by slippage. Users can protect against this attack as well as unexpected slippage in general by
 * verifying the amount received is as expected, using a wrapper that performs these checks such as
 * https://github.com/fei-protocol/ERC4626#erc4626router-and-base[ERC4626Router].
 *
 * Since v4.9, this implementation uses virtual assets and shares to mitigate that risk. The `_decimalsOffset()`
 * corresponds to an offset in the decimal representation between the underlying asset's decimals and the vault
 * decimals. This offset also determines the rate of virtual shares to virtual assets in the vault, which itself
 * determines the initial exchange rate. While not fully preventing the attack, analysis shows that the default offset
 * (0) makes it non-profitable, as a result of the value being captured by the virtual shares (out of the attacker's
 * donation) matching the attacker's expected gains. With a larger offset, the attack becomes orders of magnitude more
 * expensive than it is profitable. More details about the underlying math can be found
 * xref:erc4626.adoc#inflation-attack[here].
 *
 * The drawback of this approach is that the virtual shares do capture (a very small) part of the value being accrued
 * to the vault. Also, if the vault experiences losses, the users try to exit the vault, the virtual shares and assets
 * will cause the first user to exit to experience reduced losses in detriment to the last users that will experience
 * bigger losses. Developers willing to revert back to the pre-v4.9 behavior just need to override the
 * `_convertToShares` and `_convertToAssets` functions.
 *
 * To learn more, check out our xref:ROOT:erc4626.adoc[ERC-4626 guide].
 * ====
 *
 * _Available since v4.7._
 */
abstract contract ERC4626Upgradeable is Initializable, ERC20Upgradeable, IERC4626Upgradeable {
    using MathUpgradeable for uint256;

    IERC20Upgradeable private _asset;
    uint8 private _underlyingDecimals;

    /**
     * @dev Set the underlying asset contract. This must be an ERC20-compatible contract (ERC20 or ERC777).
     */
    function __ERC4626_init(IERC20Upgradeable asset_) internal onlyInitializing {
        __ERC4626_init_unchained(asset_);
    }

    function __ERC4626_init_unchained(IERC20Upgradeable asset_) internal onlyInitializing {
        (bool success, uint8 assetDecimals) = _tryGetAssetDecimals(asset_);
        _underlyingDecimals = success ? assetDecimals : 18;
        _asset = asset_;
    }

    /**
     * @dev Attempts to fetch the asset decimals. A return value of false indicates that the attempt failed in some way.
     */
    function _tryGetAssetDecimals(IERC20Upgradeable asset_) private view returns (bool, uint8) {
        (bool success, bytes memory encodedDecimals) = address(asset_).staticcall(
            abi.encodeWithSelector(IERC20MetadataUpgradeable.decimals.selector)
        );
        if (success && encodedDecimals.length >= 32) {
            uint256 returnedDecimals = abi.decode(encodedDecimals, (uint256));
            if (returnedDecimals <= type(uint8).max) {
                return (true, uint8(returnedDecimals));
            }
        }
        return (false, 0);
    }

    /**
     * @dev Decimals are computed by adding the decimal offset on top of the underlying asset's decimals. This
     * "original" value is cached during construction of the vault contract. If this read operation fails (e.g., the
     * asset has not been created yet), a default of 18 is used to represent the underlying asset's decimals.
     *
     * See {IERC20Metadata-decimals}.
     */
    function decimals() public view virtual override(IERC20MetadataUpgradeable, ERC20Upgradeable) returns (uint8) {
        return _underlyingDecimals + _decimalsOffset();
    }

    /** @dev See {IERC4626-asset}. */
    function asset() public view virtual override returns (address) {
        return address(_asset);
    }

    /** @dev See {IERC4626-totalAssets}. */
    function totalAssets() public view virtual override returns (uint256) {
        return _asset.balanceOf(address(this));
    }

    /** @dev See {IERC4626-convertToShares}. */
    function convertToShares(uint256 assets) public view virtual override returns (uint256) {
        return _convertToShares(assets, MathUpgradeable.Rounding.Down);
    }

    /** @dev See {IERC4626-convertToAssets}. */
    function convertToAssets(uint256 shares) public view virtual override returns (uint256) {
        return _convertToAssets(shares, MathUpgradeable.Rounding.Down);
    }

    /** @dev See {IERC4626-maxDeposit}. */
    function maxDeposit(address) public view virtual override returns (uint256) {
        return type(uint256).max;
    }

    /** @dev See {IERC4626-maxMint}. */
    function maxMint(address) public view virtual override returns (uint256) {
        return type(uint256).max;
    }

    /** @dev See {IERC4626-maxWithdraw}. */
    function maxWithdraw(address owner) public view virtual override returns (uint256) {
        return _convertToAssets(balanceOf(owner), MathUpgradeable.Rounding.Down);
    }

    /** @dev See {IERC4626-maxRedeem}. */
    function maxRedeem(address owner) public view virtual override returns (uint256) {
        return balanceOf(owner);
    }

    /** @dev See {IERC4626-previewDeposit}. */
    function previewDeposit(uint256 assets) public view virtual override returns (uint256) {
        return _convertToShares(assets, MathUpgradeable.Rounding.Down);
    }

    /** @dev See {IERC4626-previewMint}. */
    function previewMint(uint256 shares) public view virtual override returns (uint256) {
        return _convertToAssets(shares, MathUpgradeable.Rounding.Up);
    }

    /** @dev See {IERC4626-previewWithdraw}. */
    function previewWithdraw(uint256 assets) public view virtual override returns (uint256) {
        return _convertToShares(assets, MathUpgradeable.Rounding.Up);
    }

    /** @dev See {IERC4626-previewRedeem}. */
    function previewRedeem(uint256 shares) public view virtual override returns (uint256) {
        return _convertToAssets(shares, MathUpgradeable.Rounding.Down);
    }

    /** @dev See {IERC4626-deposit}. */
    function deposit(uint256 assets, address receiver) public virtual override returns (uint256) {
        require(assets <= maxDeposit(receiver), "ERC4626: deposit more than max");

        uint256 shares = previewDeposit(assets);
        _deposit(_msgSender(), receiver, assets, shares);

        return shares;
    }

    /** @dev See {IERC4626-mint}.
     *
     * As opposed to {deposit}, minting is allowed even if the vault is in a state where the price of a share is zero.
     * In this case, the shares will be minted without requiring any assets to be deposited.
     */
    function mint(uint256 shares, address receiver) public virtual override returns (uint256) {
        require(shares <= maxMint(receiver), "ERC4626: mint more than max");

        uint256 assets = previewMint(shares);
        _deposit(_msgSender(), receiver, assets, shares);

        return assets;
    }

    /** @dev See {IERC4626-withdraw}. */
    function withdraw(uint256 assets, address receiver, address owner) public virtual override returns (uint256) {
        require(assets <= maxWithdraw(owner), "ERC4626: withdraw more than max");

        uint256 shares = previewWithdraw(assets);
        _withdraw(_msgSender(), receiver, owner, assets, shares);

        return shares;
    }

    /** @dev See {IERC4626-redeem}. */
    function redeem(uint256 shares, address receiver, address owner) public virtual override returns (uint256) {
        require(shares <= maxRedeem(owner), "ERC4626: redeem more than max");

        uint256 assets = previewRedeem(shares);
        _withdraw(_msgSender(), receiver, owner, assets, shares);

        return assets;
    }

    /**
     * @dev Internal conversion function (from assets to shares) with support for rounding direction.
     */
    function _convertToShares(uint256 assets, MathUpgradeable.Rounding rounding) internal view virtual returns (uint256) {
        return assets.mulDiv(totalSupply() + 10 ** _decimalsOffset(), totalAssets() + 1, rounding);
    }

    /**
     * @dev Internal conversion function (from shares to assets) with support for rounding direction.
     */
    function _convertToAssets(uint256 shares, MathUpgradeable.Rounding rounding) internal view virtual returns (uint256) {
        return shares.mulDiv(totalAssets() + 1, totalSupply() + 10 ** _decimalsOffset(), rounding);
    }

    /**
     * @dev Deposit/mint common workflow.
     */
    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal virtual {
        // If _asset is ERC777, `transferFrom` can trigger a reentrancy BEFORE the transfer happens through the
        // `tokensToSend` hook. On the other hand, the `tokenReceived` hook, that is triggered after the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer before we mint so that any reentrancy would happen before the
        // assets are transferred and before the shares are minted, which is a valid state.
        // slither-disable-next-line reentrancy-no-eth
        SafeERC20Upgradeable.safeTransferFrom(_asset, caller, address(this), assets);
        _mint(receiver, shares);

        emit Deposit(caller, receiver, assets, shares);
    }

    /**
     * @dev Withdraw/redeem common workflow.
     */
    function _withdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) internal virtual {
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }

        // If _asset is ERC777, `transfer` can trigger a reentrancy AFTER the transfer happens through the
        // `tokensReceived` hook. On the other hand, the `tokensToSend` hook, that is triggered before the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer after the burn so that any reentrancy would happen after the
        // shares are burned and after the assets are transferred, which is a valid state.
        _burn(owner, shares);
        SafeERC20Upgradeable.safeTransfer(_asset, receiver, assets);

        emit Withdraw(caller, receiver, owner, assets, shares);
    }

    function _decimalsOffset() internal view virtual returns (uint8) {
        return 0;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20Upgradeable.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20MetadataUpgradeable is IERC20Upgradeable {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20PermitUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
interface IERC20PermitUpgradeable {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20Upgradeable {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20Upgradeable.sol";
import "../extensions/IERC20PermitUpgradeable.sol";
import "../../../utils/AddressUpgradeable.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20Upgradeable {
    using AddressUpgradeable for address;

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20Upgradeable token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20Upgradeable token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20Upgradeable token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20Upgradeable token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance + value));
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20Upgradeable token, address spender, uint256 value) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance - value));
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Compatible with tokens that require the approval to be set to
     * 0 before setting it to a non-zero value.
     */
    function forceApprove(IERC20Upgradeable token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeWithSelector(token.approve.selector, spender, value);

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, 0));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Use a ERC-2612 signature to set the `owner` approval toward `spender` on `token`.
     * Revert on invalid signature.
     */
    function safePermit(
        IERC20PermitUpgradeable token,
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        uint256 nonceBefore = token.nonces(owner);
        token.permit(owner, spender, value, deadline, v, r, s);
        uint256 nonceAfter = token.nonces(owner);
        require(nonceAfter == nonceBefore + 1, "SafeERC20: permit did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20Upgradeable token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        require(returndata.length == 0 || abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20Upgradeable token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return
            success && (returndata.length == 0 || abi.decode(returndata, (bool))) && AddressUpgradeable.isContract(address(token));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library AddressUpgradeable {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.0/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;
import "../proxy/utils/Initializable.sol";

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal onlyInitializing {
    }

    function __Context_init_unchained() internal onlyInitializing {
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library MathUpgradeable {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1, "Math: mulDiv overflow");

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result << 3) < value ? 1 : 0);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/StorageSlotUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

pragma solidity ^0.8.0;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * _Available since v4.1 for `address`, `bool`, `bytes32`, `uint256`._
 * _Available since v4.9 for `string`, `bytes`._
 */
library StorageSlotUpgradeable {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    struct StringSlot {
        string value;
    }

    struct BytesSlot {
        bytes value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/interfaces/IERC4626.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (interfaces/IERC4626.sol)

pragma solidity ^0.8.0;

import "../token/ERC20/IERC20.sol";
import "../token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @dev Interface of the ERC4626 "Tokenized Vault Standard", as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[ERC-4626].
 *
 * _Available since v4.7._
 */
interface IERC4626 is IERC20, IERC20Metadata {
    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /**
     * @dev Returns the address of the underlying token used for the Vault for accounting, depositing, and withdrawing.
     *
     * - MUST be an ERC-20 token contract.
     * - MUST NOT revert.
     */
    function asset() external view returns (address assetTokenAddress);

    /**
     * @dev Returns the total amount of the underlying asset that is “managed” by Vault.
     *
     * - SHOULD include any compounding that occurs from yield.
     * - MUST be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT revert.
     */
    function totalAssets() external view returns (uint256 totalManagedAssets);

    /**
     * @dev Returns the amount of shares that the Vault would exchange for the amount of assets provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Returns the amount of assets that the Vault would exchange for the amount of shares provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be deposited into the Vault for the receiver,
     * through a deposit call.
     *
     * - MUST return a limited value if receiver is subject to some deposit limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of assets that may be deposited.
     * - MUST NOT revert.
     */
    function maxDeposit(address receiver) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their deposit at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of Vault shares that would be minted in a deposit
     *   call in the same transaction. I.e. deposit should return the same or more shares as previewDeposit if called
     *   in the same transaction.
     * - MUST NOT account for deposit limits like those returned from maxDeposit and should always act as though the
     *   deposit would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewDeposit SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewDeposit(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Mints shares Vault shares to receiver by depositing exactly amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   deposit execution, and are accounted for during deposit.
     * - MUST revert if all of assets cannot be deposited (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of the Vault shares that can be minted for the receiver, through a mint call.
     * - MUST return a limited value if receiver is subject to some mint limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of shares that may be minted.
     * - MUST NOT revert.
     */
    function maxMint(address receiver) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their mint at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of assets that would be deposited in a mint call
     *   in the same transaction. I.e. mint should return the same or fewer assets as previewMint if called in the
     *   same transaction.
     * - MUST NOT account for mint limits like those returned from maxMint and should always act as though the mint
     *   would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewMint SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by minting.
     */
    function previewMint(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Mints exactly shares Vault shares to receiver by depositing amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the mint
     *   execution, and are accounted for during mint.
     * - MUST revert if all of shares cannot be minted (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function mint(uint256 shares, address receiver) external returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be withdrawn from the owner balance in the
     * Vault, through a withdraw call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxWithdraw(address owner) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their withdrawal at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of Vault shares that would be burned in a withdraw
     *   call in the same transaction. I.e. withdraw should return the same or fewer shares as previewWithdraw if
     *   called
     *   in the same transaction.
     * - MUST NOT account for withdrawal limits like those returned from maxWithdraw and should always act as though
     *   the withdrawal would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewWithdraw SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewWithdraw(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Burns shares from owner and sends exactly assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   withdraw execution, and are accounted for during withdraw.
     * - MUST revert if all of assets cannot be withdrawn (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * Note that some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of Vault shares that can be redeemed from the owner balance in the Vault,
     * through a redeem call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST return balanceOf(owner) if owner is not subject to any withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxRedeem(address owner) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their redeemption at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of assets that would be withdrawn in a redeem call
     *   in the same transaction. I.e. redeem should return the same or more assets as previewRedeem if called in the
     *   same transaction.
     * - MUST NOT account for redemption limits like those returned from maxRedeem and should always act as though the
     *   redemption would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewRedeem SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by redeeming.
     */
    function previewRedeem(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Burns exactly shares from owner and sends assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   redeem execution, and are accounted for during redeem.
     * - MUST revert if all of shares cannot be redeemed (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * NOTE: some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";
import "../extensions/IERC20Permit.sol";
import "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20 token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance + value));
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance - value));
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Compatible with tokens that require the approval to be set to
     * 0 before setting it to a non-zero value.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeWithSelector(token.approve.selector, spender, value);

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, 0));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Use a ERC-2612 signature to set the `owner` approval toward `spender` on `token`.
     * Revert on invalid signature.
     */
    function safePermit(
        IERC20Permit token,
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        uint256 nonceBefore = token.nonces(owner);
        token.permit(owner, spender, value, deadline, v, r, s);
        uint256 nonceAfter = token.nonces(owner);
        require(nonceAfter == nonceBefore + 1, "SafeERC20: permit did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        require(returndata.length == 0 || abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return
            success && (returndata.length == 0 || abi.decode(returndata, (bool))) && Address.isContract(address(token));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.0/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1, "Math: mulDiv overflow");

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result << 3) < value ? 1 : 0);
        }
    }
}

// ============================================================
// FILE: src/protocol-v2/chainSonic/LedgityYieldVaultSonic.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Contracts
import { LedgityYieldVault } from "src/protocol-v2/LedgityYieldVault.sol";
// Libraries
import { SonicFeeMRegister } from "src/protocol-v2/chainSonic/SonicFeeMRegister.sol";
// Interfaces
import { ILedgityYieldVault } from "src/protocol-v2/interfaces/ILedgityYieldVault.sol";
import { IVaultLiquidityModule } from "src/protocol-v2/interfaces/IVaultLiquidityModule.sol";

/**
 * @title LedgityYieldVaultSonic
 * @notice Ledgity Yield ERC-4626 Vault for RWA assets with on-chain liquidity management and yield generation
 * @notice This contract extends LedgityYieldVault and adds Sonic FeeM registration functionality
 *
 * @author vBlackwhale (https://github.com/vblackwhale)
 */
contract LedgityYieldVaultSonic is LedgityYieldVault {
  function initializeAndRegister(
    VaultParams calldata params,
    VaultLiquidityInitParams calldata vaultLiquidityInitParams
  ) public {
    /// @dev FeeM registration was under maintenance during deploy
    // SonicFeeMRegister.registerContract();
    LedgityYieldVault.initialize(params, vaultLiquidityInitParams);
  }
}

// ============================================================
// FILE: src/protocol-v2/chainSonic/SonicFeeMRegister.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/**
 * @title SonicFeeMRegister
 * @notice Register a contract on Sonic FeeM
 * @custom:doc https://docs.soniclabs.com/funding/fee-monetization
 */
library SonicFeeMRegister {
  function registerContract() public {
    (bool _success, ) = address(
      0xDC2B0D2Dd2b7759D97D50db4eabDC36973110830
    ).call(abi.encodeWithSignature("selfRegister(uint256)", 149));
    require(_success, "FeeM registration failed");
  }
}

// ============================================================
// FILE: src/protocol-v2/interfaces/IAaveLendingPoolV3.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.18;

library DataTypes {
  struct ReserveData {
    //stores the reserve configuration
    ReserveConfigurationMap configuration;
    //the liquidity index. Expressed in ray
    uint128 liquidityIndex;
    //the current supply rate. Expressed in ray
    uint128 currentLiquidityRate;
    //variable borrow index. Expressed in ray
    uint128 variableBorrowIndex;
    //the current variable borrow rate. Expressed in ray
    uint128 currentVariableBorrowRate;
    //the current stable borrow rate. Expressed in ray
    uint128 currentStableBorrowRate;
    //timestamp of last update
    uint40 lastUpdateTimestamp;
    //the id of the reserve. Represents the position in the list of the active reserves
    uint16 id;
    //aToken address
    address aTokenAddress;
    //stableDebtToken address
    address stableDebtTokenAddress;
    //variableDebtToken address
    address variableDebtTokenAddress;
    //address of the interest rate strategy
    address interestRateStrategyAddress;
    //the current treasury balance, scaled
    uint128 accruedToTreasury;
    //the outstanding unbacked aTokens minted through the bridging feature
    uint128 unbacked;
    //the outstanding debt borrowed against this asset in isolation mode
    uint128 isolationModeTotalDebt;
  }

  struct ReserveConfigurationMap {
    //bit 0-15: LTV
    //bit 16-31: Liq. threshold
    //bit 32-47: Liq. bonus
    //bit 48-55: Decimals
    //bit 56: reserve is active
    //bit 57: reserve is frozen
    //bit 58: borrowing is enabled
    //bit 59: stable rate borrowing enabled
    //bit 60: asset is paused
    //bit 61: borrowing in isolation mode is enabled
    //bit 62: siloed borrowing enabled
    //bit 63: flashloaning enabled
    //bit 64-79: reserve factor
    //bit 80-115 borrow cap in whole tokens, borrowCap == 0 => no cap
    //bit 116-151 supply cap in whole tokens, supplyCap == 0 => no cap
    //bit 152-167 liquidation protocol fee
    //bit 168-175 eMode category
    //bit 176-211 unbacked mint cap in whole tokens, unbackedMintCap == 0 => minting disabled
    //bit 212-251 debt ceiling for isolation mode with (ReserveConfiguration::DEBT_CEILING_DECIMALS) decimals
    //bit 252-255 unused

    uint256 data;
  }
}

/**
 * @title IPool
 * @author Aave
 * @notice Defines the basic interface for an Aave Pool.
 */
interface IAaveLendingPoolV3 {
  /**
   * @notice Supplies an `amount` of underlying asset into the reserve, receiving in return overlying aTokens.
   * - E.g. User supplies 100 USDC and gets in return 100 aUSDC
   * @param asset The address of the underlying asset to supply
   * @param amount The amount to be supplied
   * @param onBehalfOf The address that will receive the aTokens, same as msg.sender if the user
   *   wants to receive them on his own wallet, or a different address if the beneficiary of aTokens
   *   is a different wallet
   * @param referralCode Code used to register the integrator originating the operation, for potential rewards.
   *   0 if the action is executed directly by the user, without any middle-man
   */
  function supply(
    address asset,
    uint256 amount,
    address onBehalfOf,
    uint16 referralCode
  ) external;

  /**
   * @notice Supplies an `amount` of underlying asset into the reserve, receiving in return overlying aTokens.
   * - E.g. User supplies 100 USDC and gets in return 100 aUSDC
   * @dev Deprecated: Use the `supply` function instead
   * @param asset The address of the underlying asset to supply
   * @param amount The amount to be supplied
   * @param onBehalfOf The address that will receive the aTokens, same as msg.sender if the user
   *   wants to receive them on his own wallet, or a different address if the beneficiary of aTokens
   *   is a different wallet
   * @param referralCode Code used to register the integrator originating the operation, for potential rewards.
   *   0 if the action is executed directly by the user, without any middle-man
   */
  function deposit(
    address asset,
    uint256 amount,
    address onBehalfOf,
    uint16 referralCode
  ) external;

  /**
   * @notice Withdraws an `amount` of underlying asset from the reserve, burning the equivalent aTokens owned
   * E.g. User has 100 aUSDC, calls withdraw() and receives 100 USDC, burning the 100 aUSDC
   * @param asset The address of the underlying asset to withdraw
   * @param amount The underlying amount to be withdrawn
   *   - Send the value type(uint256).max in order to withdraw the whole aToken balance
   * @param to The address that will receive the underlying, same as msg.sender if the user
   *   wants to receive it on his own wallet, or a different address if the beneficiary is a
   *   different wallet
   * @return The final amount withdrawn
   */
  function withdraw(
    address asset,
    uint256 amount,
    address to
  ) external returns (uint256);

  /**
   * @notice Returns the normalized income of the reserve
   * @param asset The address of the underlying asset of the reserve
   * @return The reserve's normalized income
   */
  function getReserveNormalizedIncome(
    address asset
  ) external view returns (uint256);

  /**
   * @notice Returns the normalized variable debt per unit of asset
   * @dev WARNING: This function is intended to be used primarily by the protocol itself to get a
   * "dynamic" variable index based on time, current stored index and virtual rate at the current
   * moment (approx. a borrower would get if opening a position). This means that is always used in
   * combination with variable debt supply/balances.
   * If using this function externally, consider that is possible to have an increasing normalized
   * variable debt that is not equivalent to how the variable debt index would be updated in storage
   * (e.g. only updates with non-zero variable debt supply)
   * @param asset The address of the underlying asset of the reserve
   * @return The reserve normalized variable debt
   */
  function getReserveNormalizedVariableDebt(
    address asset
  ) external view returns (uint256);

  /**
   * @notice Returns the state and configuration of the reserve
   * @param asset The address of the underlying asset of the reserve
   * @return The state and configuration data of the reserve
   */
  function getReserveData(
    address asset
  ) external view returns (DataTypes.ReserveData memory);
}

// ============================================================
// FILE: src/protocol-v2/interfaces/IGlobalAccessList.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/**
 * @title IGlobalAccessList
 * @notice Interface for the GlobalAccessList contract that manages restricted accounts.
 * @author vBlackwhale (https://github.com/vblackwhale)
 */
interface IGlobalAccessList {
  // =========== ERRORS =========== //

  /// @notice Thrown when trying to restrict an account that is already restricted
  error AccountAlreadyRestricted();
  /// @notice Thrown when trying to unrestrict an account that is not restricted
  error AccountNotRestricted();

  // =========== EVENTS =========== //

  /// @notice Emitted when an account is added to the restricted list
  /// @param account The address of the restricted account
  event RestrictAccount(address indexed account);
  /// @notice Emitted when an account is removed from the restricted list
  /// @param account The address of the unrestricted account
  event UnrestrictAccount(address indexed account);

  // =========== READ FUNCTIONS =========== //

  /**
   * @notice Checks whether a given account is restricted.
   * @param account Address of the account to check.
   * @return True if the account is restricted, false otherwise
   */
  function isRestricted(address account) external view returns (bool);

  /**
   * @notice Returns a paginated list of restricted accounts.
   * @param startIndex The index of the first account to return.
   * @param nbAccounts The number of accounts to return.
   * @return accounts An array of restricted accounts addresses.
   */
  function getRestrictedAccounts(
    uint256 startIndex,
    uint256 nbAccounts
  ) external view returns (address[] memory accounts);

  // =========== WRITE FUNCTIONS =========== //

  /**
   * @notice Adds a given account to the restricted list.
   * @dev Only callable by the contract owner.
   * @param account The account's address to be restricted.
   */
  function restrictAccount(address account) external;

  /**
   * @notice Removes a given account from the restricted list.
   * @dev Only callable by the contract owner. Uses swap-and-pop for gas efficiency.
   * @param account The account's address to be unrestricted.
   */
  function unRestrictAccount(address account) external;
}

// ============================================================
// FILE: src/protocol-v2/interfaces/IGlobalOwner.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/**
 * @title IGlobalOwner
 * @notice Interface for the GlobalOwner contract that holds the address of a global 
 * owner account shared by all contracts of the Ledgity Yield's codebase.
 */
interface IGlobalOwner {
    /**
     * @notice Returns the address of the current owner.
     * @return The address of the current owner.
     */
    function owner() external view returns (address);

    /**
     * @notice Returns the address of the pending owner.
     * @return The address of the pending owner.
     */
    function pendingOwner() external view returns (address);

    /**
     * @notice Starts the ownership transfer of the contract to a new account.
     * @param newOwner The address to transfer ownership to.
     */
    function transferOwnership(address newOwner) external;

    /**
     * @notice The new owner accepts the ownership transfer.
     */
    function acceptOwnership() external;

    /**
     * @notice Leaves the contract without owner. Can only be called by the current owner.
     */
    function renounceOwnership() external;
}

// ============================================================
// FILE: src/protocol-v2/interfaces/IGlobalPause.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/**
 * @title IGlobalPause
 * @notice Interface for the GlobalPause contract that holds a global pause state 
 * shared by all contracts of the Ledgity Yield codebase.
 */
interface IGlobalPause {
    /**
     * @notice Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @notice Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @notice Returns true if the contract is paused, and false otherwise.
     * @return True if paused, false otherwise.
     */
    function paused() external view returns (bool);

    /**
     * @notice Triggers stopped state.
     */
    function pause() external;

    /**
     * @notice Returns to normal state.
     */
    function unpause() external;

    /**
     * @notice Returns the address of the current owner.
     * @return The address of the current owner.
     */
    function owner() external view returns (address);

    /**
     * @notice Returns the address of the pending owner.
     * @return The address of the pending owner.
     */
    function pendingOwner() external view returns (address);

    /**
     * @notice Starts the ownership transfer of the contract to a new account.
     * @param newOwner The address to transfer ownership to.
     */
    function transferOwnership(address newOwner) external;

    /**
     * @notice The new owner accepts the ownership transfer.
     */
    function acceptOwnership() external;

    /**
     * @notice Leaves the contract without owner. Can only be called by the current owner.
     */
    function renounceOwnership() external;
}

// ============================================================
// FILE: src/protocol-v2/interfaces/ILedgityDataProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

interface ILedgityDataProvider {
  /**
   * Structure representing a queued withdrawal request (internal storage)
   * @param user Address of the user who requested withdrawal
   * @param amount Amount of underlying assets to withdraw
   * @param timestamp When the withdrawal request was created
   * @param processed Whether the request has been fulfilled
   */
  struct WithdrawalRequest {
    address user;
    uint256 amount;
    uint256 timestamp;
    bool processed;
  }

  /**
   * @notice Structure representing a queued withdrawal request (read view)
   * @param requestId Unique identifier for the withdrawal request
   * @param user Address of the user who requested withdrawal
   * @param amount Amount of underlying assets to withdraw
   * @param timestamp When the withdrawal request was created
   * @param processed Whether the request has been fulfilled
   * @param hasFeeReduction Whether the user has a fee reduction
   */
  struct WithdrawalRequestRead {
    uint256 requestId;
    address user;
    uint256 amount;
    uint256 timestamp;
    bool processed;
    bool hasFeeReduction;
  }

  /**
   * @notice Get withdrawal requests with optional filtering
   * @param onlyPending If true, only return non-processed requests
   * @param maxRange Maximum number of requests to return (0 = return all)
   * @return filteredRequests Array of withdrawal requests with read structure
   */
  function getWithdrawalRequests(
    bool onlyPending,
    uint256 maxRange
  )
    external
    view
    returns (WithdrawalRequestRead[] memory filteredRequests);

  /**
   * @notice Get withdrawal requests for a specific user
   * @param user The user address
   * @param onlyPending If true, only return non-processed requests
   * @param maxRange Maximum number of requests to return (0 = return all)
   * @return filteredRequests Array of withdrawal requests for the user with read structure
   */
  function getUserWithdrawalRequests(
    address user,
    bool onlyPending,
    uint256 maxRange
  )
    external
    view
    returns (WithdrawalRequestRead[] memory filteredRequests);

  /**
   * @notice Get specific withdrawal requests by their IDs
   * @param requestIds Array of request IDs to fetch
   * @return selectedRequests Array of withdrawal requests corresponding to the IDs with read structure
   */
  function getWithdrawalRequestsByIds(
    uint256[] calldata requestIds
  )
    external
    view
    returns (WithdrawalRequestRead[] memory selectedRequests);
}

// ============================================================
// FILE: src/protocol-v2/interfaces/ILedgityYieldVault.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Interfaces
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IAaveLendingPoolV3 } from "src/protocol-v2/interfaces/IAaveLendingPoolV3.sol";
import { ILedgityDataProvider } from "src/protocol-v2/interfaces/ILedgityDataProvider.sol";
import { IVaultLiquidityModule } from "src/protocol-v2/interfaces/IVaultLiquidityModule.sol";

interface ILedgityYieldVault is ILedgityDataProvider {
  struct VaultParams {
    string name;
    string symbol;
    IERC20 asset;
    IERC20 lToken;
    IERC20 stakeToken;
    uint256 stakeForFeeReduction;
    uint256 stakeForInstantWithdrawal;
    address globalOwner;
    address globalPause;
    address globalAccessList;
    address liquidityManager;
    address payable feeRecipient;
    uint256 liquidityBufferRate;
    IAaveLendingPoolV3 aaveLendingPool;
  }

  function initialize(
    VaultParams calldata params,
    IVaultLiquidityModule.VaultLiquidityInitParams
      calldata vaultLiquidityInitParams
  ) external;

  function lToken() external view returns (IERC20);

  function liquidityManager() external view returns (address);

  function feeRecipient() external view returns (address payable);

  function liquidityBufferRate() external view returns (uint256);

  function hasBufferStrategy() external view returns (bool);

  function aaveLendingPool()
    external
    view
    returns (IAaveLendingPoolV3);

  function aToken() external view returns (IERC20);

  function stakeToken() external view returns (IERC20);

  function stakeForFeeReduction() external view returns (uint256);

  function withdrawalRequests(
    uint256
  )
    external
    view
    returns (
      address user,
      uint256 assets,
      uint256 timestamp,
      bool processed
    );

  function getBufferAssets() external view returns (uint256);

  function getWithdrawalRequests(
    bool onlyPending,
    uint256 maxRange
  )
    external
    view
    returns (
      ILedgityDataProvider.WithdrawalRequestRead[] memory requests
    );

  function getUserWithdrawalRequests(
    address user,
    bool onlyPending,
    uint256 maxRange
  )
    external
    view
    returns (
      ILedgityDataProvider.WithdrawalRequestRead[] memory requests
    );

  function getWithdrawalRequestsByIds(
    uint256[] calldata requestIds
  )
    external
    view
    returns (
      ILedgityDataProvider.WithdrawalRequestRead[] memory requests
    );

  function getWithdrawalRequestCount()
    external
    view
    returns (uint256);

  function migrateLToken(
    uint256 amount
  ) external returns (uint256 shares);

  function deposit(
    uint256 assets,
    address receiver
  ) external returns (uint256);

  function mint(
    uint256 shares,
    address receiver
  ) external returns (uint256);

  function withdraw(
    uint256 assets_,
    address receiver_,
    address owner_
  ) external returns (uint256);

  function redeem(
    uint256 shares_,
    address receiver_,
    address owner_
  ) external returns (uint256);

  function requestWithdrawal(uint256 shares) external payable;

  function harvestFees() external;

  function depositToBuffer(uint256 amount) external;

  function skimBuffer(uint256 amount) external;

  function processRequests(
    uint256[] calldata requestIds,
    uint256 addedLiquidity
  ) external;

  function updateVaultManagers(
    address newLiquidityManager,
    address payable newFeeRecipient
  ) external;

  function updateBufferRate(uint256 bufferRate) external;

  function updateVaultParams(
    IERC20 newLToken,
    IERC20 newStakeToken,
    uint256 newStakeForFeeReduction,
    uint256 newStakeForInstantWithdrawal,
    IAaveLendingPoolV3 newAaveLendingPool
  ) external;
}

// ============================================================
// FILE: src/protocol-v2/interfaces/IVaultLiquidityModule.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

interface IVaultLiquidityModule {
  struct VaultLiquidityInitParams {
    uint256 highWaterMark;
    uint256 initialAssetsPerShare; // Initial assets per share of vault (asset decimals)
    uint256 yieldAPR;
    uint256 managementFeeRate;
    uint256 performanceFeeRate;
    uint256 withdrawalFeeRate;
    uint256 withdrawalGasFee;
    uint8 deploymentDelay;
  }

  /** ======== EVENTS ======== */

  event RateCheckpointUpdated(uint256 newRate, uint256 newAPR);

  event APRUpdated(uint256 newAPR, uint256 oldAPR);

  event FeeRatesUpdated(
    uint256 managementFeeRate,
    uint256 performanceRate,
    uint256 withdrawalRate
  );

  event AccountWithdrawalFeeSet(
    address indexed account,
    uint256 withdrawalFee
  );

  event TotalAssetsUpdated(
    uint256 oldTotalAssets,
    uint256 newTotalAssets
  );

  event DeploymentDelayUpdated(uint8 oldDelay, uint8 newDelay);

  event HighWaterMarkUpdated(
    uint256 oldHighWaterMark,
    uint256 newHighWaterMark
  );

  /** ======== FUNCTIONS ======== */

  function RAY() external view returns (uint256);

  function lastCompoundTime() external view returns (uint256);

  function lastFeeTime() external view returns (uint256);

  function highWaterMark() external view returns (uint256);

  function deploymentDelay() external view returns (uint8);

  function yieldAPR() external view returns (uint256);

  function managementFeeRate() external view returns (uint256);

  function performanceFeeRate() external view returns (uint256);

  function withdrawalFeeRate() external view returns (uint256);

  function withdrawalGasFee() external view returns (uint256);

  function accountWithdrawalFee(
    address account
  ) external view returns (uint256);

  function totalAssets()
    external
    view
    returns (uint256 currentTotalAssets);

  function convertToShares(
    uint256 assets
  ) external view returns (uint256 shares);

  function convertToAssets(
    uint256 shares
  ) external view returns (uint256 assets);

  function setTotalAssets(uint256 newTotalAssets) external;

  function updateAPR(uint256 newAPR) external;

  function updateFeeRates(
    uint256 managementRate_,
    uint256 performanceRate_,
    uint256 withdrawalRate_
  ) external;

  function setAccountWithdrawalFee(
    address account,
    uint256 withdrawalFee
  ) external;

  function updateDeploymentDelay(uint8 newDeploymentDelay) external;

  function updateHighWaterMark(uint256 newHighWaterMark) external;
}

// ============================================================
// FILE: src/protocol-v2/LedgityYieldVault.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Contracts
import { CCIPTokenModule } from "src/protocol-v2/modules/CCIPTokenModule.sol";
import { VaultLiquidityModule } from "src/protocol-v2/modules/VaultLiquidityModule.sol";
import { AdministeredUpgradable } from "src/protocol-v2/modules/AdministeredUpgradable.sol";
//
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { ERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
// Libraries
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { LedgityDataProvider } from "src/protocol-v2/libraries/LedgityDataProvider.sol";
// Interfaces
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { IAaveLendingPoolV3 } from "src/protocol-v2/interfaces/IAaveLendingPoolV3.sol";
import { ILedgityYieldVault } from "src/protocol-v2/interfaces/ILedgityYieldVault.sol";
import { ILedgityDataProvider } from "src/protocol-v2/interfaces/ILedgityDataProvider.sol";

/**
 * @title LedgityYieldVault
 * @notice Ledgity Yield ERC-4626 Vault for RWA assets with on-chain liquidity management and yield generation
 *
 * @author vBlackwhale (https://github.com/vblackwhale)
 */
contract LedgityYieldVault is
  ILedgityYieldVault,
  AdministeredUpgradable,
  CCIPTokenModule,
  VaultLiquidityModule
{
  // ======== LIBS ======== //
  using SafeERC20 for IERC20;
  using LedgityDataProvider for ILedgityDataProvider.WithdrawalRequest[];

  // ======== ERRORS ======== //

  error ZeroAmount();
  error ZeroAddress();
  error NoLTokenSet();
  error OnlyLiquidityManager();
  error MissingWithdrawalRequestFee();
  error RequestAlreadyProcessed();
  error InsufficientLiquidity();
  error InsufficientStakeForInstantWithdrawal();
  error TransferFailed();

  // ======== STORAGE ======== //

  // The legacy L-Token that can be migrated to vault shares
  IERC20 public lToken;

  // Address authorized to manage vault liquidity and process withdrawals
  address public liquidityManager;
  // Address that receives management and performance fees
  address payable public feeRecipient;

  // Target percentage of total assets to maintain in liquidity buffer in RAY
  uint256 public liquidityBufferRate;

  // Whether the vault uses Aave as a buffer strategy for idle funds
  bool public hasBufferStrategy;
  // Aave lending pool contract for buffer strategy operations
  IAaveLendingPoolV3 public aaveLendingPool;
  // Aave interest bearing token address (aToken) or zero address if no Aave integration
  IERC20 public aToken;

  // Token representing user's stake in the protocol for fee reductions
  IERC20 public stakeToken;
  // The amount of stake token required to receive a withdrawal fee reduction
  uint256 public stakeForFeeReduction;
  // The amount of stake token required to make instant withdrawal
  uint256 public stakeForInstantWithdrawal;

  // Array storing all withdrawal requests in chronological order
  ILedgityDataProvider.WithdrawalRequest[] public withdrawalRequests;

  // ======== EVENTS ======== //

  /**
   * Emitted when a user requests a withdrawal
   * @param requestId Unique identifier for the withdrawal request
   * @param user Address of the user requesting withdrawal
   * @param shares Amount of shares being withdrawn
   */
  event WithdrawalRequested(
    uint256 indexed requestId,
    address indexed user,
    uint256 shares
  );

  /**
   * Emitted when a withdrawal request is processed and fulfilled
   * @param requestId Unique identifier for the processed request
   * @param user Address of the user receiving the withdrawal
   * @param amount Amount of assets transferred to user
   */
  event WithdrawalProcessed(
    uint256 indexed requestId,
    address indexed user,
    uint256 amount
  );

  /**
   * Emitted when the liquidity manager and fee recipient are updated
   * @param liquidityManager The new liquidity manager address
   * @param feeRecipient The new fee recipient address
   */
  event VaultManagersUpdated(
    address indexed liquidityManager,
    address indexed feeRecipient
  );

  /**
   * Emitted when the liquidity buffer rate is updated
   * @param bufferRate The new liquidity buffer rate
   */
  event BufferRateUpdated(uint256 bufferRate);

  /**
   * Emitted when the vault parameters are updated
   * @param newLToken The new L-Token address
   * @param newStakeToken The new stake token address
   * @param newStakeForFeeReduction The new stake balance for fee reduction
   * @param newStakeForInstantWithdrawal The new stake balance for instant withdrawal
   * @param newAaveLendingPool The new Aave lending pool address
   */
  event VaultParamsUpdated(
    IERC20 indexed newLToken,
    IERC20 indexed newStakeToken,
    uint256 newStakeForFeeReduction,
    uint256 newStakeForInstantWithdrawal,
    IAaveLendingPoolV3 indexed newAaveLendingPool
  );

  // ======== INITIALIZE ======== //

  /**
   * @notice Initializes the Vault contract
   * @param params Struct containing vault-specific initialization parameters
   * @param vaultLiquidityInitParams Struct containing initialization parameters for fees, APR, and other settings
   */
  function initialize(
    VaultParams calldata params,
    VaultLiquidityInitParams calldata vaultLiquidityInitParams
  ) public initializer {
    if (
      address(params.asset) == address(0) ||
      params.liquidityManager == address(0) ||
      params.feeRecipient == address(0)
    ) revert ZeroAddress();

    __ERC20_init(params.name, params.symbol);
    __ERC4626_init(IERC20Upgradeable(address(params.asset)));
    __AdministeredUpgradable_init(
      params.globalOwner,
      params.globalPause,
      params.globalAccessList
    );
    // Initialize the liquidity module with APR and fee rates
    __VaultLiquidityModule_init(
      vaultLiquidityInitParams,
      address(params.asset)
    );
    /// @dev This simplifies the cross chain initialization process before being set back to the global owner
    __CCIPCompatible_init(msg.sender);

    liquidityManager = params.liquidityManager;
    feeRecipient = params.feeRecipient;

    lToken = params.lToken;
    stakeToken = params.stakeToken;
    stakeForFeeReduction = params.stakeForFeeReduction;
    stakeForInstantWithdrawal = params.stakeForInstantWithdrawal;
    liquidityBufferRate = params.liquidityBufferRate;

    _setupBufferStrategy(params.aaveLendingPool);
  }

  // ======== MODIFIERS ======== //

  /* @notice Restricts function access to the authorized liquidity manager
   */
  modifier onlyLiquidityManager() {
    if (msg.sender != liquidityManager) revert OnlyLiquidityManager();
    _;
  }

  // ======== OVERRIDES ======== //

  /**
   * @notice Restricts token transfers from or to restricted addresses
   * @param from The sender of the transfer
   * @param to The recipient of the transfer
   * @param amount The amount of tokens being transferred
   */
  function _beforeTokenTransfer(
    address from,
    address to,
    uint256 amount
  )
    internal
    override(ERC20Upgradeable)
    whenNotPaused
    notRestricted(from)
    notRestricted(to)
  {
    super._beforeTokenTransfer(from, to, amount);
  }

  /**
   * @notice Returns the owner of the contract
   * @return The owner's address
   */
  function owner()
    public
    view
    override(OwnableUpgradeable, AdministeredUpgradable)
    returns (address)
  {
    return globalOwner.owner();
  }

  /* @notice Returns the number of decimals used for the vault token (18)
   * @return The number of decimals
   */
  function decimals()
    public
    pure
    override(ERC20Upgradeable, ERC4626Upgradeable)
    returns (uint8)
  {
    return 18;
  }

  /**
   * @notice Handles minting through CCIP cross-chain transfers by taking into account asset rebalance
   * @param account The account to mint shares to
   * @param shares The amount of shares to mint
   */
  function _handleMint(
    address account,
    uint256 shares
  ) internal override(CCIPTokenModule) returns (bool) {
    harvestFees();
    _addAssets(convertToAssets(shares));

    _mint(account, shares);
    return true;
  }

  /**
   * @notice Handles burning through CCIP cross-chain transfers by taking into account asset rebalance
   * @param account The account to burn shares from
   * @param shares The amount of shares to burn
   */
  function _handleBurn(
    address account,
    uint256 shares
  ) internal override(CCIPTokenModule) returns (bool) {
    harvestFees();
    _withdrawAssets(convertToAssets(shares));

    _burn(account, shares);
    return true;
  }

  // ======== VIEW ======== //

  /**
   * @notice Get the buffer strategy assets
   * @return The buffer strategy assets
   */
  function getBufferAssets() public view returns (uint256) {
    return
      hasBufferStrategy
        ? aToken.balanceOf(address(this))
        : IERC20(asset()).balanceOf(address(this));
  }

  /**
   * @notice Get withdrawal requests with optional filtering
   * @param onlyPending If true, only return non-processed requests
   * @param maxRange Maximum number of requests to return (0 = return all)
   * @return requests Array of withdrawal requests with read structure
   */
  function getWithdrawalRequests(
    bool onlyPending,
    uint256 maxRange
  )
    external
    view
    returns (
      ILedgityDataProvider.WithdrawalRequestRead[] memory requests
    )
  {
    return
      withdrawalRequests.getWithdrawalRequests(
        stakeToken,
        stakeForFeeReduction,
        onlyPending,
        maxRange
      );
  }

  /**
   * @notice Get withdrawal requests for a specific user
   * @param user The user address
   * @param onlyPending If true, only return non-processed requests
   * @param maxRange Maximum number of requests to return (0 = return all)
   * @return requests Array of withdrawal requests for the user with read structure
   */
  function getUserWithdrawalRequests(
    address user,
    bool onlyPending,
    uint256 maxRange
  )
    external
    view
    returns (
      ILedgityDataProvider.WithdrawalRequestRead[] memory requests
    )
  {
    return
      withdrawalRequests.getUserWithdrawalRequests(
        stakeToken,
        stakeForFeeReduction,
        user,
        onlyPending,
        maxRange
      );
  }

  /**
   * @notice Get specific withdrawal requests by their IDs
   * @param requestIds Array of request IDs to fetch
   * @return requests Array of withdrawal requests corresponding to the IDs with read structure
   */
  function getWithdrawalRequestsByIds(
    uint256[] calldata requestIds
  )
    external
    view
    returns (
      ILedgityDataProvider.WithdrawalRequestRead[] memory requests
    )
  {
    return
      withdrawalRequests.getWithdrawalRequestsByIds(
        stakeToken,
        stakeForFeeReduction,
        requestIds
      );
  }

  /**
   * @notice Get total number of withdrawal requests
   * @return Total number of requests created
   */
  function getWithdrawalRequestCount()
    external
    view
    returns (uint256)
  {
    return withdrawalRequests.length;
  }

  // ======== INTERNAL HELPERS ======== //

  /**
   * @notice Setup the buffer strategy
   * @param aaveLendingPool_ The Aave lending pool address
   */
  function _setupBufferStrategy(
    IAaveLendingPoolV3 aaveLendingPool_
  ) private {
    if (address(aaveLendingPool_) != address(0)) {
      aaveLendingPool = aaveLendingPool_;
      aToken = IERC20(
        aaveLendingPool_
          .getReserveData(address(asset()))
          .aTokenAddress
      );

      // Validate that aToken was properly retrieved
      if (address(aToken) != address(0)) {
        hasBufferStrategy = true;
        IERC20(asset()).forceApprove(
          address(aaveLendingPool_),
          type(uint256).max
        );
      }
    } else {
      hasBufferStrategy = false;
      aaveLendingPool = IAaveLendingPoolV3(address(0));
      aToken = IERC20(address(0));
    }
  }

  // ======== BUFFER INTERNAL HELPERS ======== //

  /**
   * @notice Deposits the specified amount of assets into the Aave Lending Pool
   * @param amountAssets The amount of assets to deposit
   */
  function _investBuffer(uint256 amountAssets) private {
    /// @dev We already approved the contract in the initializer
    aaveLendingPool.deposit(asset(), amountAssets, address(this), 0);
  }

  /**
   * @notice Withdraws the specified amount of assets from the Aave Lending Pool
   * @param to The address to which the assets will be transferred
   * @param amountAssets The amount of assets to withdraw
   */
  function _withdrawBuffer(address to, uint256 amountAssets) private {
    if (hasBufferStrategy) {
      /// @dev In AAVE the aTokens are rebase tokens so underlying amount is the same as aToken amount
      aaveLendingPool.withdraw(asset(), amountAssets, to);
    } else {
      IERC20(asset()).safeTransfer(to, amountAssets);
    }
  }

  // ======== VAULT INTERNAL HELPERS ======== //

  /**
   * @notice Internal function to handle shares conversion and fees on withdrawal
   * @param owner_ The address that called the withdraw function
   * @param shares_ The number of shares to withdraw
   */
  function _burnSharesTakeFeesOnWithdrawal(
    address owner_,
    uint256 shares_
  ) internal returns (uint256 /*netAssets*/) {
    if (shares_ == 0) revert ZeroAmount();

    // Take fees before processing
    harvestFees();

    // Calculate underlying amount using updated rate
    uint256 withdrawalFee;
    if (
      stakeForFeeReduction != 0 &&
      address(stakeToken) != address(0) &&
      stakeToken.balanceOf(owner_) < stakeForFeeReduction
    ) {
      withdrawalFee = _computeWithdrawalFee(shares_, owner_);
      /// @dev Transfer fee shares to recipient to avoid dilution
      _transfer(owner_, feeRecipient, withdrawalFee);
    }

    uint256 netShares = shares_ - withdrawalFee;
    uint256 netAssets = convertToAssets(netShares);

    _burn(owner_, netShares);
    _withdrawAssets(netAssets);

    return netAssets;
  }

  /**
   * @notice Internal function to handle withdraw tokens
   * @param caller_ The address that called the withdraw function
   * @param receiver_ The address to receive the underlying
   * @param owner_ The owner of the shares tokens
   * @param shares_ The amount of shares tokens to withdraw
   */
  function _withdrawFromVault(
    address caller_,
    address receiver_,
    address owner_,
    uint256 /* assets_ */,
    uint256 shares_
  )
    internal
    whenNotPaused
    notRestricted(caller_)
    returns (uint256 netAssets)
  {
    /// @dev owner and receiver (from/to) restricted status is checked in _beforeTokenTransfer

    if (
      stakeForInstantWithdrawal != 0 &&
      address(stakeToken) != address(0) &&
      stakeToken.balanceOf(caller_) < stakeForInstantWithdrawal
    ) revert InsufficientStakeForInstantWithdrawal();

    if (caller_ != owner_) {
      _spendAllowance(owner_, caller_, shares_);
    }

    netAssets = _burnSharesTakeFeesOnWithdrawal(owner_, shares_);

    // slither-disable-next-line reentrancy-no-eth
    _withdrawBuffer(receiver_, netAssets);

    emit Withdraw(caller_, receiver_, owner_, netAssets, shares_);
  }

  /**
   * @notice Internal function to handle depositing underlying
   * @param caller_ The address that called the deposit function
   * @param receiver_ The address to receive the minted shares
   * @param assets_ The amount of underlying to deposit
   */
  function _depositToVault(
    address caller_,
    address receiver_,
    uint256 assets_,
    uint256 /* shares */
  )
    internal
    whenNotPaused
    notRestricted(caller_)
    returns (uint256 netShares)
  {
    /// @dev owner and receiver (from/to) restricted status is checked in _beforeTokenTransfer

    if (assets_ == 0) revert ZeroAmount();

    // Take fees before processing
    harvestFees();

    // Apply capital deployment impact to amount of shares
    uint256 maturityImpact = _computeMaturityImpact(assets_);
    uint256 netDeposit = assets_ - maturityImpact;
    netShares = convertToShares(netDeposit);

    /// @dev Add assets before computing the expected buffer balance
    _addAssets(netDeposit);

    // Calculate expected buffer balance after this deposit
    uint256 expectedBufferBalance = (totalAssets() *
      liquidityBufferRate) / RAY;

    uint256 currentBufferBalance = getBufferAssets();

    uint256 bufferAmount;
    uint256 vaultAmount;

    if (currentBufferBalance < expectedBufferBalance) {
      uint256 bufferDeficit = expectedBufferBalance -
        currentBufferBalance;

      // Use smaller amount between deposit amount and buffer deficit
      bufferAmount = assets_ < bufferDeficit
        ? assets_
        : bufferDeficit;
      vaultAmount = assets_ - bufferAmount;
    } else {
      // Buffer is at or above target - send all to liquidity manager
      bufferAmount = 0;
      vaultAmount = assets_;
    }

    IERC20(asset()).safeTransferFrom(caller_, address(this), assets_);

    // slither-disable-next-line reentrancy-no-eth
    if (0 < bufferAmount && hasBufferStrategy) {
      _investBuffer(bufferAmount);
      /// @dev If no buffer strategy, assets stay in contract as underlying
    }
    if (0 < vaultAmount) {
      IERC20(asset()).safeTransfer(liquidityManager, vaultAmount);
    }

    _mint(receiver_, netShares);

    emit Deposit(caller_, receiver_, assets_, netShares);
  }

  // ======== WRITE FUNCTIONS ======== //

  /**
   * @notice Migrate legacy L-Tokens to vault shares at 1:1 rate
   * @param amount Amount of L-Tokens to migrate
   * @return shares Amount of vault shares minted
   * @dev No maturity impact applied since capital remains deployed
   */
  function migrateLToken(
    uint256 amount
  )
    public
    whenNotPaused
    notRestricted(msg.sender)
    returns (uint256 shares)
  {
    if (address(lToken) == address(0)) revert NoLTokenSet();
    if (amount == 0) revert ZeroAmount();

    // Take fees before processing
    harvestFees();

    lToken.safeTransferFrom(msg.sender, liquidityManager, amount);

    // Calculate shares amount using updated rate (treat L-Tokens same as underlying)
    /// @dev No maturity impact on migration since the capital stays deployed
    shares = convertToShares(amount);

    _addAssets(amount);
    _mint(msg.sender, shares);

    emit Deposit(msg.sender, msg.sender, amount, shares);
  }

  /**
   * @notice Deposit assets (underlying) and mint shares (shares tokens) to receiver
   * @param assets The amount of underlying to deposit
   * @param receiver The address to receive the minted shares
   * @return sharesPreview The number of shares minted
   */
  function deposit(
    uint256 assets,
    address receiver
  )
    public
    override(ERC4626Upgradeable, ILedgityYieldVault)
    returns (uint256)
  {
    return _depositToVault(msg.sender, receiver, assets, 0);
  }

  /**
   * @notice Mint shares (shares tokens) to receiver by depositing assets (underlying)
   * @param shares The number of shares to mint
   * @param receiver The address to receive the minted shares
   * @return assetsPreview The amount of underlying deposited
   */
  function mint(
    uint256 shares,
    address receiver
  )
    public
    override(ERC4626Upgradeable, ILedgityYieldVault)
    returns (uint256)
  {
    return
      _depositToVault(
        msg.sender,
        receiver,
        convertToAssets(shares),
        0
      );
  }

  /**
   * @notice Withdraw assets (underlying) by burning shares (shares tokens)
   * @param assets_ The amount of underlying to withdraw
   * @param receiver_ The address to receive the withdrawn underlying
   * @param owner_ The address of the owner of the shares
   * @return sharesPreview The number of shares burned
   */
  function withdraw(
    uint256 assets_,
    address receiver_,
    address owner_
  )
    public
    override(ERC4626Upgradeable, ILedgityYieldVault)
    returns (uint256)
  {
    return
      _withdrawFromVault(
        msg.sender,
        receiver_,
        owner_,
        0,
        convertToShares(assets_)
      );
  }

  /**
   * @notice Redeem shares (shares tokens) for assets (underlying)
   * @param shares_ The number of shares to redeem
   * @param receiver_ The address to receive the underlying
   * @param owner_ The address of the owner of the shares
   * @return assetsPreview The amount of underlying received
   */
  function redeem(
    uint256 shares_,
    address receiver_,
    address owner_
  )
    public
    override(ERC4626Upgradeable, ILedgityYieldVault)
    returns (uint256)
  {
    return
      _withdrawFromVault(msg.sender, receiver_, owner_, 0, shares_);
  }

  /**
   * @notice Request a withdrawal that will be processed asynchronously
   * @param shares Amount of vault shares to withdraw
   * @dev Requires gas fee payment and burns shares immediately
   */
  function requestWithdrawal(
    uint256 shares
  ) public payable whenNotPaused notRestricted(msg.sender) {
    if (msg.value < withdrawalGasFee)
      revert MissingWithdrawalRequestFee();
    // Transfer gas fee to fee recipient
    /// @dev Use call since the fee recipient is a multisig that requires more that enforced 2300 .transfer() gas
    (bool success, ) = feeRecipient.call{
      value: address(this).balance
    }("");
    if (!success) revert TransferFailed();

    uint256 netAssets = _burnSharesTakeFeesOnWithdrawal(
      msg.sender,
      shares
    );

    // Create withdrawal request
    withdrawalRequests.push(
      ILedgityDataProvider.WithdrawalRequest({
        user: msg.sender,
        amount: netAssets,
        timestamp: block.timestamp,
        processed: false
      })
    );

    emit WithdrawalRequested(
      withdrawalRequests.length - 1,
      msg.sender,
      shares
    );
  }

  /**
   * @notice Harvest buffer rewards and collect management/performance fees
   * @dev Can be called by anyone to update vault state and collect fees
   */
  function harvestFees() public {
    // Take management and performance fees
    _takeFees(feeRecipient);
  }

  // ======== ADMIN ======== //

  /**
   * @notice Burns shares from a blacklisted user and mints them to another address
   * @param burnFrom The address to burn shares from
   * @param remintTo The address to mint shares to
   */
  function burnAndRemintBlacklistedShares(
    address burnFrom,
    address remintTo
  ) public onlyOwner {
    uint256 shares_ = balanceOf(burnFrom);
    _transfer(burnFrom, remintTo, shares_);
  }

  /**
   * @notice Deposit assets into the liquidity buffer
   * @param assets Amount of assets to deposit
   * @dev Only callable by liquidity manager
   */
  function depositToBuffer(
    uint256 assets
  ) public onlyLiquidityManager {
    // Transfer assets from fund wallet to contract
    // slither-disable-next-line arbitrary-send-erc20
    IERC20(asset()).safeTransferFrom(
      liquidityManager,
      address(this),
      assets
    );
    if (hasBufferStrategy) _investBuffer(assets);
  }

  /**
   * @notice Remove excess assets from the liquidity buffer
   * @param amount Amount of assets to withdraw from buffer
   * @dev Only callable by liquidity manager
   */
  function skimBuffer(uint256 amount) public onlyLiquidityManager {
    _withdrawBuffer(liquidityManager, amount);
  }

  /**
   * @notice Process queued withdrawal requests by providing liquidity
   * @param requestIds Array of request IDs to process
   * @param addAssets Additional liquidity provided by liquidity manager
   * @dev Only callable by liquidity manager, uses buffer + added liquidity
   */
  function processRequests(
    uint256[] calldata requestIds,
    uint256 addAssets
  ) public onlyLiquidityManager {
    if (0 < addAssets) {
      // slither-disable-next-line arbitrary-send-erc20
      IERC20(asset()).safeTransferFrom(
        liquidityManager,
        address(this),
        addAssets
      );
    }

    // Take fees before processing
    harvestFees();

    // Calculate total assets needed for selected requests
    uint256 assetsTotal;
    for (uint256 i; i < requestIds.length; i++) {
      ILedgityDataProvider.WithdrawalRequest
        storage request = withdrawalRequests[requestIds[i]];

      if (request.processed) revert RequestAlreadyProcessed();

      assetsTotal += request.amount;
    }

    // Check available liquidity (buffer + added liquidity)
    uint256 bufferBalance = getBufferAssets();
    if ((bufferBalance + addAssets) < assetsTotal)
      revert InsufficientLiquidity();

    // Withdraw required assets from buffer if needed
    if (hasBufferStrategy && addAssets < assetsTotal) {
      // slither-disable-next-line reentrancy-no-eth
      _withdrawBuffer(address(this), assetsTotal - addAssets);
    }

    // Process each request
    for (uint256 i; i < requestIds.length; i++) {
      uint256 requestId = requestIds[i];
      ILedgityDataProvider.WithdrawalRequest
        storage request = withdrawalRequests[requestId];

      // Mark as processed
      request.processed = true;
      // Transfer assets to user
      IERC20(asset()).safeTransfer(request.user, request.amount);

      emit WithdrawalProcessed(
        requestId,
        request.user,
        request.amount
      );
    }
  }

  /**
   * @notice Updates the liquidity manager and fee recipient
   * @param newLiquidityManager The new liquidity manager address
   * @param newFeeRecipient The new fee recipient address
   * @dev Only callable by global owner
   */
  function updateVaultManagers(
    address newLiquidityManager,
    address payable newFeeRecipient
  ) public onlyOwner {
    if (
      newLiquidityManager == address(0) ||
      newFeeRecipient == address(0)
    ) revert ZeroAddress();

    liquidityManager = newLiquidityManager;
    feeRecipient = newFeeRecipient;

    emit VaultManagersUpdated(newLiquidityManager, newFeeRecipient);
  }

  /**
   * @notice Updates the liquidity buffer rate
   * @param bufferRate The new liquidity buffer rate
   * @dev Only callable by global owner
   */
  function updateBufferRate(uint256 bufferRate) public onlyOwner {
    liquidityBufferRate = bufferRate;

    emit BufferRateUpdated(bufferRate);
  }

  /**
   * @notice Updates vault parameters
   * @param newLToken The new L-Token address
   * @param newStakeToken The new stake token address
   * @param newStakeForFeeReduction The new stake balance for fee reduction
   * @param newStakeForInstantWithdrawal The new stake balance for instant withdrawal
   * @param newAaveLendingPool The new Aave lending pool address
   * @dev Only callable by global owner
   */
  function updateVaultParams(
    IERC20 newLToken,
    IERC20 newStakeToken,
    uint256 newStakeForFeeReduction,
    uint256 newStakeForInstantWithdrawal,
    IAaveLendingPoolV3 newAaveLendingPool
  ) public onlyOwner {
    lToken = newLToken;
    stakeToken = newStakeToken;

    stakeForFeeReduction = newStakeForFeeReduction;
    stakeForInstantWithdrawal = newStakeForInstantWithdrawal;

    _setupBufferStrategy(newAaveLendingPool);

    emit VaultParamsUpdated(
      newLToken,
      newStakeToken,
      newStakeForFeeReduction,
      newStakeForInstantWithdrawal,
      newAaveLendingPool
    );
  }
}

// ============================================================
// FILE: src/protocol-v2/libraries/LedgityDataProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ILedgityDataProvider } from "../interfaces/ILedgityDataProvider.sol";

library LedgityDataProvider {
  /**
   * @notice Get withdrawal requests with optional filtering
   * @param requests_ Storage array of withdrawal requests
   * @param stakeToken_ Stake token contract for fee reduction checks
   * @param stakeForFeeReduction_ Minimum stake balance required for fee reduction
   * @param onlyPending If true, only return non-processed requests
   * @param maxRange Maximum number of requests to return (0 = return all)
   * @return filteredRequests Array of withdrawal requests with read structure
   */
  function getWithdrawalRequests(
    ILedgityDataProvider.WithdrawalRequest[] storage requests_,
    IERC20 stakeToken_,
    uint256 stakeForFeeReduction_,
    bool onlyPending,
    uint256 maxRange
  )
    external
    view
    returns (
      ILedgityDataProvider.WithdrawalRequestRead[]
        memory filteredRequests
    )
  {
    return
      _getFilteredRequests(
        requests_,
        stakeToken_,
        stakeForFeeReduction_,
        address(0),
        onlyPending,
        maxRange
      );
  }

  /**
   * @notice Get withdrawal requests for a specific user
   * @param requests_ Storage array of withdrawal requests
   * @param stakeToken_ Stake token contract for fee reduction checks
   * @param stakeForFeeReduction_ Minimum stake balance required for fee reduction
   * @param user The user address
   * @param onlyPending If true, only return non-processed requests
   * @param maxRange Maximum number of requests to return (0 = return all)
   * @return filteredRequests Array of withdrawal requests for the user with read structure
   */
  function getUserWithdrawalRequests(
    ILedgityDataProvider.WithdrawalRequest[] storage requests_,
    IERC20 stakeToken_,
    uint256 stakeForFeeReduction_,
    address user,
    bool onlyPending,
    uint256 maxRange
  )
    external
    view
    returns (
      ILedgityDataProvider.WithdrawalRequestRead[]
        memory filteredRequests
    )
  {
    return
      _getFilteredRequests(
        requests_,
        stakeToken_,
        stakeForFeeReduction_,
        user,
        onlyPending,
        maxRange
      );
  }

  /**
   * @notice Get specific withdrawal requests by their IDs
   * @param requests_ Storage array of withdrawal requests
   * @param stakeToken_ Stake token contract for fee reduction checks
   * @param stakeForFeeReduction_ Minimum stake balance required for fee reduction
   * @param requestIds Array of request IDs to fetch
   * @return selectedRequests Array of withdrawal requests corresponding to the IDs with read structure
   */
  function getWithdrawalRequestsByIds(
    ILedgityDataProvider.WithdrawalRequest[] storage requests_,
    IERC20 stakeToken_,
    uint256 stakeForFeeReduction_,
    uint256[] calldata requestIds
  )
    external
    view
    returns (
      ILedgityDataProvider.WithdrawalRequestRead[]
        memory selectedRequests
    )
  {
    selectedRequests = new ILedgityDataProvider.WithdrawalRequestRead[](
      requestIds.length
    );
    bool stakeTokenSet = address(stakeToken_) != address(0);

    for (uint256 i; i < requestIds.length; i++) {
      ILedgityDataProvider.WithdrawalRequest
        storage request = requests_[requestIds[i]];

      bool hasFeeReduction;
      if (stakeTokenSet) {
        hasFeeReduction =
          stakeToken_.balanceOf(request.user) >=
          stakeForFeeReduction_;
      }

      selectedRequests[i] = ILedgityDataProvider
        .WithdrawalRequestRead({
          requestId: requestIds[i],
          user: request.user,
          amount: request.amount,
          timestamp: request.timestamp,
          processed: request.processed,
          hasFeeReduction: hasFeeReduction
        });
    }
  }

  /**
   * @notice Internal helper to filter withdrawal requests with various options
   * @param requests_ Storage array of withdrawal requests
   * @param stakeToken_ Stake token contract for fee reduction checks
   * @param stakeForFeeReduction_ Minimum stake balance required for fee reduction
   * @param user Filter by user address (address(0) = no filter)
   * @param onlyPending If true, only return non-processed requests
   * @param maxRange Maximum number of requests to return (0 = no limit)
   * @return filteredRequests Array of matching withdrawal requests with read structure
   */
  function _getFilteredRequests(
    ILedgityDataProvider.WithdrawalRequest[] storage requests_,
    IERC20 stakeToken_,
    uint256 stakeForFeeReduction_,
    address user,
    bool onlyPending,
    uint256 maxRange
  )
    private
    view
    returns (
      ILedgityDataProvider.WithdrawalRequestRead[]
        memory filteredRequests
    )
  {
    uint256 totalRequests = requests_.length;

    // If there are no requests, return an empty array to avoid underflow on (totalRequests - 1)
    if (totalRequests == 0) {
      return new ILedgityDataProvider.WithdrawalRequestRead[](0);
    }

    // Determine search range - start from latest requests
    uint256 searchLimit = maxRange > 0 && maxRange < totalRequests
      ? maxRange
      : totalRequests;

    // Count matching requests (search backwards from latest)
    uint256 matchCount;
    uint256 searchCount;
    for (
      uint256 i = totalRequests - 1;
      searchCount < searchLimit;
      i--
    ) {
      searchCount++;

      ILedgityDataProvider.WithdrawalRequest
        storage request = requests_[i];
      if (
        (user == address(0) || request.user == user) &&
        (!onlyPending || !request.processed)
      ) {
        matchCount++;
      }

      if (i == 0) break;
    }

    // Create result array
    filteredRequests = new ILedgityDataProvider.WithdrawalRequestRead[](
      matchCount
    );
    bool stakeTokenSet = address(stakeToken_) != address(0);
    uint256 resultIndex;

    // Fill results (search backwards from latest, but fill array in reverse for oldest-first output)
    searchCount = 0;
    for (
      uint256 i = totalRequests - 1;
      searchCount < searchLimit && resultIndex < matchCount;
      i--
    ) {
      searchCount++;

      ILedgityDataProvider.WithdrawalRequest
        storage request = requests_[i];
      if (
        (user == address(0) || request.user == user) &&
        (!onlyPending || !request.processed)
      ) {
        bool hasFeeReduction;
        if (stakeTokenSet) {
          hasFeeReduction =
            stakeToken_.balanceOf(request.user) >=
            stakeForFeeReduction_;
        }

        // Fill array from end to maintain oldest-first order in output
        filteredRequests[
          matchCount - 1 - resultIndex
        ] = ILedgityDataProvider.WithdrawalRequestRead({
          requestId: i,
          user: request.user,
          amount: request.amount,
          timestamp: request.timestamp,
          processed: request.processed,
          hasFeeReduction: hasFeeReduction
        });
        resultIndex++;
      }

      if (i == 0) break;
    }
  }
}

// ============================================================
// FILE: src/protocol-v2/modules/AdministeredUpgradable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Contracts
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
// Interfaces
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IGlobalOwner } from "src/protocol-v2/interfaces/IGlobalOwner.sol";
import { IGlobalPause } from "src/protocol-v2/interfaces/IGlobalPause.sol";
import { IGlobalAccessList } from "src/protocol-v2/interfaces/IGlobalAccessList.sol";

/**
 * @title AdministeredUpgradable
 * @notice Abstract base contract providing administration features for upgradeable contracts
 * @dev This contract integrates with global administration contracts (GlobalOwner, GlobalPause, GlobalRestrict)
 *      to provide centralized ownership, pause functionality, and blacklist management across the protocol.
 *      It implements UUPS upgradeability pattern and includes token recovery functionality.
 *
 *      Key features:
 *      - Global ownership management through IGlobalOwner
 *      - Global pause functionality through IGlobalPause
 *      - Global blacklist integration through IGlobalAccessList
 *      - UUPS upgradeable pattern with owner-restricted upgrades
 *      - ERC20 token recovery for admin purposes
 *
 * @author vBlackwhale (https://github.com/vblackwhale)
 */
abstract contract AdministeredUpgradable is
  Initializable,
  UUPSUpgradeable,
  PausableUpgradeable,
  OwnableUpgradeable
{
  // =========== ERRORS =========== //

  error UserIsRestricted();

  // =========== STORAGE =========== //

  IGlobalOwner public globalOwner;
  IGlobalPause public globalPause;
  IGlobalAccessList public globalRestrict;

  bool public isPausedLocal;

  // =========== CONSTRUCTOR & INITIALIZER =========== //

  constructor() {
    _disableInitializers();
  }

  /**
   * @notice Initializer functions of the contract. They replace the constructor()
   * function in the context of upgradeable contracts.
   * @dev See: https://docs.openzeppelin.com/contracts/4.x/upgradeable
   * @param globalOwner_ The address of the GlobalOwner contract.
   * @param globalPause_ The address of the GlobalPause contract.
   * @param globalRestrict_ The address of the GlobalRestrict contract.
   */
  function __AdministeredUpgradable_init(
    address globalOwner_,
    address globalPause_,
    address globalRestrict_
  ) internal onlyInitializing {
    __UUPSUpgradeable_init();
    __Pausable_init_unchained();
    __Ownable_init_unchained();

    globalOwner = IGlobalOwner(globalOwner_);
    globalPause = IGlobalPause(globalPause_);
    globalRestrict = IGlobalAccessList(globalRestrict_);

    _transferOwnership(globalOwner.owner());
  }

  // =========== UPGRADABLE =========== //

  /**
   * @notice Override of UUPSUpgradeable._authorizeUpgrade() function restricted to
   * global owner. It is called by the proxy contract during an upgrade.
   * @param newImplementation The address of the new implementation contract.
   */
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyOwner {}

  // =========== OWNABLE =========== //

  /**
   * @notice Returns the owner of the contract
   * @return The owner's address
   */
  function owner() public view virtual override returns (address) {
    return globalOwner.owner();
  }

  // =========== PAUSABLE =========== //

  /**
   * @notice Override of PausableUpgradeable.pause() that retrieves the pause state
   * from the GlobalPause contract instead.
   * @return Whether the contract is paused or not.
   */
  function paused()
    public
    view
    override(PausableUpgradeable)
    returns (bool)
  {
    return isPausedLocal || globalPause.paused();
  }

  /**
   * @notice Pauses the contract.
   */
  function pauseLocal() external onlyOwner {
    isPausedLocal = true;
    emit Paused(msg.sender);
  }

  /**
   * @notice Unpauses the contract.
   */
  function unpauseLocal() external onlyOwner {
    isPausedLocal = false;
    emit Unpaused(msg.sender);
  }

  // =========== RESTRICTIONS =========== //

  /**
   * @notice Reverts if the given account is restricted by the GlobalRestrict contract.
   * @param account Address to verify.
   */
  modifier notRestricted(address account) {
    if (globalRestrict.isRestricted(account))
      revert UserIsRestricted();
    _;
  }

  // =========== RECOVERABLE =========== //

  /**
   * @notice Recovers a specified amount of a given token address.
   * @param tokenAddress The address of the token to recover.
   * @param amount The amount of the token to recover.
   */
  function recoverERC20(
    address tokenAddress,
    uint256 amount
  ) public onlyOwner {
    if (tokenAddress == address(0)) {
      payable(msg.sender).transfer(amount);
    } else {
      // slither-disable-next-line unchecked-transfer
      IERC20(tokenAddress).transfer(msg.sender, amount);
    }
  }

  /**
   * @dev This empty reserved space is put in place to allow future versions to add new
   * variables without shifting down storage in the inheritance chain.
   * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
   */
  uint256[50] private __gap;
}

// ============================================================
// FILE: src/protocol-v2/modules/CCIPTokenModule.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Contracts
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
// Interfaces
import { IGetCCIPAdmin } from "@chainlink/contracts-ccip/contracts/interfaces/IGetCCIPAdmin.sol";
import { IBurnMintERC20 } from "@chainlink/contracts/src/v0.8/shared/token/ERC20/IBurnMintERC20.sol";

// ======== ERRORS ======== //

error ZeroAddressCCIPAdmin();
error MustImplementMintAndBurnFunctions();
error SenderNotMinter(address sender);
error SenderNotBurner(address sender);
error SenderNotCCIPAdmin(address sender);
error InsufficientAllowance();

/**
 * @title CCIPTokenModule
 * @notice A module that adds CCIP compatibility features to ERC20 tokens
 * @dev This contract is designed to be imported and used to extend your existing token
 *
 * @author vBlackwhale (https://github.com/vblackwhale)
 */
contract CCIPTokenModule is IGetCCIPAdmin, ERC20Upgradeable {
  // ======== STORAGE ======== //
  // Role management state
  mapping(address => bool) private _minters;
  mapping(address => bool) private _burners;

  // CCIP admin
  address private _ccipAdmin;

  // ======== EVENTS ======== //

  // Events for role management
  event MintAccessGranted(address indexed minter);
  event BurnAccessGranted(address indexed burner);
  event MintAccessRevoked(address indexed minter);
  event BurnAccessRevoked(address indexed burner);
  event CCIPAdminChanged(address indexed newAdmin);

  // ======== INITIALIZE ======== //

  /**
   * @notice Initializes the CCIP token
   * @param initialCCIPAdmin The initial CCIP admin address
   */
  function __CCIPCompatible_init(address initialCCIPAdmin) internal {
    _ccipAdmin = initialCCIPAdmin;

    bool successMint = _handleMint(address(0xdead), 0);
    bool successBurn = _handleBurn(address(0xdead), 0);

    // @dev Revert if child contracts do not implement _handleMint and _handleBurn
    if (!successMint || !successBurn)
      revert MustImplementMintAndBurnFunctions();
  }

  // ======== VIRTUAL ======== //

  /**
   * @notice Virtual function that enables handling of asset balance on mint
   */
  function _handleMint(
    address /* account */,
    uint256 /* amount */
  ) internal virtual returns (bool) {}

  /**
   * @notice Virtual function that enables handling of asset balance on burn
   */
  function _handleBurn(
    address /* account */,
    uint256 /* amount */
  ) internal virtual returns (bool) {}

  // ======== MODIFIERS ======== //

  /**
   * @notice Checks if the sender is the CCIP admin
   */
  modifier onlyCCIPAdmin() {
    if (msg.sender != _ccipAdmin)
      revert SenderNotCCIPAdmin(msg.sender);
    _;
  }

  // ======== VIEWS ======== //

  /**
   * @notice Gets the CCIP admin address
   * @return The CCIP admin address
   */
  function getCCIPAdmin() external view returns (address) {
    return _ccipAdmin;
  }

  /**
   * @notice Checks if an account has the minter role
   * @param account The account to check
   * @return True if the account has the role
   */
  function isMinter(address account) public view returns (bool) {
    return _minters[account];
  }

  /**
   * @notice Checks if an account has the burner role
   * @param account The account to check
   * @return True if the account has the role
   */
  function isBurner(address account) public view returns (bool) {
    return _burners[account];
  }

  // ======== BURN & MINT ======== //

  /**
   * @notice Implementation of mints tokens to a specified account
   * @param account Account to mint to
   * @param amount Amount to mint
   */
  function mint(address account, uint256 amount) external {
    if (!isMinter(msg.sender)) revert SenderNotMinter(msg.sender);

    _handleMint(account, amount);
  }

  /**
   * @notice Implementation of burns tokens from caller's account
   * @param amount Amount to burn
   */
  function burn(uint256 amount) public {
    if (!isBurner(msg.sender)) revert SenderNotBurner(msg.sender);

    _handleBurn(msg.sender, amount);
  }

  // ======== ADMIN ======== //

  /**
   * @notice Sets the CCIP admin address
   * @param newAdmin The new CCIP admin address
   */
  function setCCIPAdmin(address newAdmin) external onlyCCIPAdmin {
    if (newAdmin == address(0)) revert ZeroAddressCCIPAdmin();

    _ccipAdmin = newAdmin;
    emit CCIPAdminChanged(newAdmin);
  }

  /**
   * @notice Grants minter role to an account
   * @param minter The account to grant the role to
   */
  function grantMintRole(address minter) external onlyCCIPAdmin {
    _minters[minter] = true;
    emit MintAccessGranted(minter);
  }

  /**
   * @notice Revokes minter role from an account
   * @param minter The account to revoke the role from
   */
  function revokeMintRole(address minter) external onlyCCIPAdmin {
    _minters[minter] = false;
    emit MintAccessRevoked(minter);
  }

  /**
   * @notice Grants burner role to an account
   * @param burner The account to grant the role to
   */
  function grantBurnRole(address burner) external onlyCCIPAdmin {
    _burners[burner] = true;
    emit BurnAccessGranted(burner);
  }

  /**
   * @notice Revokes burner role from an account
   * @param burner The account to revoke the role from
   */
  function revokeBurnRole(address burner) external onlyCCIPAdmin {
    _burners[burner] = false;
    emit BurnAccessRevoked(burner);
  }

  /**
   * @dev This empty reserved space is put in place to allow future versions to add new
   * variables without shifting down storage in the inheritance chain.
   */
  uint256[49] private __gap;
}

// ============================================================
// FILE: src/protocol-v2/modules/VaultLiquidityModule.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Contracts
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { ERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
// Library
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
// Interface
import { IVaultLiquidityModule } from "src/protocol-v2/interfaces/IVaultLiquidityModule.sol";

/**
 * @title VaultLiquidityModule
 * @notice Abstract contract that extends ERC4626 to handle liquidity, APR and fee calculations for vaults
 *
 * @author vBlackwhale (https://github.com/vblackwhale)
 */
abstract contract VaultLiquidityModule is
  IVaultLiquidityModule,
  ERC4626Upgradeable,
  OwnableUpgradeable
{
  /** ======== LIBRARIES ======== */

  using Math for uint256;

  /** ======== ERRORS ======== */

  error RateAboveHundredPercent();

  /** ======== STORAGE ======== */

  // Base rate constant representing 100%
  uint256 public constant RAY = 1e27;

  // Decimal offset for virtual shares (18 - asset decimals), cached at initialization
  uint8 public decimalsOffset;

  // Total assets under management
  uint256 private _totalAssets;

  // Last timestamp when assets were compounded (only full compounding periods)
  uint256 public lastCompoundTime;
  // The timestamp of the last fee calculation, used to compute management fees
  uint256 public lastFeeTime;
  // The highest price per share ever reached, performance fees are taken when
  // the price per share is above this value, always express in 18 decimals
  uint256 public highWaterMark;

  // Deployment delay period in days for calculating deposit fees (max 255 days)
  uint8 public deploymentDelay;

  // Annual Percentage Rate in RAY
  uint256 public yieldAPR;

  // Management fee in RAY
  uint256 public managementFeeRate;
  // Performance fee in RAY
  uint256 public performanceFeeRate;
  // Withdrawal fee in RAY
  uint256 public withdrawalFeeRate;
  // Required amount of msg.value attached to withdrawal requests
  uint256 public withdrawalGasFee;

  // Custom fee structures for specific accounts
  mapping(address => uint256) public accountWithdrawalFee;

  /** ======== INITIALIZER ======== */

  /**
   * @notice Initializes the VaultLiquidityModule with fee rates and APR
   * @param params The initialization parameters
   * @param asset The underlying asset
   */
  function __VaultLiquidityModule_init(
    VaultLiquidityInitParams memory params,
    address asset
  ) internal {
    __ERC4626_init(ERC20Upgradeable(asset));

    // Cache decimal offset to avoid repeated calculations
    decimalsOffset = uint8(18 - ERC20Upgradeable(asset).decimals());

    // Initialize high water mark at 1 share = 1 asset if not specified
    highWaterMark = params.highWaterMark != 0
      ? params.highWaterMark
      : 10 ** (18 - decimalsOffset);
    // Set initial virtual reserves for predefined share price (cross-chain alignment)
    // Creates 1 virtual share at specified price, locks it permanently
    if (params.initialAssetsPerShare != 0) {
      _totalAssets = params.initialAssetsPerShare; // e.g., 1.05e6 assets
      _mint(address(0xdead), 1e18); // 1 share at that price
    }

    deploymentDelay = params.deploymentDelay;
    yieldAPR = params.yieldAPR;

    managementFeeRate = params.managementFeeRate;
    performanceFeeRate = params.performanceFeeRate;
    withdrawalFeeRate = params.withdrawalFeeRate;
    withdrawalGasFee = params.withdrawalGasFee;

    // Align to next UTC day boundary for cross-chain synchronization
    // Rewards start next full day - safer and simpler than crediting partial days
    lastCompoundTime = ((block.timestamp / 1 days) + 1) * 1 days;
    // Fees accrue from actual deployment time (not aligned to day boundary)
    lastFeeTime = block.timestamp;
  }

  /** ======== OVERRIDES ======== */

  /**
   * @dev Get total assets for share calculations
   * @return currentTotalAssets Total assets available for share price calculations
   */
  function totalAssets()
    public
    view
    override(ERC4626Upgradeable, IVaultLiquidityModule)
    returns (uint256 currentTotalAssets)
  {
    currentTotalAssets = _totalAssets;

    /// @dev Edge case before start of first compound period at vault initialization
    if (block.timestamp < lastCompoundTime) return currentTotalAssets;

    // Time elapsed since last compound
    uint256 timeElapsed = block.timestamp - lastCompoundTime;
    // Calculate number of full days elapsed
    uint256 fullDays = timeElapsed / 1 days;

    if (0 < fullDays) {
      // Daily rate = APR / 365
      uint256 dailyRate = yieldAPR / 365;

      // Apply daily compounding for full days only
      for (uint256 i; i < fullDays; i++) {
        currentTotalAssets = currentTotalAssets.mulDiv(
          RAY + dailyRate,
          RAY
        );
      }
    }

    return currentTotalAssets;
  }

  /**
   * @notice Converts an amount of assets (underlying) to shares (shares tokens)
   * @param assets The amount of underlying assets to convert
   * @return shares The amount of shares (shares tokens) equivalent to the given assets
   */
  function convertToShares(
    uint256 assets
  )
    public
    view
    override(ERC4626Upgradeable, IVaultLiquidityModule)
    returns (uint256 shares)
  {
    uint256 supply = totalSupply();
    uint256 currentAssets = totalAssets();

    (uint256 feeShares, ) = getFeeData();

    shares = assets.mulDiv(
      supply + feeShares + (10 ** decimalsOffset),
      currentAssets + 1
    );
  }

  /**
   * @notice Converts an amount of shares (shares tokens) to assets (underlying)
   * @param shares The amount of shares (shares tokens) to convert
   * @return assets The amount of underlying assets equivalent to the given shares
   */
  function convertToAssets(
    uint256 shares
  )
    public
    view
    override(ERC4626Upgradeable, IVaultLiquidityModule)
    returns (uint256 assets)
  {
    uint256 supply = totalSupply();
    uint256 currentAssets = totalAssets();

    (uint256 feeShares, ) = getFeeData();

    assets = shares.mulDiv(
      currentAssets + 1,
      supply + feeShares + (10 ** decimalsOffset)
    );
  }

  /** ======== INTERNAL VIEWS ======== */

  /**
   * @dev Calculate deposit fee based on deployment delay
   * Fee represents the yield needed to compound back to original deposit amount
   * @param assets The amount of assets being deposited
   * @return fee The amount of yield to be deducted from shares
   */
  function _computeMaturityImpact(
    uint256 assets
  ) internal view returns (uint256 fee) {
    if (deploymentDelay == 0) return 0;

    // Calculate compound factor for deployment delay period
    uint256 dailyRate = yieldAPR / 365;

    // Calculate: (1 + dailyRate)^deploymentDelay
    uint256 compoundFactor = RAY;
    for (uint256 i; i < deploymentDelay; i++) {
      compoundFactor = compoundFactor.mulDiv(RAY + dailyRate, RAY);
    }

    // Fee = assets * ((1 + rate)^delay - 1) / (1 + rate)^delay
    // This ensures: (assets - fee) * (1 + rate)^delay = assets
    fee = (assets * (compoundFactor - RAY)) / compoundFactor;
  }

  /**
   * @dev Calculate withdrawal fee for a given amount
   * @param amount The amount of assets being withdrawn
   * @param account The account to check for custom fee structure
   * @return fee The amount of withdrawal fee to be deducted
   */
  function _computeWithdrawalFee(
    uint256 amount,
    address account
  ) internal view returns (uint256 fee) {
    // Get account-specific withdrawal fee or use default
    uint256 feeRate = accountWithdrawalFee[account] != 0
      ? accountWithdrawalFee[account]
      : withdrawalFeeRate;

    // Calculate fee amount
    fee = amount.mulDiv(feeRate, RAY, Math.Rounding.Up);
  }

  /**
   * @dev Calculate and return the manager and protocol shares to be minted as fees
   * Total fees are the sum of the management and performance fees
   * Manager shares are the fees that go to the manager, it is the difference between the total fees and the
   * protocol fees
   * Protocol shares are the fees that go to the protocol
   * @return feeShares The total fees
   * @return pricePerShare The price per share (always 18 decimals)
   */
  function getFeeData()
    public
    view
    returns (uint256 feeShares, uint256 pricePerShare)
  {
    uint256 currentAssets = totalAssets();
    uint256 shares = totalSupply();

    uint256 timeElapsedFee = block.timestamp - lastFeeTime;

    uint256 annualManagementFees = currentAssets.mulDiv(
      managementFeeRate,
      RAY,
      Math.Rounding.Up
    );
    uint256 managementFeeAssets = annualManagementFees.mulDiv(
      timeElapsedFee,
      365 days,
      Math.Rounding.Up
    );

    /**
     * This represents the PPS before performance fee dilution
     * @dev Add 1 to shares to avoid division by zero
     */
    if (shares == 0) shares = 1;

    pricePerShare = ((currentAssets + 1) - managementFeeAssets)
      .mulDiv(1e18, shares, Math.Rounding.Up);

    uint256 performanceFeeAssets;
    if (highWaterMark < pricePerShare) {
      uint256 profitPerShare = pricePerShare - highWaterMark;

      uint256 profit = profitPerShare.mulDiv(
        shares,
        1e18,
        Math.Rounding.Up
      );

      performanceFeeAssets = profit.mulDiv(
        performanceFeeRate,
        RAY,
        Math.Rounding.Up
      );

      pricePerShare = (currentAssets -
        (managementFeeAssets + performanceFeeAssets)).mulDiv(
          1e18,
          shares + 1,
          Math.Rounding.Up
        );
    }

    uint256 totalFees = managementFeeAssets + performanceFeeAssets;

    // Compensate for the dilution as a consequence of minting shares as fees
    feeShares = totalFees.mulDiv(
      shares,
      (currentAssets - totalFees) + 1,
      Math.Rounding.Up
    );

    return (feeShares, pricePerShare);
  }

  /** ======== INTERNAL HELPERS ======== */

  /**
   * @dev Add assets directly to earning pool
   * Deposit fee compensates for any deployment delay
   * @param assets The amount of assets to add
   */
  function _addAssets(uint256 assets) internal {
    // Checkpoint accumulated interest before changing asset balance
    _registerFundRevenue();

    // Add assets directly to earning pool
    _totalAssets += assets;
  }

  /**
   * @dev Immediately withdraw assets from earning pool
   * Reflects immediate liquidity availability for withdrawals
   * @param assets The amount of assets to withdraw
   */
  function _withdrawAssets(uint256 assets) internal {
    // Checkpoint accumulated interest before changing asset balance
    _registerFundRevenue();

    // Cap withdrawal to available assets
    if (_totalAssets < assets) assets = _totalAssets;

    // Immediately remove assets from earning pool
    _totalAssets -= assets;
  }

  function _registerFundRevenue() internal {
    /// @dev Edge case before start of first compound period at vault initialization
    if (block.timestamp < lastCompoundTime) return;

    uint256 timeElapsed = block.timestamp - lastCompoundTime;
    if (timeElapsed == 0) return;

    // Update total assets with accumulated rewards
    _totalAssets = totalAssets();

    // Update compound time to only include full compounding periods
    // slither-disable-next-line divide-before-multiply
    uint256 fullDays = timeElapsed / 1 days;
    lastCompoundTime += fullDays * 1 days;

    emit RateCheckpointUpdated(_totalAssets, yieldAPR);
  }

  /**
   * @dev Calculate and take management and performance fees
   * Fees are taken as vault shares sent to the fee recipients
   * @param feeRecipient The management fee recipient
   */
  function _takeFees(address feeRecipient) internal {
    uint256 timeElapsed = block.timestamp - lastFeeTime;
    if (timeElapsed == 0) return;

    (uint256 feeShares, uint256 pricePerShare) = getFeeData();

    if (0 < feeShares) {
      _mint(feeRecipient, feeShares);
      lastFeeTime = block.timestamp;
    }

    if (highWaterMark < pricePerShare) highWaterMark = pricePerShare;

    /// @dev This call should always return early but we call it for safety
    _registerFundRevenue();
  }

  /** ======== ADMIN ======== */

  /**
   * @notice Set new total assets to handle capital losses or gains
   * @param newTotalAssets The new total assets amount
   * @dev This function should be called when there are capital losses/gains that need to be recorded
   */
  function setTotalAssets(uint256 newTotalAssets) external onlyOwner {
    uint256 oldTotalAssets = totalAssets();
    _totalAssets = newTotalAssets;

    // Reset compound time to next day boundary to maintain cross-chain sync
    lastCompoundTime = ((block.timestamp / 1 days) + 1) * 1 days;

    emit TotalAssetsUpdated(oldTotalAssets, newTotalAssets);
  }

  /**
   * @notice Updates the APR used for rate calculations
   * @param newAPR The new APR in RAY
   */
  function updateAPR(uint256 newAPR) external onlyOwner {
    // Snapshot accumulated interest with current APR
    _registerFundRevenue();

    uint256 oldAPR = yieldAPR;
    // Then update APR for future calculations
    yieldAPR = newAPR;

    emit APRUpdated(yieldAPR, oldAPR);
  }

  /**
   * @dev Update fee rates for the vault
   * @param managementRate_ The new management fee rate in RAY
   * @param performanceRate_ The new performance fee rate in RAY
   * @param withdrawalRate_ The new withdrawal fee rate in RAY
   */
  function updateFeeRates(
    uint256 managementRate_,
    uint256 performanceRate_,
    uint256 withdrawalRate_
  ) external onlyOwner {
    if (
      RAY < managementRate_ ||
      RAY < performanceRate_ ||
      RAY < withdrawalRate_
    ) revert RateAboveHundredPercent();

    managementFeeRate = managementRate_;
    performanceFeeRate = performanceRate_;
    withdrawalFeeRate = withdrawalRate_;

    emit FeeRatesUpdated(
      managementRate_,
      performanceRate_,
      withdrawalRate_
    );
  }

  /**
   * @dev Set a custom fee structure for a specific account
   * @param account The account to set the custom fee structure for
   * @param withdrawalFee The custom withdrawal fee in RAY
   */
  function setAccountWithdrawalFee(
    address account,
    uint256 withdrawalFee
  ) external onlyOwner {
    accountWithdrawalFee[account] = withdrawalFee;

    emit AccountWithdrawalFeeSet(account, withdrawalFee);
  }

  /**
   * @notice Update the deployment delay period
   * @param newDeploymentDelay The new deployment delay in days
   */
  function updateDeploymentDelay(
    uint8 newDeploymentDelay
  ) external onlyOwner {
    uint8 oldDelay = deploymentDelay;
    deploymentDelay = newDeploymentDelay;

    emit DeploymentDelayUpdated(oldDelay, newDeploymentDelay);
  }

  /**
   * @notice Update the high water mark for performance fee calculations
   * @param newHighWaterMark The new high water mark (in 18 decimals)
   */
  function updateHighWaterMark(
    uint256 newHighWaterMark
  ) external onlyOwner {
    uint256 oldHighWaterMark = highWaterMark;
    highWaterMark = newHighWaterMark;

    emit HighWaterMarkUpdated(oldHighWaterMark, newHighWaterMark);
  }
}
