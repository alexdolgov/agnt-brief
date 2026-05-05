// ============================================================
// FILE: contracts/flatten_deployment_linea/crypto_factory_delegate.sol
// ============================================================


// SPDX-License-Identifier: AGPL-3.0-or-later AND GPL-3.0-or-later AND MIT

// File contracts/interfaces/master/IFeeManager.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

/// @notice The manager contract to control fees.
/// Management functions are omitted.
interface IFeeManager {
    function getSwapFee(
        address pool,
        address sender,
        address tokenIn,
        address tokenOut,
        bytes calldata data
    ) external view returns (uint24);

    function getProtocolFee(address pool) external view returns (uint24);

    function getFeeRecipient() external view returns (address);
}


// File contracts/interfaces/master/IFeeManagerV2.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
/// @notice The manager contract to control fees.
/// Management functions are omitted.
interface IFeeManagerV2 is IFeeManager {
    struct FeeData {
        uint64 gamma;
        uint24 minFee;
        uint24 maxFee;
    }

    function getSwapFeeData(
        address pool,
        address sender,
        address tokenIn,
        address tokenOut,
        bytes calldata data
    ) external view returns (FeeData memory);

    function getSwapFeeHook() external view returns (address);
}


// File contracts/interfaces/master/IForwarderRegistry.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IForwarderRegistry {
    function isForwarder(address forwarder) external view returns (bool);
}


// File contracts/interfaces/master/IPoolMaster.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
/// @dev The master contract to create pools and manage whitelisted factories.
/// Inheriting the fee manager interface to support fee queries.
interface IPoolMaster is IFeeManager, IForwarderRegistry {
    event SetFactoryWhitelisted(address indexed factory, bool whitelisted);

    event RegisterPool(
        address indexed factory,
        address indexed pool,
        uint16 indexed poolType,
        bytes data
    );

    event UpdateForwarderRegistry(address indexed newForwarderRegistry);

    event UpdateFeeManager(address indexed newFeeManager);

    function wETH() external view returns (address);

    function vault() external view returns (address);

    function feeManager() external view returns (address);

    function pools(uint) external view returns (address);

    function poolsLength() external view returns (uint);

    // Forwarder Registry
    function setForwarderRegistry(address) external;

    // Fees
    function setFeeManager(address) external;

    // Factories
    function isFactoryWhitelisted(address) external view returns (bool);

    function setFactoryWhitelisted(address factory, bool whitelisted) external;

    // Pools
    function isPool(address) external view returns (bool);

    function getPool(bytes32) external view returns (address);

    function createPool(address factory, bytes calldata data) external returns (address pool);

    function registerPool(address pool, uint16 poolType, bytes calldata data, address token0, address token1) external;
}


// File contracts/interfaces/pool/IPool.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IPool {
    struct TokenAmount {
        address token;
        uint amount;
    }

    /// @dev Returns the address of pool master.
    function master() external view returns (address);

    /// @dev Returns the vault.
    function vault() external view returns (address);

    /// @dev Returns the pool type.
    function poolType() external view returns (uint16);

    /// @dev Returns the assets of the pool.
    function getAssets() external view returns (address[] memory assets);

    /// @dev Returns the swap fee of the pool.
    function getSwapFee(address sender, address tokenIn, address tokenOut, bytes calldata data) external view returns (uint24 swapFee);

    /// @dev Returns the protocol fee of the pool.
    function getProtocolFee() external view returns (uint24 protocolFee);

    /// @dev Mints liquidity.
    function mint(
        bytes calldata data,
        address sender,
        address callback,
        bytes calldata callbackData
    ) external returns (uint liquidity);

    /// @dev Burns liquidity.
    function burn(
        bytes calldata data,
        address sender,
        address callback,
        bytes calldata callbackData
    ) external returns (TokenAmount[] memory tokenAmounts);

    /// @dev Burns liquidity with single output token.
    function burnSingle(
        bytes calldata data,
        address sender,
        address callback,
        bytes calldata callbackData
    ) external returns (TokenAmount memory tokenAmount);

    /// @dev Swaps between tokens.
    function swap(
        bytes calldata data,
        address sender,
        address callback,
        bytes calldata callbackData
    ) external returns (TokenAmount memory tokenAmount);
}


// File contracts/interfaces/token/IERC20Base.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IERC20Base {
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint amount) external returns (bool);
    function transfer(address to, uint amount) external returns (bool);
    function transferFrom(address from, address to, uint amount) external returns (bool);
    
    event Approval(address indexed owner, address indexed spender, uint amount);
    event Transfer(address indexed from, address indexed to, uint amount);
}


// File contracts/interfaces/token/IERC20.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
interface IERC20 is IERC20Base {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
}


// File contracts/interfaces/token/IERC20Permit.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
interface IERC20Permit is IERC20 {
    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
    function nonces(address owner) external view returns (uint);
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}


// File contracts/interfaces/token/IERC20Permit2.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
interface IERC20Permit2 is IERC20Permit {
    function permit2(address owner, address spender, uint amount, uint deadline, bytes calldata signature) external;
}


// File contracts/interfaces/pool/IBasePool.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
interface IBasePool is IPool, IERC20Permit2 {
    function token0() external view returns (address);
    function token1() external view returns (address);

    function reserve0() external view returns (uint);
    function reserve1() external view returns (uint);
    function invariantLast() external view returns (uint);

    function getReserves() external view returns (uint, uint);
    function getAmountOut(address tokenIn, uint amountIn, address sender) external view returns (uint amountOut);
    function getAmountIn(address tokenOut, uint amountOut, address sender) external view returns (uint amountIn);

    event Mint(
        address indexed sender,
        uint amount0,
        uint amount1,
        uint liquidity,
        address indexed to
    );

    event Burn(
        address indexed sender,
        uint amount0,
        uint amount1,
        uint liquidity,
        address indexed to
    );

    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );

    event Sync(
        uint reserve0,
        uint reserve1
    );
}


// File contracts/interfaces/pool/IBasePoolV2.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
interface IBasePoolV2 is IBasePool {
    function poolVersion() external view returns (uint);
    function sync() external;

    event MintProtocolFee(
        address indexed feeRecipient,
        uint24 protocolFee,
        uint liquidity,
        uint totalSupply
    );

    event Swapped(
        address indexed sender,
        address indexed user,
        address indexed tokenOut,
        uint amountIn,
        uint amountOut,
        uint24 swapFee,
        address to
    );

    event Fee(
        uint amount0,
        uint amount1
    );
}


// File contracts/interfaces/vault/IERC3156FlashBorrower.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IERC3156FlashBorrower {
    /**
     * @dev Receive a flash loan.
     * @param initiator The initiator of the loan.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @param fee The additional amount of tokens to repay.
     * @param data Arbitrary data structure, intended to contain user-defined parameters.
     * @return The keccak256 hash of "ERC3156FlashBorrower.onFlashLoan"
     */
    function onFlashLoan(
        address initiator,
        address token,
        uint256 amount,
        uint256 fee,
        bytes calldata data
    ) external returns (bytes32);
}


// File contracts/interfaces/vault/IERC3156FlashLender.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
interface IERC3156FlashLender {
    /**
     * @dev The amount of currency available to be lent.
     * @param token The loan currency.
     * @return The amount of `token` that can be borrowed.
     */
    function maxFlashLoan(
        address token
    ) external view returns (uint256);

    /**
     * @dev The fee to be charged for a given loan.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @return The amount of `token` to be charged for the loan, on top of the returned principal.
     */
    function flashFee(
        address token,
        uint256 amount
    ) external view returns (uint256);

    /**
     * @dev Initiate a flash loan.
     * @param receiver The receiver of the tokens in the loan, and the receiver of the callback.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @param data Arbitrary data structure, intended to contain user-defined parameters.
     */
    function flashLoan(
        IERC3156FlashBorrower receiver,
        address token,
        uint256 amount,
        bytes calldata data
    ) external returns (bool);
}


// File contracts/interfaces/pool/IPoolFlashLoan.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IPoolFlashLoan is IERC3156FlashLender {
    /**
     * @dev Emitted for each individual flash loan performed by `flashLoan`.
     */
    event FlashLoan(address indexed recipient, address indexed token, uint amount, uint feeAmount);
}


// File contracts/pool/crypto/ICryptoMath.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

interface ICryptoMath {
    function getY(
        uint a,
        uint gamma,
        uint x0,
        uint x1,
        uint d,
        uint i
    ) external view returns (uint y, uint k0_prev);

    function computeD(
        uint a,
        uint gamma,
        uint xp0,
        uint xp1,
        uint k0_prev
    ) external view returns (uint);

    function getLastPrices(
        uint a,
        uint gamma,
        uint xp0,
        uint xp1,
        uint d,
        uint priceScale
    ) external view returns (uint);

    function getPriceOracle(
        uint lastTimestamp,
        uint maTime,
        uint lastPrices,
        uint priceScale,
        uint priceOracle
    ) external view returns (uint);
}


