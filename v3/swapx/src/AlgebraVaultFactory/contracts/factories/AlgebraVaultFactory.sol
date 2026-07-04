// Sources flattened with hardhat v2.19.5 https://hardhat.org

// SPDX-License-Identifier: BUSL-1.1 AND GPL-2.0-or-later AND MIT

pragma abicoder v2;

// File @openzeppelin/contracts/utils/Context.sol@v4.9.3

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

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
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}


// File @openzeppelin/contracts/access/Ownable.sol@v4.9.3

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

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
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
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
}


// File @openzeppelin/contracts/access/Ownable2Step.sol@v4.9.3

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable2Step.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module which provides access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership} and {acceptOwnership}.
 *
 * This module is used through inheritance. It will make available all functions
 * from parent (Ownable).
 */
abstract contract Ownable2Step is Ownable {
    address private _pendingOwner;

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Returns the address of the pending owner.
     */
    function pendingOwner() public view virtual returns (address) {
        return _pendingOwner;
    }

    /**
     * @dev Starts the ownership transfer of the contract to a new account. Replaces the pending transfer if there is one.
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual override onlyOwner {
        _pendingOwner = newOwner;
        emit OwnershipTransferStarted(owner(), newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`) and deletes any pending owner.
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual override {
        delete _pendingOwner;
        super._transferOwnership(newOwner);
    }

    /**
     * @dev The new owner accepts the ownership transfer.
     */
    function acceptOwnership() public virtual {
        address sender = _msgSender();
        require(pendingOwner() == sender, "Ownable2Step: caller is not the new owner");
        _transferOwnership(sender);
    }
}


// File contracts/interfaces/plugin/IAlgebraPluginFactory.sol

// Original license: SPDX_License_Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title An interface for a contract that is capable of deploying Algebra plugins
/// @dev Such a factory is needed if the plugin should be automatically created and connected to each new pool
interface IAlgebraPluginFactory {
  /// @notice Deploys new plugin contract for pool
  /// @param pool The address of the pool for which the new plugin will be created
  /// @param token0 First token of the pool
  /// @param token1 Second token of the pool
  /// @return New plugin address
  function createPlugin(address pool, address token0, address token1) external returns (address);
}


// File contracts/interfaces/vault/IAlgebraVaultFactory.sol

// Original license: SPDX_License_Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title The interface for the Algebra Vault Factory
/// @notice This contract can be used for automatic vaults creation
/// @dev Version: Algebra Integral
interface IAlgebraVaultFactory {
  /// @notice returns address of the community fee vault for the pool
  /// @param pool the address of Algebra Integral pool
  /// @return communityFeeVault the address of community fee vault
  function getVaultForPool(address pool) external view returns (address communityFeeVault);

  /// @notice creates the community fee vault for the pool if needed
  /// @param pool the address of Algebra Integral pool
  /// @return communityFeeVault the address of community fee vault
  function createVaultForPool(address pool) external returns (address communityFeeVault);
}


// File contracts/interfaces/IAlgebraFactory.sol

// Original license: SPDX_License_Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
// Original pragma directive: pragma abicoder v2


