//     __  ____       __  _____ __        __       _____ __
//    /  |/  (_)___  / /_/ ___// /_____ _/ /_____ / ___// /_  ____ _________
//   / /|_/ / / __ \/ __/\__ \/ __/ __ `/ //_/ _ \\__ \/ __ \/ __ `/ ___/ _ \
//  / /  / / / / / / /_ ___/ / /_/ /_/ / ,< /  __/__/ / / / / /_/ / /  /  __/
// /_/  /_/_/_/ /_/\__//____/\__/\__,_/_/|_|\___/____/_/ /_/\__,_/_/   \___/

//
// Web: https://www.mintstakeshare.com
// TG: https://t.me/mintstakeshare

// SPDX-License-Identifier: MIT

// File @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.20;

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
	 * @dev Storage of the initializable contract.
	 *
	 * It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
	 * when using with upgradeable contracts.
	 *
	 * @custom:storage-location erc7201:openzeppelin.storage.Initializable
	 */
	struct InitializableStorage {
		/**
		 * @dev Indicates that the contract has been initialized.
		 */
		uint64 _initialized;
		/**
		 * @dev Indicates that the contract is in the process of being initialized.
		 */
		bool _initializing;
	}

	// keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Initializable")) - 1)) & ~bytes32(uint256(0xff))
	bytes32 private constant INITIALIZABLE_STORAGE =
		0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00;

	/**
	 * @dev The contract is already initialized.
	 */
	error InvalidInitialization();

	/**
	 * @dev The contract is not initializing.
	 */
	error NotInitializing();

	/**
	 * @dev Triggered when the contract has been initialized or reinitialized.
	 */
	event Initialized(uint64 version);

	/**
	 * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
	 * `onlyInitializing` functions can be used to initialize parent contracts.
	 *
	 * Similar to `reinitializer(1)`, except that in the context of a constructor an `initializer` may be invoked any
	 * number of times. This behavior in the constructor can be useful during testing and is not expected to be used in
	 * production.
	 *
	 * Emits an {Initialized} event.
	 */
	modifier initializer() {
		// solhint-disable-next-line var-name-mixedcase
		InitializableStorage storage $ = _getInitializableStorage();

		// Cache values to avoid duplicated sloads
		bool isTopLevelCall = !$._initializing;
		uint64 initialized = $._initialized;

		// Allowed calls:
		// - initialSetup: the contract is not in the initializing state and no previous version was
		//                 initialized
		// - construction: the contract is initialized at version 1 (no reininitialization) and the
		//                 current contract is just being deployed
		bool initialSetup = initialized == 0 && isTopLevelCall;
		bool construction = initialized == 1 && address(this).code.length == 0;

		if (!initialSetup && !construction) {
			revert InvalidInitialization();
		}
		$._initialized = 1;
		if (isTopLevelCall) {
			$._initializing = true;
		}
		_;
		if (isTopLevelCall) {
			$._initializing = false;
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
	 * WARNING: Setting the version to 2**64 - 1 will prevent any future reinitialization.
	 *
	 * Emits an {Initialized} event.
	 */
	modifier reinitializer(uint64 version) {
		// solhint-disable-next-line var-name-mixedcase
		InitializableStorage storage $ = _getInitializableStorage();

		if ($._initializing || $._initialized >= version) {
			revert InvalidInitialization();
		}
		$._initialized = version;
		$._initializing = true;
		_;
		$._initializing = false;
		emit Initialized(version);
	}

	/**
	 * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
	 * {initializer} and {reinitializer} modifiers, directly or indirectly.
	 */
	modifier onlyInitializing() {
		_checkInitializing();
		_;
	}

	/**
	 * @dev Reverts if the contract is not in an initializing state. See {onlyInitializing}.
	 */
	function _checkInitializing() internal view virtual {
		if (!_isInitializing()) {
			revert NotInitializing();
		}
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
		// solhint-disable-next-line var-name-mixedcase
		InitializableStorage storage $ = _getInitializableStorage();

		if ($._initializing) {
			revert InvalidInitialization();
		}
		if ($._initialized != type(uint64).max) {
			$._initialized = type(uint64).max;
			emit Initialized(type(uint64).max);
		}
	}

	/**
	 * @dev Returns the highest version that has been initialized. See {reinitializer}.
	 */
	function _getInitializedVersion() internal view returns (uint64) {
		return _getInitializableStorage()._initialized;
	}

	/**
	 * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
	 */
	function _isInitializing() internal view returns (bool) {
		return _getInitializableStorage()._initializing;
	}

	/**
	 * @dev Returns a pointer to the storage namespace.
	 */
	// solhint-disable-next-line var-name-mixedcase
	function _getInitializableStorage()
		private
		pure
		returns (InitializableStorage storage $)
	{
		assembly {
			$.slot := INITIALIZABLE_STORAGE
		}
	}
}

// File @openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

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
	function __Context_init() internal onlyInitializing {}

	function __Context_init_unchained() internal onlyInitializing {}

	function _msgSender() internal view virtual returns (address) {
		return msg.sender;
	}

	function _msgData() internal view virtual returns (bytes calldata) {
		return msg.data;
	}

	function _contextSuffixLength() internal view virtual returns (uint256) {
		return 0;
	}
}