// File contracts/interfaces/pool/ICryptoPool.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
interface ICryptoPool is IBasePoolV2, IPoolFlashLoan {
    //function wETH() external view returns (address); // private immutable
    function factory() external view returns(address);
    function token0PrecisionMultiplier() external view returns (uint);
    function token1PrecisionMultiplier() external view returns (uint);

    struct PoolParams {
        uint32 initialA;
        uint32 futureA;

        uint64 initialGamma;
        uint64 futureGamma;
        
        uint32 initialTime;
        /// @dev Time when ramping is finished.
        /// This value is 0 (default) when pool is first deployed, and only gets
        /// populated in `rampParams` when the ramping process is initiated.
        /// After ramping is finished (i.e. futureParamsTime < block.timestamp),
        /// the variable is left and not set to 0.
        uint32 futureTime;
    }

    struct RebalancingParams {
        uint64 allowedExtraProfit;
        uint64 adjustmentStep;
        uint32 maTime;
        uint16 requiredProfit;
        uint8 checkLastProfit;
    }

    function getParams() external view returns (uint a, uint gamma, uint futureTime);
    function priceScale() external view returns (uint);
    function cachedPriceOracle() external view returns (uint);
    function lastPrices() external view returns (uint);
    function lastPricesTimestamp() external view returns (uint);
    function virtualPrice() external view returns (uint);
    function xcpProfit() external view returns (uint);
    function xcpProfitLast() external view returns (uint);

    //function poolVersion() external view returns(uint);
    function poolType() external view returns(uint16);
    function MATH() external view returns(ICryptoMath);
    function invariantLast() external view returns(uint);

    //function poolParams() external view returns(PoolParams memory);
    //function rebalancingParams() external view returns(RebalancingParams memory);
    function calculateSingleWithdrawAmount(address _sender,uint a,uint gamma,uint liquidity,bool isToken0Out,bool updateInvariant) external view returns (uint, uint, uint, uint, uint24);
    function getVirtualPrice() external view returns(uint);
    //function getLiquidityPrice() external view returns (uint);
    function getPriceOracle() external returns (uint);
    function rampParams(uint32 _futureA, uint64 _futureGamma, uint32 _futureTime) external;
    function stopRampParams() external;
    function setRebalancingParams(uint64 _allowedExtraProfit, uint64 _adjustmentStep, uint32 _maTime, uint16 _requiredProfit, uint8 _checkLastProfit) external;
    function claimProtocolFee() external;
    function updateCryptoMath() external;
    function skim(address to) external;

    // Pausable.sol - removed
    //function paused() external view returns (bool);
    //function setPaused(bool _status) external;
    //function owner() external view returns (address);
    //function transferOwnership(address newOwner) external;

    event RampParams(
        uint currentA,
        uint futureA,
        uint currentGamma,
        uint futureGamma,
        uint currentTime,
        uint futureTime
    );

    event StopRampParams(
        uint currentA,
        uint currentGamma,
        uint stopTime
    );

    event SetRebalancingParams(
        uint allowedExtraProfit,
        uint adjustmentStep,
        uint maTime,
        uint requiredProfit,
        uint checkLastProfit
    );

    event UpdatePoolProfit(
        uint xcpProfit,
        uint virtualPrice
    );

    event UpdateInvariant(
        uint newInvariant
    );

    event UpdatePriceScale(
        uint newPriceScale
    );
}


// File contracts/interfaces/vault/IFlashLoanRecipient.sol

// Original license: SPDX_License_Identifier: GPL-3.0-or-later

pragma solidity >=0.7.0 <0.9.0;

// Inspired by Aave Protocol's IFlashLoanReceiver.

interface IFlashLoanRecipient {
    /**
     * @dev When `flashLoan` is called on the Vault, it invokes the `receiveFlashLoan` hook on the recipient.
     *
     * At the time of the call, the Vault will have transferred `amounts` for `tokens` to the recipient. Before this
     * call returns, the recipient must have transferred `amounts` plus `feeAmounts` for each token back to the
     * Vault, or else the entire flash loan will revert.
     *
     * `userData` is the same value passed in the `IVault.flashLoan` call.
     */
    function receiveFlashLoan(
        address[] memory tokens,
        uint[] memory amounts,
        uint[] memory feeAmounts,
        bytes memory userData
    ) external;
}


// File contracts/interfaces/vault/IFlashLoan.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
interface IFlashLoan is IERC3156FlashLender {
    function flashLoanFeePercentage() external view returns (uint);

    /**
     * @dev Performs a 'flash loan', sending tokens to `recipient`, executing the `receiveFlashLoan` hook on it,
     * and then reverting unless the tokens plus a proportional protocol fee have been returned.
     *
     * The `tokens` and `amounts` arrays must have the same length, and each entry in these indicates the loan amount
     * for each token contract. `tokens` must be sorted in ascending order.
     *
     * The 'userData' field is ignored by the Vault, and forwarded as-is to `recipient` as part of the
     * `receiveFlashLoan` call.
     *
     * Emits `FlashLoan` events.
     */
    function flashLoanMultiple(
        IFlashLoanRecipient recipient,
        address[] memory tokens,
        uint[] memory amounts,
        bytes memory userData
    ) external;

    /**
     * @dev Emitted for each individual flash loan performed by `flashLoan`.
     */
    event FlashLoan(address indexed recipient, address indexed token, uint amount, uint feeAmount);
}


// File contracts/interfaces/vault/IVault.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
interface IVault is IFlashLoan {
    function wETH() external view returns (address);

    function reserves(address token) external view returns (uint reserve);

    function balanceOf(address token, address owner) external view returns (uint balance);

    function deposit(address token, address to) external payable returns (uint amount);

    function depositETH(address to) external payable returns (uint amount);

    function transferAndDeposit(address token, address to, uint amount) external payable returns (uint);

    function transfer(address token, address to, uint amount) external;

    function withdraw(address token, address to, uint amount) external;

    function withdrawAlternative(address token, address to, uint amount, uint8 mode) external;

    function withdrawETH(address to, uint amount) external;
}


// File contracts/interfaces/token/IERC165.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IERC165 {
    /// @notice Query if a contract implements an interface
    /// @param interfaceID The interface identifier, as specified in ERC-165
    /// @dev Interface identification is specified in ERC-165. This function
    ///  uses less than 30,000 gas.
    /// @return `true` if the contract implements `interfaceID` and
    ///  `interfaceID` is not 0xffffffff, `false` otherwise
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}


// File contracts/libraries/ECDSA.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

/**
 * @dev Elliptic Curve Digital Signature Algorithm (ECDSA) operations.
 *
 * These functions can be used to verify that a message was signed by the holder
 * of the private keys of a given address.
 *
 * Based on OpenZeppelin's ECDSA library.
 * https://github.com/OpenZeppelin/openzeppelin-contracts/blob/561d1061fc568f04c7a65853538e834a889751e8/contracts/utils/cryptography/ECDSA.sol
 */