/// @title The interface for the Algebra Factory
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraFactory {
  /// @notice Emitted when a process of ownership renounce is started
  /// @param timestamp The timestamp of event
  /// @param finishTimestamp The timestamp when ownership renounce will be possible to finish
  event RenounceOwnershipStart(uint256 timestamp, uint256 finishTimestamp);

  /// @notice Emitted when a process of ownership renounce cancelled
  /// @param timestamp The timestamp of event
  event RenounceOwnershipStop(uint256 timestamp);

  /// @notice Emitted when a process of ownership renounce finished
  /// @param timestamp The timestamp of ownership renouncement
  event RenounceOwnershipFinish(uint256 timestamp);

  /// @notice Emitted when a pool is created
  /// @param token0 The first token of the pool by address sort order
  /// @param token1 The second token of the pool by address sort order
  /// @param pool The address of the created pool
  event Pool(address indexed token0, address indexed token1, address pool);

  /// @notice Emitted when the default community fee is changed
  /// @param newDefaultCommunityFee The new default community fee value
  event DefaultCommunityFee(uint16 newDefaultCommunityFee);

  /// @notice Emitted when the default tickspacing is changed
  /// @param newDefaultTickspacing The new default tickspacing value
  event DefaultTickspacing(int24 newDefaultTickspacing);

  /// @notice Emitted when the default fee is changed
  /// @param newDefaultFee The new default fee value
  event DefaultFee(uint16 newDefaultFee);

  /// @notice Emitted when the defaultPluginFactory address is changed
  /// @param defaultPluginFactoryAddress The new defaultPluginFactory address
  event DefaultPluginFactory(address defaultPluginFactoryAddress);

  /// @notice Emitted when the vaultFactory address is changed
  /// @param newVaultFactory The new vaultFactory address
  event VaultFactory(address newVaultFactory);

  /// @notice role that can change communityFee and tickspacing in pools
  /// @return The hash corresponding to this role
  function POOLS_ADMINISTRATOR_ROLE() external view returns (bytes32);

  /// @notice Returns `true` if `account` has been granted `role` or `account` is owner.
  /// @param role The hash corresponding to the role
  /// @param account The address for which the role is checked
  /// @return bool Whether the address has this role or the owner role or not
  function hasRoleOrOwner(bytes32 role, address account) external view returns (bool);

  /// @notice Returns the current owner of the factory
  /// @dev Can be changed by the current owner via transferOwnership(address newOwner)
  /// @return The address of the factory owner
  function owner() external view returns (address);

  /// @notice Returns the current poolDeployerAddress
  /// @return The address of the poolDeployer
  function poolDeployer() external view returns (address);

  /// @notice Returns the default community fee
  /// @return Fee which will be set at the creation of the pool
  function defaultCommunityFee() external view returns (uint16);

  /// @notice Returns the default fee
  /// @return Fee which will be set at the creation of the pool
  function defaultFee() external view returns (uint16);

  /// @notice Returns the default tickspacing
  /// @return Tickspacing which will be set at the creation of the pool
  function defaultTickspacing() external view returns (int24);

  /// @notice Return the current pluginFactory address
  /// @dev This contract is used to automatically set a plugin address in new liquidity pools
  /// @return Algebra plugin factory
  function defaultPluginFactory() external view returns (IAlgebraPluginFactory);

  /// @notice Return the current vaultFactory address
  /// @dev This contract is used to automatically set a vault address in new liquidity pools
  /// @return Algebra vault factory
  function vaultFactory() external view returns (IAlgebraVaultFactory);

  /// @notice Returns the default communityFee, tickspacing, fee and communityFeeVault for pool
  /// @param pool the address of liquidity pool
  /// @return communityFee which will be set at the creation of the pool
  /// @return tickSpacing which will be set at the creation of the pool
  /// @return fee which will be set at the creation of the pool
  /// @return communityFeeVault the address of communityFeeVault
  function defaultConfigurationForPool(
    address pool
  ) external view returns (uint16 communityFee, int24 tickSpacing, uint16 fee, address communityFeeVault);

  /// @notice Deterministically computes the pool address given the token0 and token1
  /// @dev The method does not check if such a pool has been created
  /// @param token0 first token
  /// @param token1 second token
  /// @return pool The contract address of the Algebra pool
  function computePoolAddress(address token0, address token1) external view returns (address pool);

  /// @notice Returns the pool address for a given pair of tokens, or address 0 if it does not exist
  /// @dev tokenA and tokenB may be passed in either token0/token1 or token1/token0 order
  /// @param tokenA The contract address of either token0 or token1
  /// @param tokenB The contract address of the other token
  /// @return pool The pool address
  function poolByPair(address tokenA, address tokenB) external view returns (address pool);

  /// @notice returns keccak256 of AlgebraPool init bytecode.
  /// @dev the hash value changes with any change in the pool bytecode
  /// @return Keccak256 hash of AlgebraPool contract init bytecode
  function POOL_INIT_CODE_HASH() external view returns (bytes32);

  /// @return timestamp The timestamp of the beginning of the renounceOwnership process
  function renounceOwnershipStartTimestamp() external view returns (uint256 timestamp);

  /// @notice Creates a pool for the given two tokens
  /// @param tokenA One of the two tokens in the desired pool
  /// @param tokenB The other of the two tokens in the desired pool
  /// @dev tokenA and tokenB may be passed in either order: token0/token1 or token1/token0.
  /// The call will revert if the pool already exists or the token arguments are invalid.
  /// @return pool The address of the newly created pool
  function createPool(address tokenA, address tokenB) external returns (address pool);

  /// @dev updates default community fee for new pools
  /// @param newDefaultCommunityFee The new community fee, _must_ be <= MAX_COMMUNITY_FEE
  function setDefaultCommunityFee(uint16 newDefaultCommunityFee) external;

  /// @dev updates default fee for new pools
  /// @param newDefaultFee The new  fee, _must_ be <= MAX_DEFAULT_FEE
  function setDefaultFee(uint16 newDefaultFee) external;

  /// @dev updates default tickspacing for new pools
  /// @param newDefaultTickspacing The new tickspacing, _must_ be <= MAX_TICK_SPACING and >= MIN_TICK_SPACING
  function setDefaultTickspacing(int24 newDefaultTickspacing) external;

  /// @dev updates pluginFactory address
  /// @param newDefaultPluginFactory address of new plugin factory
  function setDefaultPluginFactory(address newDefaultPluginFactory) external;

  /// @dev updates vaultFactory address
  /// @param newVaultFactory address of new vault factory
  function setVaultFactory(address newVaultFactory) external;

  /// @notice Starts process of renounceOwnership. After that, a certain period
  /// of time must pass before the ownership renounce can be completed.
  function startRenounceOwnership() external;

  /// @notice Stops process of renounceOwnership and removes timer.
  function stopRenounceOwnership() external;
}