// File @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
	/// @custom:storage-location erc7201:openzeppelin.storage.Ownable
	struct OwnableStorage {
		address _owner;
	}

	// keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Ownable")) - 1)) & ~bytes32(uint256(0xff))
	bytes32 private constant OwnableStorageLocation =
		0x9016d09d72d40fdae2fd8ceac6b6234c7706214fd39c1cd1e609a0528c199300;

	function _getOwnableStorage()
		private
		pure
		returns (OwnableStorage storage $)
	{
		assembly {
			$.slot := OwnableStorageLocation
		}
	}

	/**
	 * @dev The caller account is not authorized to perform an operation.
	 */
	error OwnableUnauthorizedAccount(address account);

	/**
	 * @dev The owner is not a valid owner account. (eg. `address(0)`)
	 */
	error OwnableInvalidOwner(address owner);

	event OwnershipTransferred(
		address indexed previousOwner,
		address indexed newOwner
	);

	/**
	 * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
	 */
	function __Ownable_init(address initialOwner) internal onlyInitializing {
		__Ownable_init_unchained(initialOwner);
	}

	function __Ownable_init_unchained(
		address initialOwner
	) internal onlyInitializing {
		if (initialOwner == address(0)) {
			revert OwnableInvalidOwner(address(0));
		}
		_transferOwnership(initialOwner);
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
		OwnableStorage storage $ = _getOwnableStorage();
		return $._owner;
	}

	/**
	 * @dev Throws if the sender is not the owner.
	 */
	function _checkOwner() internal view virtual {
		if (owner() != _msgSender()) {
			revert OwnableUnauthorizedAccount(_msgSender());
		}
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
		if (newOwner == address(0)) {
			revert OwnableInvalidOwner(address(0));
		}
		_transferOwnership(newOwner);
	}

	/**
	 * @dev Transfers ownership of the contract to a new account (`newOwner`).
	 * Internal function without access restriction.
	 */
	function _transferOwnership(address newOwner) internal virtual {
		OwnableStorage storage $ = _getOwnableStorage();
		address oldOwner = $._owner;
		$._owner = newOwner;
		emit OwnershipTransferred(oldOwner, newOwner);
	}
}

// File @openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Pausable.sol)