library ECDSA {

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature` or error string. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]
     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]
     */
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        // Check the signature length
        if (signature.length != 65) {
            return address(0);
        }

        // Divide the signature in r, s and v variables
        bytes32 r;
        bytes32 s;
        uint8 v;

        // ecrecover takes the signature parameters, and the only way to get them
        // currently is to use assembly.
        /// @solidity memory-safe-assembly
        // solhint-disable-next-line no-inline-assembly
        assembly {
            r := mload(add(signature, 0x20))
            s := mload(add(signature, 0x40))
            v := byte(0, mload(add(signature, 0x60)))
        }

        // EIP-2 still allows signature malleability for ecrecover(). Remove this possibility and make the signature
        // unique. Appendix F in the Ethereum Yellow paper (https://ethereum.github.io/yellowpaper/paper.pdf), defines
        // the valid range for s in (301): 0 < s < secp256k1n ÷ 2 + 1, and for v in (302): v ∈ {27, 28}. Most
        // signatures from current libraries generate a unique signature with an s-value in the lower half order.
        //
        // If your library generates malleable signatures, such as s-values in the upper range, calculate a new s-value
        // with 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141 - s1 and flip v from 27 to 28 or
        // vice versa. If your library also generates signatures with 0/1 for v instead 27/28, add 27 to v to accept
        // these malleable signatures as well.
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
            return address(0);
        }

        return ecrecover(hash, v, r, s);
    }
}


// File contracts/libraries/SignatureChecker.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;
/**
 * @dev Signature verification helper that can be used instead of `ECDSA.recover` to seamlessly support both ECDSA
 * signatures from externally owned accounts (EOAs) as well as ERC1271 signatures from smart contract wallets like
 * Argent and Gnosis Safe.
 *
 * Based on OpenZeppelin's SignatureChecker library.
 * https://github.com/OpenZeppelin/openzeppelin-contracts/blob/561d1061fc568f04c7a65853538e834a889751e8/contracts/utils/cryptography/SignatureChecker.sol
 */
library SignatureChecker {

    bytes4 constant internal MAGICVALUE = 0x1626ba7e; // bytes4(keccak256("isValidSignature(bytes32,bytes)")

    /** 
     * @dev Checks if a signature is valid for a given signer and data hash. If the signer is a smart contract, the
     * signature is validated against that smart contract using ERC1271, otherwise it's validated using `ECDSA.recover`.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function isValidSignatureNow(
        address signer,
        bytes32 hash,
        bytes memory signature
    ) internal view returns (bool) {
        (address recovered) = ECDSA.recover(hash, signature);
        if (recovered == signer) {
            if (recovered != address(0)) {
                return true;
            }
        }

        (bool success, bytes memory result) = signer.staticcall(
            abi.encodeWithSelector(MAGICVALUE, hash, signature)
        );
        return (
            success &&
            result.length == 32 &&
            abi.decode(result, (bytes32)) == bytes32(MAGICVALUE)
        );
    }
}


// File contracts/libraries/ERC20Permit2.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;
error Expired();
error InvalidSignature();

/**
 * @dev A simple ERC20 implementation for pool's liquidity token, supports permit by both ECDSA signatures from
 * externally owned accounts (EOAs) as well as ERC1271 signatures from smart contract wallets like Argent.
 *
 * Based on Solmate's ERC20.
 * https://github.com/transmissions11/solmate/blob/bff24e835192470ed38bf15dbed6084c2d723ace/src/tokens/ERC20.sol
 */
contract ERC20Permit2 is IERC165, IERC20Permit2 {
    uint8 public immutable override decimals = 18;

    uint public override totalSupply;
    mapping(address => uint) public override balanceOf;
    mapping(address => mapping(address => uint)) public override allowance;

    bytes32 private constant PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9; // keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)")
    mapping(address => uint) public override nonces;

    // These members are actually immutable as
    // `_initialize` will only indent to be called once.
    string public override name;
    string public override symbol;
    uint private INITIAL_CHAIN_ID;
    bytes32 private INITIAL_DOMAIN_SEPARATOR;

    function _initialize(string memory _name, string memory _symbol) internal {
        name = _name;
        symbol = _symbol;

        INITIAL_CHAIN_ID = block.chainid;
        INITIAL_DOMAIN_SEPARATOR = _computeDomainSeparator();
    }

    function supportsInterface(bytes4 interfaceID) external pure override returns (bool) {
        return
            interfaceID == this.supportsInterface.selector || // ERC-165
            interfaceID == this.permit.selector || // ERC-2612
            interfaceID == this.permit2.selector; // Permit2
    }

    function DOMAIN_SEPARATOR() public view override returns (bytes32) {
        return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : _computeDomainSeparator();
    }

    function _computeDomainSeparator() private view returns (bytes32) {
        return keccak256(
            abi.encode(
                // keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)")
                0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f,
                keccak256(bytes(name)),
                // keccak256(bytes("1"))
                0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6,
                block.chainid,
                address(this)
            )
        );
    }

    function _approve(address _owner, address _spender, uint _amount) private {
        allowance[_owner][_spender] = _amount;
        emit Approval(_owner, _spender, _amount);
    }

    function approve(address _spender, uint _amount) public override returns (bool) {
        _approve(msg.sender, _spender, _amount);
        return true;
    }

    function transfer(address _to, uint _amount) public override returns (bool) {
        balanceOf[msg.sender] -= _amount;

        // Cannot overflow because the sum of all user balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[_to] += _amount;
        }

        emit Transfer(msg.sender, _to, _amount);
        return true;
    }

    function transferFrom(address _from, address _to, uint _amount) public override returns (bool) {
        uint256 _allowed = allowance[_from][msg.sender]; // Saves gas for limited approvals.
        if (_allowed != type(uint).max) {
            allowance[_from][msg.sender] = _allowed - _amount;
        }

        balanceOf[_from] -= _amount;
        // Cannot overflow because the sum of all user balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[_to] += _amount;
        }

        emit Transfer(_from, _to, _amount);
        return true;
    }

    function _mint(address _to, uint _amount) internal {
        totalSupply += _amount;

        // Cannot overflow because the sum of all user balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[_to] += _amount;
        }

        emit Transfer(address(0), _to, _amount);
    }

    function _burn(address _from, uint _amount) internal {
        balanceOf[_from] -= _amount;

        // Cannot underflow because a user's balance will never be larger than the total supply.
        unchecked {
            totalSupply -= _amount;
        }

        emit Transfer(_from, address(0), _amount);
    }

    modifier ensures(uint _deadline) {
        // solhint-disable-next-line not-rely-on-time
        if (block.timestamp > _deadline) {
            revert Expired();
        }
        _;
    }

    function _permitHash(
        address _owner,
        address _spender,
        uint _amount,
        uint _deadline
    ) private returns (bytes32) {
        return keccak256(
            abi.encodePacked(
                "\x19\x01",
                DOMAIN_SEPARATOR(),
                keccak256(abi.encode(PERMIT_TYPEHASH, _owner, _spender, _amount, nonces[_owner]++, _deadline))
            )
        );
    }

    function permit(
        address _owner,
        address _spender,
        uint _amount,
        uint _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) public override ensures(_deadline) {
        bytes32 _hash = _permitHash(_owner, _spender, _amount, _deadline);
        address _recoveredAddress = ecrecover(_hash, _v, _r, _s);

        if (_recoveredAddress != _owner) {
            revert InvalidSignature();
        }
        if (_recoveredAddress == address(0)) {
            revert InvalidSignature();
        }

        _approve(_owner, _spender, _amount);
    }

    function permit2(
        address _owner,
        address _spender,
        uint _amount,
        uint _deadline,
        bytes calldata _signature
    ) public override ensures(_deadline) {
        bytes32 _hash = _permitHash(_owner, _spender, _amount, _deadline);

        if (!SignatureChecker.isValidSignatureNow(_owner, _hash, _signature)) {
            revert InvalidSignature();
        }

        _approve(_owner, _spender, _amount);
    }
}


// File contracts/libraries/Ownable.sol

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (access/Ownable.sol)

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
abstract contract Ownable {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(msg.sender);
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
        require(owner() == msg.sender, "Ownable: caller is not the owner");
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


// File contracts/libraries/Ownable2Step.sol

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (access/Ownable2Step.sol)

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
        require(pendingOwner() == msg.sender, "Ownable2Step: caller is not the new owner");
        _transferOwnership(msg.sender);
    }
}


// File contracts/interfaces/ICallback.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

/// @dev The callback interface for SyncSwap base pool operations.
/// Note additional checks will be required for some callbacks, see below for more information.
/// Visit the documentation https://syncswap.gitbook.io/api-documentation/ for more details.
interface ICallback {

    struct BaseMintCallbackParams {
        address sender;
        address to;
        uint reserve0;
        uint reserve1;
        uint balance0;
        uint balance1;
        uint amount0;
        uint amount1;
        uint fee0;
        uint fee1;
        uint newInvariant;
        uint oldInvariant;
        uint totalSupply;
        uint liquidity;
        uint24 swapFee;
        bytes callbackData;
    }
    function syncSwapBaseMintCallback(BaseMintCallbackParams calldata params) external;

    struct BaseBurnCallbackParams {
        address sender;
        address to;
        uint balance0;
        uint balance1;
        uint liquidity;
        uint totalSupply;
        uint amount0;
        uint amount1;
        uint8 withdrawMode;
        bytes callbackData;
    }
    function syncSwapBaseBurnCallback(BaseBurnCallbackParams calldata params) external;

    struct BaseBurnSingleCallbackParams {
        address sender;
        address to;
        address tokenIn;
        address tokenOut;
        uint balance0;
        uint balance1;
        uint liquidity;
        uint totalSupply;
        uint amount0;
        uint amount1;
        uint amountOut;
        uint amountSwapped;
        uint feeIn;
        uint24 swapFee;
        uint8 withdrawMode;
        bytes callbackData;
    }
    function syncSwapBaseBurnSingleCallback(BaseBurnSingleCallbackParams calldata params) external;

    struct BaseSwapCallbackParams {
        address sender;
        address to;
        address tokenIn;
        address tokenOut;
        uint reserve0;
        uint reserve1;
        uint balance0;
        uint balance1;
        uint amountIn;
        uint amountOut;
        uint feeIn;
        uint24 swapFee;
        uint8 withdrawMode;
        bytes callbackData;
    }
    function syncSwapBaseSwapCallback(BaseSwapCallbackParams calldata params) external;
}


// File contracts/interfaces/IOwnable.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IOwnable {
    function owner() external view returns (address);
}


// File contracts/interfaces/IWETH.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IWETH {
    function deposit() external payable;
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
    function withdraw(uint) external;
}


// File contracts/interfaces/master/IFeeRecipient.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IFeeRecipient {
    /// @dev Notifies the fee recipient after sent fees.
    function notifyFees(
        uint16 feeType,
        address token,
        uint amount,
        uint feeRate,
        bytes calldata data
    ) external;
}


// File contracts/libraries/Math.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

/// @dev Math functions.
/// @dev Modified from Solmate (https://github.com/Rari-Capital/solmate/blob/main/src/utils/FixedPointMathLib.sol)
library Math {

    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    function sqrtInt(uint256 x) internal pure returns (uint256) {
        if (x == 0) {
            return 0;
        }

        uint z = (x + 1e18) / 2;
        uint y = x;

        for (uint i; i < 256; ) {
            if (z == y) {
                return y;
            }

            y = z;
            z = (x * 1e18 / z + z) / 2;

            unchecked {
                ++i;
            }
        }

        revert();
    }

    function geometricMean(uint a, uint b) internal pure returns (uint) {
        return Math.sqrt(a * b);
    }

    /// @notice Compares a and b and returns 'true' if the difference between a and b
    /// is less than 1 or equal to each other.
    /// @param a uint256 to compare with.
    /// @param b uint256 to compare with.
    function within1(uint256 a, uint256 b) internal pure returns (bool) {
        unchecked {
            if (a > b) {
                return a - b <= 1;
            }
            return b - a <= 1;
        }
    }

    /// @dev Returns the square root of `x`.
    function sqrt(uint256 x) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // `floor(sqrt(2**15)) = 181`. `sqrt(2**15) - 181 = 2.84`.
            z := 181 // The "correct" value is 1, but this saves a multiplication later.

            // This segment is to get a reasonable initial estimate for the Babylonian method. With a bad
            // start, the correct # of bits increases ~linearly each iteration instead of ~quadratically.

            // Let `y = x / 2**r`.
            // We check `y >= 2**(k + 8)` but shift right by `k` bits
            // each branch to ensure that if `x >= 256`, then `y >= 256`.
            let r := shl(7, lt(0xffffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffffff, shr(r, x))))
            z := shl(shr(1, r), z)

            // Goal was to get `z*z*y` within a small factor of `x`. More iterations could
            // get y in a tighter range. Currently, we will have y in `[256, 256*(2**16))`.
            // We ensured `y >= 256` so that the relative difference between `y` and `y+1` is small.
            // That's not possible if `x < 256` but we can just verify those cases exhaustively.

            // Now, `z*z*y <= x < z*z*(y+1)`, and `y <= 2**(16+8)`, and either `y >= 256`, or `x < 256`.
            // Correctness can be checked exhaustively for `x < 256`, so we assume `y >= 256`.
            // Then `z*sqrt(y)` is within `sqrt(257)/sqrt(256)` of `sqrt(x)`, or about 20bps.

            // For `s` in the range `[1/256, 256]`, the estimate `f(s) = (181/1024) * (s+1)`
            // is in the range `(1/2.84 * sqrt(s), 2.84 * sqrt(s))`,
            // with largest error when `s = 1` and when `s = 256` or `1/256`.

            // Since `y` is in `[256, 256*(2**16))`, let `a = y/65536`, so that `a` is in `[1/256, 256)`.
            // Then we can estimate `sqrt(y)` using
            // `sqrt(65536) * 181/1024 * (a + 1) = 181/4 * (y + 65536)/65536 = 181 * (y + 65536)/2**18`.

            // There is no overflow risk here since `y < 2**136` after the first branch above.
            z := shr(18, mul(z, add(shr(r, x), 65536))) // A `mul()` is saved from starting `z` at 181.

            // Given the worst case multiplicative error of 2.84 above, 7 iterations should be enough.
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))

            // If `x+1` is a perfect square, the Babylonian method cycles between
            // `floor(sqrt(x))` and `ceil(sqrt(x))`. This statement ensures we return floor.
            // See: https://en.wikipedia.org/wiki/Integer_square_root#Using_only_integer_division
            // Since the ceil is rare, we save gas on the assignment and repeat division in the rare case.
            // If you don't care whether the floor or ceil square root is returned, you can remove this statement.
            z := sub(z, lt(div(x, z), z))
        }
    }

    // Mul Div

    /// @dev Rounded down.
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x * y in z for now.
            z := mul(x, y)

            // Equivalent to require(denominator != 0 && (x == 0 || (x * y) / x == y))
            if iszero(and(iszero(iszero(denominator)), or(iszero(x), eq(div(z, x), y)))) {
                revert(0, 0)
            }

            // Divide z by the denominator.
            z := div(z, denominator)
        }
    }

    /// @dev Rounded down.
    /// This function assumes that `x` is not zero, and must be checked externally.
    /// Reverts if x is zero.
    function mulDivUnsafeFirst(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x * y in z for now.
            z := mul(x, y)

            // Equivalent to require(denominator != 0 && (x * y) / x == y)
            if iszero(and(iszero(iszero(denominator)), eq(div(z, x), y))) {
                revert(0, 0)
            }

            // Divide z by the denominator.
            z := div(z, denominator)
        }
    }

    /// @dev Rounded down.
    /// This function assumes that `denominator` is not zero, and must be checked externally.
    /// This allows x to be zero.
    function mulDivUnsafeLast(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x * y in z for now.
            z := mul(x, y)

            // Equivalent to require(x == 0 || (x * y) / x == y)
            if iszero(or(iszero(x), eq(div(z, x), y))) {
                revert(0, 0)
            }

            // Divide z by the denominator.
            z := div(z, denominator)
        }
    }

    /// @dev Rounded down.
    /// This function assumes that both `x` and `denominator` are not zero, and must be checked externally.
    /// Reverts if x is zero.
    function mulDivUnsafeFirstLast(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x * y in z for now.
            z := mul(x, y)

            // Equivalent to require((x * y) / x == y)
            if iszero(eq(div(z, x), y)) {
                revert(0, 0)
            }

            // Divide z by the denominator.
            z := div(z, denominator)
        }
    }

    // Mul

    /// @dev Optimized safe multiplication operation for minimal gas cost.
    /// Equivalent to *
    function mul(
        uint256 x,
        uint256 y
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x * y in z for now.
            z := mul(x, y)

            // Equivalent to require(x == 0 || (x * y) / x == y)
            if iszero(or(iszero(x), eq(div(z, x), y))) {
                revert(0, 0)
            }
        }
    }

    /// @dev Optimized unsafe multiplication operation for minimal gas cost.
    /// This function assumes that `x` is not zero, and must be checked externally.
    /// Reverts if x is zero.
    function mulUnsafeFirst(
        uint256 x,
        uint256 y
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x * y in z for now.
            z := mul(x, y)

            // Equivalent to require((x * y) / x == y)
            if iszero(eq(div(z, x), y)) {
                revert(0, 0)
            }
        }
    }

    function mulUnsafe(
        uint256 x,
        uint256 y
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x * y in z for now.
            z := mul(x, y)
        }
    }

    // Div

    /// @dev Optimized safe division operation for minimal gas cost.
    /// Equivalent to /
    function div(
        uint256 x,
        uint256 y
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x / y in z for now.
            z := div(x, y)

            // Equivalent to require(y != 0)
            if iszero(y) {
                revert(0, 0)
            }
        }
    }

    /// @dev Optimized unsafe division operation for minimal gas cost.
    /// Division by 0 will not reverts and returns 0, and must be checked externally.
    function divUnsafeLast(
        uint256 x,
        uint256 y
    ) internal pure returns (uint256 z) {
        assembly {
            z := div(x, y)
        }
    }
}


// File contracts/libraries/MetadataHelper.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

library MetadataHelper {
    /**
     * @dev Returns symbol of the token.
     *
     * @param token The address of a ERC20 token.
     *
     * Return boolean indicating the status and the symbol as string;
     *
     * NOTE: Symbol is not the standard interface and some tokens may not support it.
     * Calling against these tokens will not success, with an empty result.
     */
    function getSymbol(address token) internal view returns (bool, string memory) {
        // bytes4(keccak256(bytes("symbol()")))
        (bool success, bytes memory returndata) = token.staticcall(abi.encodeWithSelector(0x95d89b41));
        if (success) {
            return (true, abi.decode(returndata, (string)));
        } else {
            return (false, "");
        }
    }
}


// File contracts/libraries/ReentrancyGuard.sol

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    /// @dev Public to allow external contracts to read the status.
    uint256 public reentrantStatus = 1;

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(reentrantStatus == 1);

        // Any calls to nonReentrant after this point will fail
        reentrantStatus = 2;

        _;

        reentrantStatus = 1;
    }
}


// File contracts/libraries/TransferHelper.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

/// @dev The ETH transfer has failed.
error ETHTransferFailed();

/// @dev The ERC20 `transferFrom` has failed.
error TransferFromFailed();

/// @dev The ERC20 `transfer` has failed.
error TransferFailed();

/// @dev The ERC20 `approve` has failed.
error ApproveFailed();

/// @dev Helper methods for interacting with ERC20 tokens and sending ETH that do not consistently return true / false.
library TransferHelper {
    function safeApprove(
        address token,
        address to,
        uint value
    ) internal {
        // bytes4(keccak256(bytes("approve(address,uint256)")));
        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));

        if (!success || (data.length != 0 && !abi.decode(data, (bool)))) {
            revert ApproveFailed();
        }
    }

    function safeTransfer(
        address token,
        address to,
        uint value
    ) internal {
        // bytes4(keccak256(bytes("transfer(address,uint256)")));
        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));

        if (!success || (data.length != 0 && !abi.decode(data, (bool)))) {
            revert TransferFailed();
        }
    }

    function safeTransferFrom(
        address token,
        address from,
        address to,
        uint value
    ) internal {
        // bytes4(keccak256(bytes("transferFrom(address,address,uint256)")));
        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));

        if (!success || (data.length != 0 && !abi.decode(data, (bool)))) {
            revert TransferFromFailed();
        }
    }

    function safeTransferETH(address to, uint value) internal {
        // solhint-disable-next-line avoid-low-level-calls
        (bool success, ) = to.call{value: value}("");

        if (!success) {
            revert ETHTransferFailed();
        }
    }
}


// File contracts/libraries/UnsafeMath.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

/// @dev Unchecked math functions.
contract UnsafeMath {
    function unsafe_div(uint x, uint y) internal pure returns (uint z) {
        assembly {
            z := div(x, y)
        }
    }

    function unsafe_mul(uint a, uint b) internal pure returns (uint) {
        unchecked {
            return a * b;
        }
    }

    function unsafe_sub(uint a, uint b) internal pure returns (uint) {
        unchecked {
            return a - b;
        }
    }

    function unsafe_add(uint a, uint b) internal pure returns (uint) {
        unchecked {
            return a + b;
        }
    }
}


// File contracts/pool/crypto/ICryptoView.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

interface ICryptoView {
    function getAmountOut(
        address pool,
        address tokenIn,
        uint amountIn,
        address sender,
        bytes memory feeData
    ) external view returns (uint);
}


// File contracts/pool/PoolFlashLoans.sol

// Original license: SPDX_License_Identifier: GPL-3.0-or-later

pragma solidity ^0.8.0;





/**
 * @dev Handles Flash Loans through the Pool.
 */
abstract contract PoolFlashLoans is IPoolFlashLoan, ReentrancyGuard {

    uint private constant FLASH_LOAN_FEE = 5e15; // 0.5%
    bytes32 private constant ERC3156_CALLBACK_SUCCESS = keccak256("ERC3156FlashBorrower.onFlashLoan");

    /**
     * @dev Returns the protocol fee amount to charge for a flash loan of `amount`.
     */
    function _calculateFlashLoanFeeAmount(uint amount) private pure returns (uint) {
        return amount * FLASH_LOAN_FEE / 1e18;
    }

    function _payFeeAmount(address token, uint amount) private {
        if (amount != 0) {
            address _feeRecipient = _getFeeRecipient();
            if (_feeRecipient != address(0)) {
                TransferHelper.safeTransfer(token, _feeRecipient, amount);
                IFeeRecipient(_feeRecipient).notifyFees(10, token, amount, FLASH_LOAN_FEE, abi.encode(2));
            }
        }
    }

    function _getFeeRecipient() internal virtual view returns (address) {}

    // EIP-3156 Implementations

    /**
     * @dev The amount of currency available to be lent.
     * @param token The loan currency.
     * @return The amount of `token` that can be borrowed.
     */
    function maxFlashLoan(address token) external view override returns (uint256) {
        return IERC20(token).balanceOf(address(this));
    }

    /**
     * @dev The fee to be charged for a given loan.
     * @param amount The amount of tokens lent.
     * @return The amount of `token` to be charged for the loan, on top of the returned principal.
     */
    function flashFee(address /*token*/, uint256 amount) external pure override returns (uint256) {
        return _calculateFlashLoanFeeAmount(amount);
    }

    /**
     * @dev Initiate a flash loan.
     * @param receiver The receiver of the tokens in the loan, and the receiver of the callback.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @param userData Arbitrary data structure, intended to contain user-defined parameters.
     */
    function flashLoan(
        IERC3156FlashBorrower receiver,
        address token,
        uint amount,
        bytes memory userData
    ) external override nonReentrant returns (bool) {
        uint preLoanBalance = IERC20(token).balanceOf(address(this));
        uint feeAmount = _calculateFlashLoanFeeAmount(amount);

        require(preLoanBalance >= amount, "INSUFFICIENT_FLASH_LOAN_BALANCE");
        TransferHelper.safeTransfer(token, address(receiver), amount);

        require(
            receiver.onFlashLoan(msg.sender, token, amount, feeAmount, userData) == ERC3156_CALLBACK_SUCCESS,
            "IERC3156_CALLBACK_FAILED"
        );

        // Checking for loan repayment first (without accounting for fees) makes for simpler debugging, and results
        // in more accurate revert reasons if the flash loan protocol fee percentage is zero.
        uint postLoanBalance = IERC20(token).balanceOf(address(this));
        require(postLoanBalance >= preLoanBalance, "INVALID_POST_LOAN_BALANCE");

        // No need for checked arithmetic since we know the loan was fully repaid.
        uint receivedFeeAmount = postLoanBalance - preLoanBalance;
        require(receivedFeeAmount >= feeAmount, "INSUFFICIENT_FLASH_LOAN_FEE_AMOUNT");

        _payFeeAmount(token, receivedFeeAmount);

        emit FlashLoan(address(receiver), token, amount, receivedFeeAmount);
        return true;
    }
}


// File contracts/pool/crypto-delegatecall/SyncSwapCryptoPoolDelegated.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;
error Overflow();
error InsufficientLiquidityMinted();
error Loss();

interface ICryptoPoolFactory {
    function master() external view returns (address);
    function cryptoMath() external view returns (address);
    function cryptoView() external view returns (address);
    function cryptoFunc() external view returns (address);
    function cryptoBurn() external view returns (address);
    function getDeployData() external view returns (bytes memory);
}

// This pool uses delegate call with sub implementation contracts CryptoBurn and CryptoFunc to reduce the code size.
contract SyncSwapCryptoPoolDelegated is UnsafeMath, ERC20Permit2, ReentrancyGuard {

    ////////////////////////////////////////////////////////
    /////////////// CONSTANTS AND IMMUTABLES ///////////////
    address private WETH = 0xe5D7C2a44FfDDf6b295A15c148167daaAf5Cf34f; // Linea WETH
    address public vault = 0x7160570BB153Edd0Ea1775EC2b2Ac9b65F1aB61B; // Linea Vault
    address public master = 0xeE8790cE315c0871ec612f0A6EbB5471A955b3A0; // Linea V2 Pool Master

    uint24 private constant MAX_FEE = 20000;

    /// @dev Pool type `3` for crypto pools.
    uint16 public constant poolType = 3;
    uint public constant poolVersion = 2;

    address private immutable cryptoFunc;
    address private immutable cryptoBurn;
    address public immutable factory;

    address public immutable token0;
    address public immutable token1;

    /// @dev Multipliers for each pooled token's precision to get to the pool precision decimals
    /// which is agnostic to the pool, but usually is 18.
    /// For example, TBTC has 18 decimals, so the multiplier should be 10 ** (18 - 18) = 1.
    /// WBTC has 8, so the multiplier should be 10 ** (18 - 8) => 10 ** 10.
    /// The value is only for crypto pools, and has no effects on non-crypto pools.
    uint public immutable token0PrecisionMultiplier;
    uint public immutable token1PrecisionMultiplier;
    /////////////// CONSTANTS AND IMMUTABLES ///////////////
    ////////////////////////////////////////////////////////

    ICryptoMath public MATH;

    /// @dev Pool reserve of each pool token as of immediately after the most recent balance event.
    /// The value is used to measure growth in invariant on mints and input tokens on swaps.
    uint128 private reserve0_;
    uint128 private reserve1_;

    /// @dev Invariant of the pool as of immediately after the most recent liquidity event.
    uint public invariantLast;

    /// @dev Price scale determines the price band around which liquidity is concentrated.
    uint public priceScale;

    /// @dev Price target given by moving average.
    /// The oracle is an exponential moving average, with a periodicity determined by MA time.
    /// The aggregated prices are cached state prices (dy/dx) calculated AFTER the latest trade.
    uint public cachedPriceOracle;
    
    /// @dev The quote by the AMM for an infinitesimally small swap after the last trade.
    /// It is not equivalent to the last traded price, and is computed by taking
    /// the partial differential of `x` w.r.t `y`.
    uint public lastPrices;
    uint public lastPricesTimestamp;

    /// @dev Cached (fast to read) virtual price. The cached `virtualPrice` is also used internally.
    uint public virtualPrice;

    /// @dev Current pool profits.
    uint public xcpProfit;
    /// @dev Full profit at last claim of protocol fees.
    uint public xcpProfitLast = 1e18;

    //uint public initialParams;
    //uint public futureParams;

    ICryptoPool.PoolParams public poolParams;

    ICryptoPool.RebalancingParams public rebalancingParams = ICryptoPool.RebalancingParams({
        allowedExtraProfit: 2000000000000,
        adjustmentStep: 146000000000000,
        maTime: 600,
        requiredProfit: 5000,
        checkLastProfit: 0
    });

    struct TokenAmount {
        address token;
        uint amount;
    }

    event Sync(
        uint reserve0,
        uint reserve1
    );

    event UpdatePoolProfit(
        uint xcpProfit,
        uint virtualPrice
    );

    event UpdateInvariant(
        uint newInvariant
    );

    event UpdatePriceScale(
        uint newPriceScale
    );

    event Swapped(
        address indexed sender,
        address indexed user,
        address indexed tokenOut,
        uint amountIn,
        uint amountOut,
        uint24 swapFee,
        address to
    );

    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );

    event Fee(
        uint amount0,
        uint amount1
    );

    receive() external payable {}

    fallback() external payable {
        address target = cryptoFunc;
        // burn(bytes,address,address,bytes): 0xf66eab5b
        // burnSingle(bytes,address,address,bytes): 0x27b0bcea
        // calculateSingleWithdrawAmount(address,uint256,uint256,uint256,bool,bool): 0x3e5e465e
        // function getVirtualPrice() external view returns (uint) 0xe25aa5fa
        // function getPriceOracle() external view returns (uint) 0xfca513a8
        if (msg.sig == 0xf66eab5b || msg.sig == 0x27b0bcea || msg.sig == 0x3e5e465e || msg.sig == 0xe25aa5fa || msg.sig == 0xfca513a8) {
            target = cryptoBurn;
        }

        assembly {
            // Copy msg.data. We take full control of memory in this inline assembly
            // block because it will not return to Solidity code. We overwrite the
            // Solidity scratch pad at memory position 0.
            calldatacopy(0, 0, calldatasize())

            // Call the implementation.
            // out and outsize are 0 because we don't know the size yet.
            let result := delegatecall(gas(), target, 0, calldatasize(), 0, 0)

            // Copy the returned data.
            returndatacopy(0, 0, returndatasize())

            switch result
            // delegatecall returns 0 on error.
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }

    /// @dev Factory must ensures that the parameters are valid.
    constructor() {
        (bytes memory _deployData) = ICryptoPoolFactory(msg.sender).getDeployData();
        (address _token0, address _token1, uint _token0PrecisionMultiplier, uint _token1PrecisionMultiplier, uint _initialPrice) = abi.decode(
            _deployData, (address, address, uint, uint, uint)
        );

        //address _master = ICryptoPoolFactory(msg.sender).master();
        MATH = ICryptoMath(ICryptoPoolFactory(msg.sender).cryptoMath());

        factory = msg.sender;
        cryptoFunc = ICryptoPoolFactory(msg.sender).cryptoFunc();
        cryptoBurn = ICryptoPoolFactory(msg.sender).cryptoBurn();

        (token0, token1, token0PrecisionMultiplier, token1PrecisionMultiplier) = (
            _token0, _token1, _token0PrecisionMultiplier, _token1PrecisionMultiplier
        );

        // default pool params
        uint32 _a = 400000;
        uint64 _gamma = 145000000000000;
        poolParams = ICryptoPool.PoolParams({
            initialA: _a,
            futureA: _a,
            initialGamma: _gamma,
            futureGamma: _gamma,
            initialTime: 0,
            futureTime: 0
        });

        _setInitialPrice(_initialPrice);

        // try to set symbols for the LP token
        (bool _success0, string memory _symbol0) = MetadataHelper.getSymbol(_token0);
        (bool _success1, string memory _symbol1) = MetadataHelper.getSymbol(_token1);
        if (_success0 && _success1) {
            _initialize(
                string(abi.encodePacked("SyncSwap Aqua LP")),
                string(abi.encodePacked(_symbol0, "/", _symbol1, "-A"))
            );
        } else {
            _initialize("SLP", "SLP");
        }
    }

    function _setInitialPrice(uint _initialPrice) private {
        priceScale = _initialPrice;
        emit UpdatePriceScale(_initialPrice);
        cachedPriceOracle = _initialPrice;
        lastPrices = _initialPrice;
        lastPricesTimestamp = block.timestamp;
    }

    /// @dev Returns the verified sender address otherwise `address(0)`.
    function _getVerifiedSender(address _sender) private view returns (address) {
        if (_sender != msg.sender) {
            // The sender from non-forwarder is invalid.
            try IPoolMaster(master).isForwarder(msg.sender) returns (bool _isTrustedForwarder) {
                return _isTrustedForwarder ? _sender : msg.sender;
            } catch {
                return msg.sender;
            }
        }
        return msg.sender;
    }

    function _balances() private view returns (uint balance0, uint balance1) {
        balance0 = IERC20(token0).balanceOf(address(this));
        balance1 = IERC20(token1).balanceOf(address(this));
    }

    function _updateReserves(uint _balance0, uint _balance1) private {
        if (_balance0 > type(uint128).max) {
            revert Overflow();
        }
        if (_balance1 > type(uint128).max) {
            revert Overflow();
        }
        (reserve0_, reserve1_) = (uint128(_balance0), uint128(_balance1));
        emit Sync(_balance0, _balance1);
    }

    /// @dev Swaps one token for another - should be called via the router after transferring input tokens.
    /// The router should ensure that sufficient output tokens are received.
    function swap(
        bytes memory _data,
        address _sender,
        address _callback,
        bytes memory _callbackData
    ) public nonReentrant returns (TokenAmount memory _tokenAmount) {
        ICallback.BaseSwapCallbackParams memory params;

        (params.tokenIn, params.to, params.withdrawMode) = abi.decode(_data, (address, address, uint8));
        (params.reserve0, params.reserve1) = getReserves();
        (params.balance0, params.balance1) = _balances();

        // Gets swap fee for the sender.
        _sender = _getVerifiedSender(_sender);

        // ----------- Update invariant if A, gamma are undergoing ramps ---------

        // In case ramp is happening
        (uint a, uint gamma, uint futureTime) = _params();

        // ----------------------- Calculate dy and fees --------------------------

        uint xp0;
        uint xp1;
        uint _k0_prev;
        uint _feeAmountOut;
        ICryptoMath _MATH = MATH;

        if (params.tokenIn == token0) {
            (params.amountOut, params.swapFee, _feeAmountOut, xp0, xp1, _k0_prev) = _getAmountOut(
                GetAmountOutInputParams({
                    sender: _sender,
                    a: a,
                    gamma: gamma,
                    balance0: params.balance0,
                    balance1: params.balance1,
                    reserve0: params.reserve0,
                    reserve1: params.reserve1,
                    token0In: true,
                    futureTime: futureTime
                }), _MATH
            );

            params.tokenOut = token1;
            params.balance1 -= params.amountOut;
            params.amountIn = params.balance0 - params.reserve0;

            emit Swap(msg.sender, params.amountIn, 0, 0, params.amountOut, params.to);
            emit Fee(0, _feeAmountOut);
        } else {
            require(params.tokenIn == token1);
            (params.amountOut, params.swapFee, _feeAmountOut, xp0, xp1, _k0_prev) = _getAmountOut(
                GetAmountOutInputParams({
                    sender: _sender,
                    a: a,
                    gamma: gamma,
                    balance0: params.balance0,
                    balance1: params.balance1,
                    reserve0: params.reserve0,
                    reserve1: params.reserve1,
                    token0In: false,
                    futureTime: futureTime
                }), _MATH
            );

            params.tokenOut = token0;
            params.balance0 -= params.amountOut;
            params.amountIn = params.balance1 - params.reserve1;

            emit Swap(msg.sender, 0, params.amountIn, params.amountOut, 0, params.to);
            emit Fee(_feeAmountOut, 0);
        }

        require(params.amountIn != 0 && params.amountOut != 0);

        // ------------------------ Tweak `priceScale` ----------------------------

        _tweakPrice(a, gamma, xp0, xp1, 0, futureTime, _k0_prev, _MATH);

        // Updates reserves with up-to-date balances (updated above).
        _updateReserves(params.balance0, params.balance1);
        
        // Transfers output tokens.
        _transferTokens(params.tokenOut, params.to, params.amountOut, params.withdrawMode);

        // Calls callback with data.
        if (_callback != address(0)) {
            // Fills additional values for callback params.
            params.sender = _sender;
            params.callbackData = _callbackData;

            // Calculates fee amount for callback.
            params.feeIn = Math.mulDivUnsafeFirstLast(params.amountIn, params.swapFee, 1e5);

            ICallback(_callback).syncSwapBaseSwapCallback(params);
        }

        _tokenAmount.token = params.tokenOut;
        _tokenAmount.amount = params.amountOut;

        emit Swapped(
            msg.sender,
            _sender,
            params.tokenOut,
            params.amountIn,
            params.amountOut,
            params.swapFee,
            params.to
        );
    }

    struct GetAmountOutArgs {
        uint xp0;
        uint xp1;
        uint invariant;
        uint xp1PriceScale;
        uint y;
    }

    struct GetAmountOutInputParams {
        address sender;
        uint a;
        uint gamma;
        uint balance0;
        uint balance1;
        uint reserve0;
        uint reserve1;
        bool token0In;
        uint futureTime;
    }

    function _getAmountOut(
        GetAmountOutInputParams memory p,
        ICryptoMath _MATH
    ) private view returns (
        uint _amountOut, uint24 _swapFee, uint _feeAmountOut, uint _newXp0, uint _newXp1, uint _k0_prev
    ) {
        GetAmountOutArgs memory it;
        it.xp0 = p.balance0 * token0PrecisionMultiplier;
        it.xp1PriceScale = priceScale * token1PrecisionMultiplier;
        it.xp1 = Math.mulDivUnsafeLast(p.balance1, it.xp1PriceScale, 1e18);

        if (p.futureTime > block.timestamp) {
            if (p.token0In) {
                // Resue `it.y` as `xp0` here
                it.y = unsafe_mul(
                    p.reserve0, token0PrecisionMultiplier
                ); // <---- already safe_mul above for `xp0`

                it.invariant = _MATH.computeD(p.a, p.gamma, it.y, it.xp1, 0);
            } else {
                // Resue `it.y` as `xp1` here
                it.y = unsafe_div(
                    unsafe_mul(p.reserve1, it.xp1PriceScale),
                    1e18
                ); // <---- already safe_mul above for `xp1`

                it.invariant = _MATH.computeD(p.a, p.gamma, it.xp0, it.y, 0);
            }
        } else {
            it.invariant = invariantLast;
        }

        if (p.token0In) {
            (it.y, _k0_prev) = _MATH.getY(p.a, p.gamma, it.xp0, it.xp1, it.invariant, 1);
            _amountOut = it.xp1 - it.y;
            it.xp1 -= _amountOut;

            _amountOut -= 1;
            _amountOut = Math.mulDivUnsafeFirst(1e18, _amountOut, it.xp1PriceScale);

            _swapFee = _getFee(p.sender, token0, token1, it.xp0, it.xp1);
            _feeAmountOut = Math.mulDivUnsafeLast(_swapFee, _amountOut, 1e5);
            _amountOut -= _feeAmountOut;

            _newXp0 = it.xp0;
            _newXp1 = unsafe_div(unsafe_mul(p.reserve1 - _amountOut, it.xp1PriceScale), 1e18); // <---- already safe_mul above for `xp1`
        } else {
            (it.y, _k0_prev) = _MATH.getY(p.a, p.gamma, it.xp0, it.xp1, it.invariant, 0);
            _amountOut = it.xp0 - it.y;
            it.xp0 -= _amountOut;

            _amountOut -= 1;
            _amountOut = Math.divUnsafeLast(_amountOut, token0PrecisionMultiplier);

            _swapFee = _getFee(p.sender, token1, token0, it.xp0, it.xp1);
            _feeAmountOut = Math.mulDivUnsafeLast(_swapFee, _amountOut, 1e5);
            _amountOut -= _feeAmountOut;

            _newXp0 = unsafe_mul(p.reserve0 - _amountOut, token0PrecisionMultiplier);
            _newXp1 = it.xp1;
        }
    }

    function _transferTokens(address token, address to, uint amount, uint8 withdrawMode) private {
        if (withdrawMode == 0) {
            TransferHelper.safeTransfer(token, vault, amount);
            IVault(vault).deposit(token, to);
        } else {
            if (withdrawMode == 1 && token == WETH) {
                IWETH(WETH).withdraw(amount);
                TransferHelper.safeTransferETH(to, amount);
            } else {
                TransferHelper.safeTransfer(token, to, amount);
            }
        }
    }

    function getReserves() public view returns (uint _reserve0, uint _reserve1) {
        (_reserve0, _reserve1) = (reserve0_, reserve1_);
    }

    function _getFeeData(
        address _sender,
        address _tokenIn,
        address _tokenOut,
        bytes memory data
    ) private view returns (IFeeManagerV2.FeeData memory) {
        address _feeManager;
        try IPoolMaster(master).feeManager() returns (address __feeManager) {
            _feeManager = __feeManager;
        } catch {
            // leave `_feeManager` as `address(0)` and return default fee data below
        }

        if (_feeManager != address(0)) {
            try IFeeManagerV2(_feeManager).getSwapFeeData(
                address(this), _sender, _tokenIn, _tokenOut, data
            ) returns (IFeeManagerV2.FeeData memory feeData) {
                return feeData;
            } catch {
                // return default fee data, see below
            }
        }

        // return the default fee data here, if fee manager not exists or catch an error
        return IFeeManagerV2.FeeData({
            gamma: 230000000000000,
            minFee: 260, // 0.26%
            maxFee: 450  // 0.45%
        });
        //return IFeeManagerV2(_feeManager).getSwapFeeData(address(this), _sender, _tokenIn, _tokenOut, data);
    }

    function _getFee(
        address _sender,
        address _tokenIn,
        address _tokenOut,
        uint xp0,
        uint xp1
    ) internal view returns (uint24 _fee) {
        _fee = _getFeeWithData(_sender, _tokenIn, _tokenOut, xp0, xp1, abi.encode(msg.sender));
    }

    function _getFeeWithData(
        address _sender,
        address _tokenIn,
        address _tokenOut,
        uint xp0,
        uint xp1,
        bytes memory data
    ) internal view returns (uint24 _fee) {
        IFeeManagerV2.FeeData memory feeData = _getFeeData(_sender, _tokenIn, _tokenOut, data);
        uint f = xp0 + xp1;
        f = unsafe_mul(feeData.gamma, 1e18) / (
            unsafe_add(feeData.gamma, 1e18) - unsafe_div(4e18 * xp0 / f * xp1, f)
        );
        _fee = uint24(unsafe_div(
            feeData.minFee * f + feeData.maxFee * (1e18 - f),
            1e18
        ));
        if (_fee > MAX_FEE) {
            _fee = MAX_FEE;
        }
    }

    function _getFeeRecipient() internal view returns (address) {
        try IPoolMaster(master).getFeeRecipient() returns (address _feeRecipient) {
            return _feeRecipient;
        } catch {
            return address(0);
        }
    }

    function _xp(uint _reserve0, uint _reserve1) private view returns (uint xp0, uint xp1) {
        xp0 = _reserve0 * token0PrecisionMultiplier;
        xp1 = Math.mulDivUnsafeFirstLast(token1PrecisionMultiplier, priceScale * _reserve1, 1e18);
    }

    function _params() private view returns (uint a, uint gamma, uint futureTime) {
        ICryptoPool.PoolParams memory params = poolParams;

        gamma = params.futureGamma;
        a = params.futureA;
        futureTime = params.futureTime;

        if (futureTime > block.timestamp) {
            uint duration = futureTime - params.initialTime;
            uint elapsed = block.timestamp - params.initialTime;
            uint remaining = duration - elapsed;

            a = (params.initialA * remaining + a * elapsed) / duration;
            gamma = (params.initialGamma * remaining + gamma * elapsed) / duration;
        }
    }

    function _getXCP(uint _invariant, uint _priceScale) private pure returns (uint) {
        return Math.geometricMean(
            unsafe_div(_invariant, 2),
            Math.mulDivUnsafeFirst(1e18, _invariant, Math.mulUnsafeFirst(2, _priceScale))
        );
    }

    struct TweakPriceArgs {
        uint priceScale;
        uint priceOracle;
        uint lastPrices;
        uint lastPricesTimestamp;
        uint totalSupply;
        uint xcpProfit;
        uint virtualPrice;
        uint oldVirtualPrice;
        uint newInvariant;
        uint norm;
    }

    /// @notice Tweaks `priceOracle`, `lastPrices` and conditionally adjusts `priceScale`.
    /// This is called whenever there is an unbalanced liquidity operation: swap, mint, or burnSingle.
    /// @dev Contains main liquidity rebalancing logic, by tweaking `priceScale`.
    function _tweakPrice(
        uint a,
        uint gamma,
        uint xp0,
        uint xp1,
        uint invariantUnadjusted,
        uint _futureTime,
        uint _k0_prev,
        ICryptoMath _MATH
    ) private returns (uint, uint) { // returns (newInvariant, newPriceScale)
        TweakPriceArgs memory it;

        // ---------------------------- Read storage ------------------------------

        ICryptoPool.RebalancingParams memory _rebalancingParams = rebalancingParams;

        it.priceOracle = cachedPriceOracle;
        it.priceScale = priceScale;
        it.lastPricesTimestamp = lastPricesTimestamp;

        it.totalSupply = totalSupply;
        it.oldVirtualPrice = virtualPrice;

        // ----------------------- Update MA if needed ----------------------------

        if (it.lastPricesTimestamp < block.timestamp) {
            // The moving average price oracle is calculated using the `lastPrices`
            // of the trade at the previous block, and the price oracle logged
            // before that trade. This can happen only once per block.

            // ------------------ Calculate moving average params -----------------

            // ---------------------------------------------- Update price oracles.

            // ----------------- We cap state price that goes into the EMA with
            //                                                  2 x priceScale.

            it.priceOracle = _MATH.getPriceOracle(
                it.lastPricesTimestamp,
                _rebalancingParams.maTime,
                lastPrices,
                it.priceScale,
                it.priceOracle
            );

            cachedPriceOracle = it.priceOracle;
            lastPricesTimestamp = block.timestamp;
        }

        // `priceOracle` is used further on to calculate its vector
        // distance from `priceScale`. This distance is used to calculate
        // the amount of adjustment to be done to the `priceScale`.

        //  ---------------- If `invariantUnadjusted` is 0, calculate it -----------------

        if (invariantUnadjusted == 0) {
            invariantUnadjusted = _MATH.computeD(a, gamma, xp0, xp1, _k0_prev);
        }

        // ----------------- Calculate and update `lastPrices` --------------------

        lastPrices = _MATH.getLastPrices(
            a, gamma, xp0, xp1, invariantUnadjusted, it.priceScale
        );

        // ------------------------- Update `xcpProfit` ---------------------------

        uint _xp0;
        uint _xp1;
        if (it.oldVirtualPrice != 0) {
            _xp0 = Math.divUnsafeLast(invariantUnadjusted, 2);
            _xp1 = Math.mulDivUnsafeFirst(1e18, invariantUnadjusted, Math.mulUnsafeFirst(2, it.priceScale));

            it.virtualPrice = Math.mulDivUnsafeFirst(1e18, Math.geometricMean(_xp0, _xp1), it.totalSupply);
            it.xcpProfit = Math.divUnsafeLast(xcpProfit * it.virtualPrice, it.oldVirtualPrice);

            // If A and gamma are NOT undergoing ramps (t < block.timestamp),
            // ensure new `virtualPrice` is not less than `oldVirtualPrice`,
            // else the pool suffers a loss.
            if (_futureTime < block.timestamp) {
                if (it.virtualPrice <= it.oldVirtualPrice) {
                    revert Loss();
                }
            }
        } else {
            it.xcpProfit = 1e18;
            it.virtualPrice = 1e18;
        }

        xcpProfit = it.xcpProfit;

        // ------------ Rebalance liquidity if there's enough profits to adjust it:
        //if (Math.mulUnsafeFirst(2, it.virtualPrice) - 1e18 > it.xcpProfit + unsafe_mul(_rebalancingParams.allowedExtraProfit, 2)) {
        if (it.virtualPrice > 1e18 && it.xcpProfit > 1e18 && Math.mulUnsafeFirst(1e4, it.virtualPrice - 1e18) > Math.mulUnsafeFirst(_rebalancingParams.requiredProfit, it.xcpProfit + _rebalancingParams.allowedExtraProfit - 1e18)) {

            // ------------------- Get adjustment step ----------------------------

            // Calculate the vector distance between `priceScale` and `priceOracle`.
            it.norm = Math.mulDivUnsafeFirst(1e18, it.priceOracle, it.priceScale);
            if (it.norm > 1e18) {
                it.norm = unsafe_sub(it.norm, 1e18);
            } else {
                it.norm = unsafe_sub(1e18, it.norm);
            }

            // Reuse `_futureTime` as `_adjustmentStep` here to avoid stake too deep errors.
            _futureTime = Math.max(_rebalancingParams.adjustmentStep, Math.divUnsafeLast(it.norm, 5));

            // We only adjust prices if the vector distance between `priceOracle`
            // and `priceScale` is large enough.
            // This check ensures that no rebalancing occurs if the distance is low
            // i.e. the pool prices are pegged to the oracle prices.
            if (it.norm > _futureTime) {

                // ------------------------------------- Calculate new price scale.

                // Reuse `_futureTime` as `newPriceScale` to avoid stake too deep errors.
                _futureTime = Math.divUnsafeLast(
                    it.priceScale * unsafe_sub(it.norm, _futureTime) + (_futureTime * it.priceOracle),
                    it.norm
                ); // <- norm is non-zero and gt adjustment_step; unsafe = safe

                // --------------- Update stale xp (using price_scale) with p_new.

                _xp0 = xp0;
                _xp1 = Math.mulDivUnsafeLast(xp1, _futureTime, it.priceScale);
                // unsafe_div because we did safediv before -----^

                // ------------------------------------------ Update D with new xp.

                // Calculate "extended constant product" invariant xCP and virtual price.
                it.newInvariant = _MATH.computeD(a, gamma, _xp0, _xp1, 0);

                // ------------------------------------- Convert xp to real prices.
                _xp0 = Math.divUnsafeLast(it.newInvariant, 2);
                _xp1 = Math.mulDivUnsafeFirst(
                    1e18, it.newInvariant, Math.mulUnsafeFirst(2, _futureTime)
                );

                // ---------- Calculate new virtual price using new xp and D.
                //            Reuse `oldVirtualPrice` (but it has new virtual price).
                it.oldVirtualPrice = Math.mulDivUnsafeFirst(
                    1e18, Math.geometricMean(_xp0, _xp1), it.totalSupply
                );

                // ---------------------------- Proceed if we've got enough profit.
                if (it.oldVirtualPrice > 1e18) {
                    //if (Math.mulUnsafeFirst(2, it.oldVirtualPrice) - 1e18 > it.xcpProfit) { // Note - rebalancing fees
                    if (Math.mulUnsafeFirst(1e4, it.oldVirtualPrice - 1e18) > Math.mulUnsafeFirst(_rebalancingParams.requiredProfit, it.xcpProfit - 1e18)) {
                        priceScale = _futureTime; // `newPriceScale`
                        emit UpdatePriceScale(_futureTime);

                        invariantLast = it.newInvariant;
                        emit UpdateInvariant(it.newInvariant);

                        virtualPrice = it.oldVirtualPrice;
                        emit UpdatePoolProfit(it.xcpProfit, it.oldVirtualPrice);

                        return (it.newInvariant, _futureTime);
                    }
                }
            }
        }

        // --------- `priceScale` was not adjusted. Update the profit counter and D.

        // If we are here, the `priceScale` adjustment did not happen,
        // Still need to update the profit counter and D.
        invariantLast = invariantUnadjusted;
        emit UpdateInvariant(invariantUnadjusted);

        virtualPrice = it.virtualPrice;
        emit UpdatePoolProfit(it.xcpProfit, it.virtualPrice);

        return (invariantUnadjusted, it.priceScale);
    }
}


// File contracts/pool/crypto-delegatecall/SyncSwapCryptoPoolDelegatedFactory.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;
error InvalidTokens();

contract SyncSwapCryptoPoolDelegatedFactory is Ownable2Step {

    /// @dev The pool master that control fees and registry.
    address public immutable master;

    address public cryptoMath;

    address public cryptoView;

    address public immutable cryptoFunc;

    address public immutable cryptoBurn;

    address public poolCreator;

    /// @dev Pools by its two pool tokens.
    mapping(address => mapping(address => address)) public getPool;

    bytes internal cachedDeployData;

    event PoolCreated(
        address indexed token0,
        address indexed token1,
        address pool
    );

    constructor(address _master, address _cryptoMath, address _cryptoView, address _cryptoFunc, address _cryptoBurn) {
        master = _master;
        cryptoMath = _cryptoMath;
        cryptoView = _cryptoView;
        cryptoFunc = _cryptoFunc;
        cryptoBurn = _cryptoBurn;
        poolCreator = msg.sender;
    }

    function getDeployData() external view returns (bytes memory deployData) {
        deployData = cachedDeployData;
    }

    function getSwapFee(
        address pool,
        address sender,
        address tokenIn,
        address tokenOut,
        bytes calldata data
    ) external view returns (uint24 swapFee) {
        swapFee = IPoolMaster(master).getSwapFee(pool, sender, tokenIn, tokenOut, data);
    }

    function setCryptoMath(address _cryptoMath) external onlyOwner {
        require(_cryptoMath != address(0));
        cryptoMath = _cryptoMath;
    }

    function setCryptoView(address _cryptoView) external onlyOwner {
        cryptoView = _cryptoView;
    }

    function setPoolCreator(address _poolCreator) external onlyOwner {
        poolCreator = _poolCreator;
    }

    function createPool(bytes calldata data) external returns (address pool) {
        require(poolCreator == msg.sender, "NP");
        (address tokenA, address tokenB, uint initialPrice) = abi.decode(data, (address, address, uint));

        // Perform safety checks.
        if (tokenA == tokenB) {
            revert InvalidTokens();
        }

        // Sort tokens.
        if (tokenB < tokenA) {
            (tokenA, tokenB) = (tokenB, tokenA);
        }
        if (tokenA == address(0)) {
            revert InvalidTokens();
        }

        // Underlying implementation to deploy the pools and register them.
        pool = _createPool(tokenA, tokenB, initialPrice);

        // Populate mapping in both directions.
        // Not necessary as existence of the master, but keep them for better compatibility.
        getPool[tokenA][tokenB] = pool;
        getPool[tokenB][tokenA] = pool;

        emit PoolCreated(tokenA, tokenB, pool);
    }

    function _createPool(address token0, address token1, uint initialPrice) internal returns (address pool) {
        // Tokens with decimals more than 18 are not supported and will lead to reverts.
        uint token0PrecisionMultiplier = 10 ** (18 - IERC20(token0).decimals());
        uint token1PrecisionMultiplier = 10 ** (18 - IERC20(token1).decimals());

        bytes memory deployData = abi.encode(token0, token1, token0PrecisionMultiplier, token1PrecisionMultiplier, initialPrice);
        cachedDeployData = deployData;

        // Remove precision multipliers and initial price from salt and config.
        deployData = abi.encode(token0, token1);

        bytes32 salt = keccak256(deployData);
        pool = address(new SyncSwapCryptoPoolDelegated{salt: salt}()); // this will prevent duplicated pools.

        // Register the pool. The config is same with deployment data.
        IPoolMaster(master).registerPool(pool, 3, deployData, token0, token1);
    }
}