// File contracts/interfaces/vault/IAlgebraCommunityVault.sol

// Original license: SPDX_License_Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title The interface for the Algebra community fee vault
/// @notice Community fee from pools is sent here, if it is enabled
/// @dev Version: Algebra Integral
interface IAlgebraCommunityVault {
  /// @notice Event emitted when a fees has been claimed
  /// @param token The address of token fee
  /// @param to The address where claimed rewards were sent to
  /// @param amount The amount of fees tokens claimed by communityFeeReceiver
  event TokensWithdrawal(address indexed token, address indexed to, uint256 amount);

  /// @notice Event emitted when a fees has been claimed
  /// @param token The address of token fee
  /// @param to The address where claimed rewards were sent to
  /// @param amount The amount of fees tokens claimed by Algebra
  event AlgebraTokensWithdrawal(address indexed token, address indexed to, uint256 amount);

  /// @notice Emitted when a AlgebraFeeReceiver address changed
  /// @param newAlgebraFeeReceiver New Algebra fee receiver address
  event AlgebraFeeReceiver(address newAlgebraFeeReceiver);

  /// @notice Emitted when a AlgebraFeeManager address change proposed
  /// @param pendingAlgebraFeeManager New pending Algebra fee manager address
  event PendingAlgebraFeeManager(address pendingAlgebraFeeManager);

  /// @notice Emitted when a new Algebra fee value proposed
  /// @param proposedNewAlgebraFee The new proposed Algebra fee value
  event AlgebraFeeProposal(uint16 proposedNewAlgebraFee);

  /// @notice Emitted when a Algebra fee proposal canceled
  event CancelAlgebraFeeProposal();

  /// @notice Emitted when a AlgebraFeeManager address changed
  /// @param newAlgebraFeeManager New Algebra fee manager address
  event AlgebraFeeManager(address newAlgebraFeeManager);

  /// @notice Emitted when the Algebra fee is changed
  /// @param newAlgebraFee The new Algebra fee value
  event AlgebraFee(uint16 newAlgebraFee);

  /// @notice Emitted when a CommunityFeeReceiver address changed
  /// @param newCommunityFeeReceiver New fee receiver address
  event CommunityFeeReceiver(address newCommunityFeeReceiver);

  /// @notice Withdraw protocol fees from vault
  /// @dev Can only be called by algebraFeeManager or communityFeeReceiver
  /// @param token The token address
  /// @param amount The amount of token
  function withdraw(address token, uint256 amount) external;

  struct WithdrawTokensParams {
    address token;
    uint256 amount;
  }