pragma solidity ^0.8.20;

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
	/// @custom:storage-location erc7201:openzeppelin.storage.Pausable
	struct PausableStorage {
		bool _paused;
	}

	// keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Pausable")) - 1)) & ~bytes32(uint256(0xff))
	bytes32 private constant PausableStorageLocation =
		0xcd5ed15c6e187e77e9aee88184c21f4f2182ab5827cb3b7e07fbedcd63f03300;

	function _getPausableStorage()
		private
		pure
		returns (PausableStorage storage $)
	{
		assembly {
			$.slot := PausableStorageLocation
		}
	}

	/**
	 * @dev Emitted when the pause is triggered by `account`.
	 */
	event Paused(address account);

	/**
	 * @dev Emitted when the pause is lifted by `account`.
	 */
	event Unpaused(address account);

	/**
	 * @dev The operation failed because the contract is paused.
	 */
	error EnforcedPause();

	/**
	 * @dev The operation failed because the contract is not paused.
	 */
	error ExpectedPause();

	/**
	 * @dev Initializes the contract in unpaused state.
	 */
	function __Pausable_init() internal onlyInitializing {
		__Pausable_init_unchained();
	}

	function __Pausable_init_unchained() internal onlyInitializing {
		PausableStorage storage $ = _getPausableStorage();
		$._paused = false;
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
		PausableStorage storage $ = _getPausableStorage();
		return $._paused;
	}

	/**
	 * @dev Throws if the contract is paused.
	 */
	function _requireNotPaused() internal view virtual {
		if (paused()) {
			revert EnforcedPause();
		}
	}

	/**
	 * @dev Throws if the contract is not paused.
	 */
	function _requirePaused() internal view virtual {
		if (!paused()) {
			revert ExpectedPause();
		}
	}

	/**
	 * @dev Triggers stopped state.
	 *
	 * Requirements:
	 *
	 * - The contract must not be paused.
	 */
	function _pause() internal virtual whenNotPaused {
		PausableStorage storage $ = _getPausableStorage();
		$._paused = true;
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
		PausableStorage storage $ = _getPausableStorage();
		$._paused = false;
		emit Unpaused(_msgSender());
	}
}

// File @openzeppelin/contracts/token/ERC20/IERC20.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

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
	event Approval(
		address indexed owner,
		address indexed spender,
		uint256 value
	);

	/**
	 * @dev Returns the value of tokens in existence.
	 */
	function totalSupply() external view returns (uint256);

	/**
	 * @dev Returns the value of tokens owned by `account`.
	 */
	function balanceOf(address account) external view returns (uint256);

	/**
	 * @dev Moves a `value` amount of tokens from the caller's account to `to`.
	 *
	 * Returns a boolean value indicating whether the operation succeeded.
	 *
	 * Emits a {Transfer} event.
	 */
	function transfer(address to, uint256 value) external returns (bool);

	/**
	 * @dev Returns the remaining number of tokens that `spender` will be
	 * allowed to spend on behalf of `owner` through {transferFrom}. This is
	 * zero by default.
	 *
	 * This value changes when {approve} or {transferFrom} are called.
	 */
	function allowance(
		address owner,
		address spender
	) external view returns (uint256);

	/**
	 * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
	 * caller's tokens.
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
	function approve(address spender, uint256 value) external returns (bool);

	/**
	 * @dev Moves a `value` amount of tokens from `from` to `to` using the
	 * allowance mechanism. `value` is then deducted from the caller's
	 * allowance.
	 *
	 * Returns a boolean value indicating whether the operation succeeded.
	 *
	 * Emits a {Transfer} event.
	 */
	function transferFrom(
		address from,
		address to,
		uint256 value
	) external returns (bool);
}

// File contracts/Staking.sol

// Original license: SPDX_License_Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

interface IToken {
	function mint(address to, uint256 amount) external;

	function burn(uint256 amount) external;

	function burnFrom(address account, uint256 amount) external;

	function approve(address spender, uint256 amount) external;

	function transfer(address recipient, uint256 amount) external;

	function balanceOf(address account) external view returns (uint256);

	function transferFrom(
		address sender,
		address recipient,
		uint256 amount
	) external;
}