  /// @notice Withdraw protocol fees from vault. Used to claim fees for multiple tokens
  /// @dev Can be called by algebraFeeManager or communityFeeReceiver
  /// @param params Array of WithdrawTokensParams objects containing token addresses and amounts to withdraw
  function withdrawTokens(WithdrawTokensParams[] calldata params) external;

  // ### algebra factory owner permissioned actions ###

  /// @notice Accepts the proposed new Algebra fee
  /// @dev Can only be called by the factory owner.
  /// The new value will also be used for previously accumulated tokens that have not yet been withdrawn
  /// @param newAlgebraFee New Algebra fee value
  function acceptAlgebraFeeChangeProposal(uint16 newAlgebraFee) external;

  /// @notice Change community fee receiver address
  /// @dev Can only be called by the factory owner
  /// @param newCommunityFeeReceiver New community fee receiver address
  function changeCommunityFeeReceiver(address newCommunityFeeReceiver) external;

  // ### algebra fee manager permissioned actions ###

  /// @notice Transfers Algebra fee manager role
  /// @param _newAlgebraFeeManager new Algebra fee manager address
  function transferAlgebraFeeManagerRole(address _newAlgebraFeeManager) external;

  /// @notice accept Algebra FeeManager role
  function acceptAlgebraFeeManagerRole() external;

  /// @notice Proposes new Algebra fee value for protocol
  /// @dev the new value will also be used for previously accumulated tokens that have not yet been withdrawn
  /// @param newAlgebraFee new Algebra fee value
  function proposeAlgebraFeeChange(uint16 newAlgebraFee) external;

  /// @notice Cancels Algebra fee change proposal
  function cancelAlgebraFeeChangeProposal() external;

  /// @notice Change Algebra community fee part receiver
  /// @param newAlgebraFeeReceiver The address of new Algebra fee receiver
  function changeAlgebraFeeReceiver(address newAlgebraFeeReceiver) external;
}


// File contracts/libraries/FullMath.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.0;

/// @title Contains 512-bit math functions
/// @notice Facilitates multiplication and division that can have overflow of an intermediate value without any loss of precision
/// @dev Handles "phantom overflow" i.e., allows multiplication and division where an intermediate value overflows 256 bits
library FullMath {
  /// @notice Calculates floor(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
  /// @param a The multiplicand
  /// @param b The multiplier
  /// @param denominator The divisor
  /// @return result The 256-bit result
  /// @dev Credit to Remco Bloemen under MIT license https://xn--2-umb.com/21/muldiv
  function mulDiv(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
    unchecked {
      // 512-bit multiply [prod1 prod0] = a * b
      // Compute the product mod 2**256 and mod 2**256 - 1
      // then use the Chinese Remainder Theorem to reconstruct
      // the 512 bit result. The result is stored in two 256
      // variables such that product = prod1 * 2**256 + prod0
      uint256 prod0 = a * b; // Least significant 256 bits of the product
      uint256 prod1; // Most significant 256 bits of the product
      assembly {
        let mm := mulmod(a, b, not(0))
        prod1 := sub(sub(mm, prod0), lt(mm, prod0))
      }

      // Make sure the result is less than 2**256.
      // Also prevents denominator == 0
      require(denominator > prod1);

      // Handle non-overflow cases, 256 by 256 division
      if (prod1 == 0) {
        assembly {
          result := div(prod0, denominator)
        }
        return result;
      }

      ///////////////////////////////////////////////
      // 512 by 256 division.
      ///////////////////////////////////////////////

      // Make division exact by subtracting the remainder from [prod1 prod0]
      // Compute remainder using mulmod
      // Subtract 256 bit remainder from 512 bit number
      assembly {
        let remainder := mulmod(a, b, denominator)
        prod1 := sub(prod1, gt(remainder, prod0))
        prod0 := sub(prod0, remainder)
      }

      // Factor powers of two out of denominator
      // Compute largest power of two divisor of denominator.
      // Always >= 1.
      uint256 twos = (0 - denominator) & denominator;
      // Divide denominator by power of two
      assembly {
        denominator := div(denominator, twos)
      }

      // Divide [prod1 prod0] by the factors of two
      assembly {
        prod0 := div(prod0, twos)
      }
      // Shift in bits from prod1 into prod0. For this we need
      // to flip `twos` such that it is 2**256 / twos.
      // If twos is zero, then it becomes one
      assembly {
        twos := add(div(sub(0, twos), twos), 1)
      }
      prod0 |= prod1 * twos;

      // Invert denominator mod 2**256
      // Now that denominator is an odd number, it has an inverse
      // modulo 2**256 such that denominator * inv = 1 mod 2**256.
      // Compute the inverse by starting with a seed that is correct
      // correct for four bits. That is, denominator * inv = 1 mod 2**4
      uint256 inv = (3 * denominator) ^ 2;
      // Now use Newton-Raphson iteration to improve the precision.
      // Thanks to Hensel's lifting lemma, this also works in modular
      // arithmetic, doubling the correct bits in each step.
      inv *= 2 - denominator * inv; // inverse mod 2**8
      inv *= 2 - denominator * inv; // inverse mod 2**16
      inv *= 2 - denominator * inv; // inverse mod 2**32
      inv *= 2 - denominator * inv; // inverse mod 2**64
      inv *= 2 - denominator * inv; // inverse mod 2**128
      inv *= 2 - denominator * inv; // inverse mod 2**256

      // Because the division is now exact we can divide by multiplying
      // with the modular inverse of denominator. This will give us the
      // correct result modulo 2**256. Since the preconditions guarantee
      // that the outcome is less than 2**256, this is the final result.
      // We don't need to compute the high bits of the result and prod1
      // is no longer required.
      result = prod0 * inv;
      return result;
    }
  }

  /// @notice Calculates ceil(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
  /// @param a The multiplicand
  /// @param b The multiplier
  /// @param denominator The divisor
  /// @return result The 256-bit result
  function mulDivRoundingUp(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
    unchecked {
      if (a == 0 || ((result = a * b) / a == b)) {
        require(denominator > 0);
        assembly {
          result := add(div(result, denominator), gt(mod(result, denominator), 0))
        }
      } else {
        result = mulDiv(a, b, denominator);
        if (mulmod(a, b, denominator) > 0) {
          require(result < type(uint256).max);
          result++;
        }
      }
    }
  }

  /// @notice Returns ceil(x / y)
  /// @dev division by 0 has unspecified behavior, and must be checked externally
  /// @param x The dividend
  /// @param y The divisor
  /// @return z The quotient, ceil(x / y)
  function unsafeDivRoundingUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
    assembly {
      z := add(div(x, y), gt(mod(x, y), 0))
    }
  }
}


// File contracts/interfaces/pool/IAlgebraPoolErrors.sol

// Original license: SPDX_License_Identifier: GPL-2.0-or-later
pragma solidity >=0.8.4;

/// @title Errors emitted by a pool
/// @notice Contains custom errors emitted by the pool
/// @dev Custom errors are separated from the common pool interface for compatibility with older versions of Solidity
interface IAlgebraPoolErrors {
  // ####  pool errors  ####

  /// @notice Emitted by the reentrancy guard
  error locked();

  /// @notice Emitted if arithmetic error occurred
  error arithmeticError();

  /// @notice Emitted if an attempt is made to initialize the pool twice
  error alreadyInitialized();

  /// @notice Emitted if an attempt is made to mint or swap in uninitialized pool
  error notInitialized();

  /// @notice Emitted if 0 is passed as amountRequired to swap function
  error zeroAmountRequired();

  /// @notice Emitted if invalid amount is passed as amountRequired to swap function
  error invalidAmountRequired();

  /// @notice Emitted if the pool received fewer tokens than it should have
  error insufficientInputAmount();

  /// @notice Emitted if there was an attempt to mint zero liquidity
  error zeroLiquidityDesired();
  /// @notice Emitted if actual amount of liquidity is zero (due to insufficient amount of tokens received)
  error zeroLiquidityActual();

  /// @notice Emitted if the pool received fewer tokens0 after flash than it should have
  error flashInsufficientPaid0();
  /// @notice Emitted if the pool received fewer tokens1 after flash than it should have
  error flashInsufficientPaid1();

  /// @notice Emitted if limitSqrtPrice param is incorrect
  error invalidLimitSqrtPrice();