contract Staking is Initializable, PausableUpgradeable, OwnableUpgradeable {
	// Info of each user.
	struct UserInfo {
		uint256 amount; // How many tokens have been staked
		address referrer; // Referrer address
		uint256 lastReward; // Time user last claimed
		uint256 totalCompounded;
		uint256 totalCollected;
	}

	IToken private mintstakeshare;

	struct GameInfo {
		uint256 totalStaked; // Total tokens staked
		uint256 totalRewards; // Total rewards distributed
		uint256 totalCompounded; // Total rewards compounded
		uint256 totalCollected; // Total rewards collected
		uint256 totalUsers; // Total users
	}

	GameInfo public gameInfo;

	// Info of each user that stakes
	mapping(address => UserInfo) public userInfo;

	// The time when mining starts.
	uint256 public gameStartTime;

	// The time when mining ends.
	uint256 public gameEndTime;

	uint256 public rewardPerSecondPerUnit;

	uint256 public dailyReward; // Out of 1,000 - i.e 2% = 20

	uint256 public collectClaimPercent; // out of 1,000 - i.e 20% = 200

	uint256 public referralPercent; // out of 1,000 - i.e 5% = 50
	uint256 public totalReferralRewards;

	mapping(address => uint256) public referralRewards;

	event Deposit(address indexed user, uint256 amount);
	event Compound(address indexed user, uint256 amount);
	event Collect(address indexed user, uint256 amount);

	event ReferralRewardPaid(
		address indexed referrer,
		address indexed user,
		uint256 amount
	);

	event RewardPaid(address indexed user, uint256 amount);

	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor() {
		_disableInitializers();
	}

	function initialize(
		address initialOwner,
		address _mintstakeshare
	) public initializer {
		__Pausable_init();
		__Ownable_init(initialOwner);
		mintstakeshare = IToken(_mintstakeshare);
		gameInfo = GameInfo(0, 0, 0, 0, 0);
		// To do, update this to initializer paramater
		gameStartTime = block.timestamp;
		dailyReward = 20;
		collectClaimPercent = 500; // 50%
		referralPercent = 50; // 5%
		rewardPerSecondPerUnit = ((dailyReward * 1e18) / 1000) / (24 * 60 * 60);
		// rewardPerSecondPerUnit = 0.00002283 ether; // 2% per day - 700% annual / (365 * 24 * 60m * 60s)
	}

	function updateClaimPercent(uint256 _collectClaimPercent) public onlyOwner {
		require(_collectClaimPercent <= 1000, "Cannot be more than 100%");
		require(_collectClaimPercent >= 100, "Cannot be less than 10%");
		collectClaimPercent = _collectClaimPercent;
	}

	function updateReferralReward(uint256 _referralReward) public onlyOwner {
		require(_referralReward <= 200, "Cannot be more than 20%");
		require(_referralReward >= 10, "Cannot be less than 1%");
		referralPercent = _referralReward;
	}

	function mintStakeShare() public view returns (address) {
		return address(mintstakeshare);
	}

	function tokenBalance() public view returns (uint256) {
		if (address(mintstakeshare) == address(0)) {
			return 0;
		}
		return mintstakeshare.balanceOf(address(this));
	}

	function updateReward(uint256 _dailyReward) public onlyOwner {
		dailyReward = _dailyReward;
		rewardPerSecondPerUnit = ((dailyReward * 1e18) / 1000) / (24 * 60 * 60);
	}

	//TODO check this function
	function depositFor(address _user, uint256 _amount) public onlyOwner {
		address _sender = _user;
		UserInfo storage user = userInfo[_sender];

		require(_amount != 0, "Cannot deposit 0 for someone else");

		if (user.amount > 0) {
			uint256 _pending = _calculatePending(user.amount, user.lastReward);
			if (_pending > 0) {
				_compound(user);

				emit RewardPaid(_sender, _pending);
			}
		}

		if (_amount > 0) {
			mintstakeshare.transferFrom(msg.sender, address(this), _amount);
			_addToStake(_sender, _amount);
			emit Deposit(_sender, _amount);
		}

		user.lastReward = block.timestamp;
	}

	// TODO: refactor this function to only do deposit, factor other stuff out
	function _handleDeposit(
		address _user,
		uint256 _amount,
		address _referrer
	) internal {
		address _sender = _user;
		UserInfo storage user = userInfo[_sender];

		require(
			user.amount != 0 || _amount != 0,
			"Cannot deposit 0 without existing deposit"
		);

		if (
			_referrer != address(0) &&
			_referrer != _sender &&
			user.referrer == address(0)
		) {
			user.referrer = _referrer;
		}

		if (user.amount > 0) {
			uint256 _pending = _calculatePending(user.amount, user.lastReward);
			if (_pending > 0) {
				_compound(user);

				emit RewardPaid(_sender, _pending);
			}
		}

		if (_amount > 0) {
			mintstakeshare.transferFrom(_sender, address(this), _amount);
			_addToStake(_sender, _amount);
			emit Deposit(_sender, _amount);
		}

		// TODO: factor referral stuff into its own function
		if (_amount > 0 && user.referrer != address(0)) {
			uint256 _referralReward = (_amount * referralPercent) / 1000;
			UserInfo storage referrer = userInfo[user.referrer];
			if (referrer.amount == 0) {
				referrer.lastReward = block.timestamp;
			}

			_addToStake(user.referrer, _referralReward);

			totalReferralRewards += _referralReward;
			referralRewards[user.referrer] += _referralReward;
			emit ReferralRewardPaid(user.referrer, _sender, _referralReward);
		}
		// user.isCompounder = _isCompounder;
		user.lastReward = block.timestamp;
	}

	function _addToStake(address _user, uint256 _amount) internal {
		UserInfo storage user = userInfo[_user];

		if (user.amount == 0 && _amount > 0) {
			gameInfo.totalUsers += 1; // if they have no previous amount, its a new user
			user.lastReward = block.timestamp;
		}

		user.amount = user.amount + _amount;
		gameInfo.totalStaked += _amount;
	}

	function deposit(uint256 _amount, address _referrer) public whenNotPaused {
		_handleDeposit(msg.sender, _amount, _referrer);
	}

	function collect() public whenNotPaused {
		// UserInfo memory user = userInfo[msg.sender];
		// _handleDeposit(msg.sender, 0, address(0));
		_collect(msg.sender);
	}

	// function depositFor() public payable {
	// 	_handleDeposit(msg.sender, msg.value, address(0));
	// }

	function pendingReward(address _user) public view returns (uint256) {
		UserInfo storage user = userInfo[_user];
		return _calculatePending(user.amount, user.lastReward);
	}

	function _calculatePending(
		uint256 _amount,
		uint256 _lastReward
	) internal view returns (uint256) {
		uint256 _pending = 0;
		if (_amount > 0) {
			uint256 _time = block.timestamp - _lastReward;
			_pending = (_amount * _time * rewardPerSecondPerUnit) / (1e18);
		}
		return _pending;
	}

	function _compound(UserInfo storage user) internal {
		uint256 _pending = _calculatePending(user.amount, user.lastReward);
		if (_pending > 0) {
			user.amount = user.amount + (_pending); // update user amount
			user.totalCompounded += (_pending);
			gameInfo.totalCompounded += (_pending);
			gameInfo.totalRewards += (_pending);

			emit Compound(msg.sender, _pending);

			if (user.referrer != address(0)) {
				uint256 _referralReward = (_pending * referralPercent) / 1000;

				_addToStake(user.referrer, _referralReward);
				totalReferralRewards += _referralReward;
				referralRewards[user.referrer] += _referralReward;
			}
		}
	}

	function _sendRewards(address _user, uint256 _amount) internal {
		if (mintstakeshare.balanceOf(address(this)) < _amount) {
			// mint more tokens
			mintstakeshare.mint(address(this), _amount);
		}
		mintstakeshare.transfer(_user, _amount); //send user rewards
	}

	// Internal function to add to users balance. It is needed to do calculations on if their
	// compound or collect status has changed
	// function _updateBalance(
	// 	UserInfo storage user,
	// 	uint256 _amount,
	// 	bool _isCompounder
	// ) internal {
	// }

	function _collect(address _user) internal {
		UserInfo storage user = userInfo[_user];
		uint256 _pending = _calculatePending(user.amount, user.lastReward);
		if (_pending > user.amount) {
			_pending = user.amount;
		}
		if (_pending > 0) {
			uint collectAmount = (_pending * collectClaimPercent) / 1000;
			_sendRewards(_user, collectAmount);
			user.totalCollected += (collectAmount);
			gameInfo.totalCollected += (collectAmount);
			gameInfo.totalRewards += (collectAmount);

			// CHANGE HERE
			user.amount -= collectAmount;

			emit Collect(_user, collectAmount);
		}
		user.lastReward = block.timestamp;
	}

	function pause() public onlyOwner {
		_pause();
	}

	function unpause() public onlyOwner {
		_unpause();
	}
}