  /// @notice Tick must be divisible by tickspacing
  error tickIsNotSpaced();

  /// @notice Emitted if a method is called that is accessible only to the factory owner or dedicated role
  error notAllowed();

  /// @notice Emitted if new tick spacing exceeds max allowed value
  error invalidNewTickSpacing();
  /// @notice Emitted if new community fee exceeds max allowed value
  error invalidNewCommunityFee();

  /// @notice Emitted if an attempt is made to manually change the fee value, but dynamic fee is enabled
  error dynamicFeeActive();
  /// @notice Emitted if an attempt is made by plugin to change the fee value, but dynamic fee is disabled
  error dynamicFeeDisabled();
  /// @notice Emitted if an attempt is made to change the plugin configuration, but the plugin is not connected
  error pluginIsNotConnected();
  /// @notice Emitted if a plugin returns invalid selector after hook call
  /// @param expectedSelector The expected selector
  error invalidHookResponse(bytes4 expectedSelector);

  // ####  LiquidityMath errors  ####

  /// @notice Emitted if liquidity underflows
  error liquiditySub();
  /// @notice Emitted if liquidity overflows
  error liquidityAdd();

  // ####  TickManagement errors  ####

  /// @notice Emitted if the topTick param not greater then the bottomTick param
  error topTickLowerOrEqBottomTick();
  /// @notice Emitted if the bottomTick param is lower than min allowed value
  error bottomTickLowerThanMIN();
  /// @notice Emitted if the topTick param is greater than max allowed value
  error topTickAboveMAX();
  /// @notice Emitted if the liquidity value associated with the tick exceeds MAX_LIQUIDITY_PER_TICK
  error liquidityOverflow();
  /// @notice Emitted if an attempt is made to interact with an uninitialized tick
  error tickIsNotInitialized();
  /// @notice Emitted if there is an attempt to insert a new tick into the list of ticks with incorrect indexes of the previous and next ticks
  error tickInvalidLinks();

  // ####  SafeTransfer errors  ####

  /// @notice Emitted if token transfer failed internally
  error transferFailed();

  // ####  TickMath errors  ####

  /// @notice Emitted if tick is greater than the maximum or less than the minimum allowed value
  error tickOutOfRange();
  /// @notice Emitted if price is greater than the maximum or less than the minimum allowed value
  error priceOutOfRange();
}


// File contracts/libraries/SafeTransfer.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity >=0.8.4 <0.9.0;

/// @title SafeTransfer
/// @notice Safe ERC20 transfer library that gracefully handles missing return values.
/// @dev Credit to Solmate under MIT license: https://github.com/transmissions11/solmate/blob/ed67feda67b24fdeff8ad1032360f0ee6047ba0a/src/utils/SafeTransferLib.sol
/// @dev Please note that this library does not check if the token has a code! That responsibility is delegated to the caller.
library SafeTransfer {
  /// @notice Transfers tokens to a recipient
  /// @dev Calls transfer on token contract, errors with transferFailed() if transfer fails
  /// @param token The contract address of the token which will be transferred
  /// @param to The recipient of the transfer
  /// @param amount The amount of the token to transfer
  function safeTransfer(address token, address to, uint256 amount) internal {
    bool success;
    assembly {
      let freeMemoryPointer := mload(0x40) // we will need to restore 0x40 slot
      mstore(0x00, 0xa9059cbb00000000000000000000000000000000000000000000000000000000) // "transfer(address,uint256)" selector
      mstore(0x04, and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // append cleaned "to" address
      mstore(0x24, amount)
      // now we use 0x00 - 0x44 bytes (68), freeMemoryPointer is dirty
      success := call(gas(), token, 0, 0, 0x44, 0, 0x20)
      success := and(
        // set success to true if call isn't reverted and returned exactly 1 (can't just be non-zero data) or nothing
        or(and(eq(mload(0), 1), eq(returndatasize(), 32)), iszero(returndatasize())),
        success
      )
      mstore(0x40, freeMemoryPointer) // restore the freeMemoryPointer
    }

    if (!success) revert IAlgebraPoolErrors.transferFailed();
  }
}


// File contracts/AlgebraCommunityVault.sol

// Original license: SPDX_License_Identifier: BUSL-1.1
pragma solidity =0.8.20;



/// @title Algebra community fee vault
/// @notice Community fee from pools is sent here, if it is enabled
/// @dev Role system is used to withdraw tokens
/// @dev Version: Algebra Integral 1.0
contract AlgebraCommunityVault is IAlgebraCommunityVault {
  /// @dev The role can be granted in AlgebraFactory
  bytes32 public constant COMMUNITY_FEE_WITHDRAWER_ROLE = keccak256('COMMUNITY_FEE_WITHDRAWER');
  /// @dev The role can be granted in AlgebraFactory
  bytes32 public constant COMMUNITY_FEE_VAULT_ADMINISTRATOR = keccak256('COMMUNITY_FEE_VAULT_ADMINISTRATOR');
  address private immutable factory;

  /// @notice Address to which community fees are sent from vault
  address public communityFeeReceiver;
  /// @notice The percentage of the protocol fee that Algebra will receive
  /// @dev Value in thousandths,i.e. 1e-3
  uint16 public algebraFee;
  /// @notice Represents whether there is a new Algebra fee proposal or not
  bool public hasNewAlgebraFeeProposal;
  /// @notice Suggested Algebra fee value
  uint16 public proposedNewAlgebraFee;
  /// @notice Address of recipient Algebra part of community fee
  address public algebraFeeReceiver;
  /// @notice Address of Algebra fee manager
  address public algebraFeeManager;
  address private _pendingAlgebraFeeManager;

  uint16 private constant ALGEBRA_FEE_DENOMINATOR = 1000;

  modifier onlyAdministrator() {
    require(IAlgebraFactory(factory).hasRoleOrOwner(COMMUNITY_FEE_VAULT_ADMINISTRATOR, msg.sender), 'only administrator');
    _;
  }

  modifier onlyWithdrawer() {
    require(msg.sender == algebraFeeManager || IAlgebraFactory(factory).hasRoleOrOwner(COMMUNITY_FEE_WITHDRAWER_ROLE, msg.sender), 'only withdrawer');
    _;
  }

  modifier onlyAlgebraFeeManager() {
    require(msg.sender == algebraFeeManager, 'only algebra fee manager');
    _;
  }

  constructor(address _factory, address _algebraFeeManager) {
    (factory, algebraFeeManager) = (_factory, _algebraFeeManager);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function withdraw(address token, uint256 amount) external override onlyWithdrawer {
    (uint16 _algebraFee, address _algebraFeeReceiver, address _communityFeeReceiver) = _readAndVerifyWithdrawSettings();
    _withdraw(token, _communityFeeReceiver, amount, _algebraFee, _algebraFeeReceiver);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function withdrawTokens(WithdrawTokensParams[] calldata params) external override onlyWithdrawer {
    uint256 paramsLength = params.length;
    (uint16 _algebraFee, address _algebraFeeReceiver, address _communityFeeReceiver) = _readAndVerifyWithdrawSettings();

    unchecked {
      for (uint256 i; i < paramsLength; ++i) _withdraw(params[i].token, _communityFeeReceiver, params[i].amount, _algebraFee, _algebraFeeReceiver);
    }
  }

  function _readAndVerifyWithdrawSettings() private view returns (uint16 _algebraFee, address _algebraFeeReceiver, address _communityFeeReceiver) {
    (_algebraFee, _algebraFeeReceiver, _communityFeeReceiver) = (algebraFee, algebraFeeReceiver, communityFeeReceiver);
    if (_algebraFee != 0) require(_algebraFeeReceiver != address(0), 'invalid algebra fee receiver');
    require(_communityFeeReceiver != address(0), 'invalid receiver');
  }

  function _withdraw(address token, address to, uint256 amount, uint16 _algebraFee, address _algebraFeeReceiver) private {
    uint256 withdrawAmount = amount;
    if (_algebraFee != 0) {
      uint256 algebraFeeAmount = FullMath.mulDivRoundingUp(withdrawAmount, _algebraFee, ALGEBRA_FEE_DENOMINATOR);
      withdrawAmount -= algebraFeeAmount;
      SafeTransfer.safeTransfer(token, _algebraFeeReceiver, algebraFeeAmount);
      emit AlgebraTokensWithdrawal(token, _algebraFeeReceiver, algebraFeeAmount);
    }

    SafeTransfer.safeTransfer(token, to, withdrawAmount);
    emit TokensWithdrawal(token, to, withdrawAmount);
  }

  // ### algebra factory owner permissioned actions ###

  /// @inheritdoc IAlgebraCommunityVault
  function acceptAlgebraFeeChangeProposal(uint16 newAlgebraFee) external override onlyAdministrator {
    require(hasNewAlgebraFeeProposal, 'not proposed');
    require(newAlgebraFee == proposedNewAlgebraFee, 'invalid new fee');

    // note that the new value will be used for previously accumulated tokens that have not yet been withdrawn
    algebraFee = newAlgebraFee;
    (proposedNewAlgebraFee, hasNewAlgebraFeeProposal) = (0, false);
    emit AlgebraFee(newAlgebraFee);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function changeCommunityFeeReceiver(address newCommunityFeeReceiver) external override onlyAdministrator {
    require(newCommunityFeeReceiver != address(0));
    require(newCommunityFeeReceiver != communityFeeReceiver);
    communityFeeReceiver = newCommunityFeeReceiver;
    emit CommunityFeeReceiver(newCommunityFeeReceiver);
  }

  // ### algebra fee manager permissioned actions ###

  /// @inheritdoc IAlgebraCommunityVault
  function transferAlgebraFeeManagerRole(address _newAlgebraFeeManager) external override onlyAlgebraFeeManager {
    _pendingAlgebraFeeManager = _newAlgebraFeeManager;
    emit PendingAlgebraFeeManager(_newAlgebraFeeManager);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function acceptAlgebraFeeManagerRole() external override {
    require(msg.sender == _pendingAlgebraFeeManager);
    (_pendingAlgebraFeeManager, algebraFeeManager) = (address(0), msg.sender);
    emit AlgebraFeeManager(msg.sender);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function proposeAlgebraFeeChange(uint16 newAlgebraFee) external override onlyAlgebraFeeManager {
    require(newAlgebraFee <= ALGEBRA_FEE_DENOMINATOR);
    require(newAlgebraFee != proposedNewAlgebraFee && newAlgebraFee != algebraFee);
    (proposedNewAlgebraFee, hasNewAlgebraFeeProposal) = (newAlgebraFee, true);
    emit AlgebraFeeProposal(newAlgebraFee);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function cancelAlgebraFeeChangeProposal() external override onlyAlgebraFeeManager {
    (proposedNewAlgebraFee, hasNewAlgebraFeeProposal) = (0, false);
    emit CancelAlgebraFeeProposal();
  }

  /// @inheritdoc IAlgebraCommunityVault
  function changeAlgebraFeeReceiver(address newAlgebraFeeReceiver) external override onlyAlgebraFeeManager {
    require(newAlgebraFeeReceiver != address(0));
    require(newAlgebraFeeReceiver != algebraFeeReceiver);
    algebraFeeReceiver = newAlgebraFeeReceiver;
    emit AlgebraFeeReceiver(newAlgebraFeeReceiver);
  }
}


// File contracts/AlgebraVaultFactory.sol

// Original license: SPDX_License_Identifier: BUSL-1.1
// pragma solidity =0.8.20;
// Original pragma directive: pragma abicoder v1

/// @title Algebra vault factory
/// @notice This contract is used to set AlgebraCommunityVault as communityVault in new pools
contract AlgebraVaultFactory is IAlgebraVaultFactory, Ownable2Step {
  address private immutable factory;
  mapping(address => address) private vaultForPool;

  constructor(address _factory) {
    require(_factory != address(0));
    factory = _factory;
  }

  /// @inheritdoc IAlgebraVaultFactory
  function getVaultForPool(address pool) external view override returns (address) {
    return vaultForPool[pool];
  }

  /// @inheritdoc IAlgebraVaultFactory
  function createVaultForPool(address pool) external override returns (address) {
    require(msg.sender == factory);

    address vault = address(new AlgebraCommunityVault(factory, owner()));
    vaultForPool[pool] = vault;
    return vault;
  }
}
