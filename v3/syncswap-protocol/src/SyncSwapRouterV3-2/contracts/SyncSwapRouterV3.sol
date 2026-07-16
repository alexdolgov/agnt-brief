// SPDX-License-Identifier: AGPL-3.0-or-later
//      ___                         ___           ___           ___           ___           ___                   
//     /  /\          __           /  /\         /  /\         /  /\         /  /\         /  /\          ___     
//    /  /::\        |  |\        /  /::|       /  /::\       /  /::\       /  /:/_       /  /::\        /  /\    
//   /__/:/\:\       |  |:|      /  /:|:|      /  /:/\:\     /__/:/\:\     /  /:/ /\     /  /:/\:\      /  /::\   
//  _\_ \:\ \:\      |  |:|     /  /:/|:|__   /  /:/  \:\   _\_ \:\ \:\   /  /:/ /:/_   /  /::\ \:\    /  /:/\:\  
// /__/\ \:\ \:\     |__|:|__  /__/:/ |:| /\ /__/:/ \  \:\ /__/\ \:\ \:\ /__/:/ /:/ /\ /__/:/\:\_\:\  /  /::\ \:\ 
// \  \:\ \:\_\/     /  /::::\ \__\/  |:|/:/ \  \:\  \__\/ \  \:\ \:\_\/ \  \:\/:/ /:/ \__\/  \:\/:/ /__/:/\:\_\:\
//  \  \:\_\:\      /  /:/~~~~     |  |:/:/   \  \:\        \  \:\_\:\    \  \::/ /:/       \__\::/  \__\/  \:\/:/
//   \  \:\/:/     /__/:/          |__|::/     \  \:\        \  \:\/:/     \  \:\/:/        /  /:/        \  \::/ 
//    \  \::/      \__\/           /__/:/       \  \:\        \  \::/       \  \::/        /__/:/          \__\/  
//     \__\/                       \__\/         \__\/         \__\/         \__\/         \__\/                  
//
// Welcome to the SyncSwap V3 Router!
//

pragma solidity ^0.8.0;

interface IRouter {
    struct SwapStep {
        address pool;
        bytes data;
        address callback;
        bytes callbackData;
        bool useVault;

        address tokenOut;
        bool zeroForOne;
        address recipient;
        uint160 sqrtPriceLimitX96;
    }

    struct SwapPath {
        SwapStep[] steps;
        address tokenIn;
        uint amountIn;
    }

    struct SplitPermitParams {
        address token;
        uint approveAmount;
        uint deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    struct ArrayPermitParams {
        uint approveAmount;
        uint deadline;
        bytes signature;
    }
}

interface IWETH {
    function deposit() external payable;
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
    function withdraw(uint) external;
}

interface IStaking {
    function stake(uint amount, address to) external;
    function stake(address token, uint amount, address to) external;
}

interface IPoolFactory {
    function master() external view returns (address);

    function getDeployData() external view returns (bytes memory);

    function createPool(bytes calldata data) external returns (address pool);
}

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

abstract contract Rescuable is Ownable {
    /// @dev Rescues ERC20 tokens.
    function rescueERC20(address token, address to, uint256 amount) external onlyOwner {
        require(to != address(0) && to != token, "Invalid to");

        uint balance = IERC20(token).balanceOf(address(this));

        if (amount == 0) {
            TransferHelper.safeTransfer(token, to, balance);
        } else {
            require(amount <= balance, "Exceeds balance");
            TransferHelper.safeTransfer(token, to, amount);
        }
    }

    /// @dev Rescues Ether.
    function rescueETH(address payable to, uint256 amount) external onlyOwner {
        if (amount == 0) {
            amount = address(this).balance;
        }
        TransferHelper.safeTransferETH(to, amount);
    }
}

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

interface IERC20 is IERC20Base {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
}

interface IERC20Permit is IERC20 {
    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
    function nonces(address owner) external view returns (uint);
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

interface IERC20Permit2 is IERC20Permit {
    function permit2(address owner, address spender, uint amount, uint deadline, bytes calldata signature) external;
}

/// @title Interface for permit
/// @notice Interface used by DAI/CHAI for permit
interface IERC20PermitAllowed {
    /// @notice Approve the spender to spend some tokens via the holder signature
    /// @dev This is the permit interface used by DAI and CHAI
    /// @param holder The address of the token holder, the token owner
    /// @param spender The address of the token spender
    /// @param nonce The holder's nonce, increases at each call to permit
    /// @param expiry The timestamp at which the permit is no longer valid
    /// @param allowed Boolean that sets approval amount, true for type(uint256).max and false for 0
    /// @param v Must produce valid secp256k1 signature from the holder along with `r` and `s`
    /// @param r Must produce valid secp256k1 signature from the holder along with `v` and `s`
    /// @param s Must produce valid secp256k1 signature from the holder along with `r` and `v`
    function permit(
        address holder,
        address spender,
        uint256 nonce,
        uint256 expiry,
        bool allowed,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;
}

abstract contract SelfPermit {
    function selfPermit(
        address token,
        uint value,
        uint deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public payable {
        IERC20Permit(token).permit(msg.sender, address(this), value, deadline, v, r, s);
    }

    function selfPermitIfNecessary(
        address token,
        uint value,
        uint deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external payable {
        if (IERC20(token).allowance(msg.sender, address(this)) < value) {
            selfPermit(token, value, deadline, v, r, s);
        }
    }

    function selfPermitAllowed(
        address token,
        uint256 nonce,
        uint256 expiry,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public payable {
        IERC20PermitAllowed(token).permit(msg.sender, address(this), nonce, expiry, true, v, r, s);
    }

    function selfPermitAllowedIfNecessary(
        address token,
        uint256 nonce,
        uint256 expiry,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external payable {
        if (IERC20(token).allowance(msg.sender, address(this)) < type(uint256).max) {
            selfPermitAllowed(token, nonce, expiry, v, r, s);
        }
    }

    function selfPermit2(
        address token,
        uint value,
        uint deadline,
        bytes calldata signature
    ) public payable {
        IERC20Permit2(token).permit2(msg.sender, address(this), value, deadline, signature);
    }

    function selfPermit2IfNecessary(
        address token,
        uint value,
        uint deadline,
        bytes calldata signature
    ) external payable {
        if (IERC20(token).allowance(msg.sender, address(this)) < value) {
            selfPermit2(token, value, deadline, signature);
        }
    }
}

/// @title Permissionless pool actions
/// @notice Contains pool methods that can be called by anyone
interface ICLPoolActions {
    /// @notice Initialize function used in proxy deployment
    /// @dev Can be called once only
    /// Price is represented as a sqrt(amountToken1/amountToken0) Q64.96 value
    /// @dev not locked because it initializes unlocked
    /// @param _factory The CL factory contract address
    /// @param _token0 The first token of the pool by address sort order
    /// @param _token1 The second token of the pool by address sort order
    /// @param _tickSpacing The pool tick spacing
    /// @param _sqrtPriceX96 The initial sqrt price of the pool, as a Q64.96
    function initialize(
        address _factory,
        address _token0,
        address _token1,
        int24 _tickSpacing,
        uint160 _sqrtPriceX96
    ) external;

    /// @notice Initialize gauge and nft manager
    /// @dev Callable only once, by the gauge factory
    /// @param _gauge The gauge corresponding to this pool
    /// @param _nft The position manager used for position management
    function setGaugeAndPositionManager(address _gauge, address _nft) external;

    /// @notice Adds liquidity for the given recipient/tickLower/tickUpper position
    /// @dev The caller of this method receives a callback in the form of ICLMintCallback#uniswapV3MintCallback
    /// in which they must pay any token0 or token1 owed for the liquidity. The amount of token0/token1 due depends
    /// on tickLower, tickUpper, the amount of liquidity, and the current price.
    /// @param recipient The address for which the liquidity will be created
    /// @param tickLower The lower tick of the position in which to add liquidity
    /// @param tickUpper The upper tick of the position in which to add liquidity
    /// @param amount The amount of liquidity to mint
    /// @param data Any data that should be passed through to the callback
    /// @return amount0 The amount of token0 that was paid to mint the given amount of liquidity. Matches the value in the callback
    /// @return amount1 The amount of token1 that was paid to mint the given amount of liquidity. Matches the value in the callback
    function mint(address recipient, int24 tickLower, int24 tickUpper, uint128 amount, bytes calldata data)
        external
        returns (uint256 amount0, uint256 amount1);

    /// @notice Collects tokens owed to a position
    /// @dev Does not recompute fees earned, which must be done either via mint or burn of any amount of liquidity.
    /// Collect must be called by the position owner. To withdraw only token0 or only token1, amount0Requested or
    /// amount1Requested may be set to zero. To withdraw all tokens owed, caller may pass any value greater than the
    /// actual tokens owed, e.g. type(uint128).max. Tokens owed may be from accumulated swap fees or burned liquidity.
    /// @param recipient The address which should receive the fees collected
    /// @param tickLower The lower tick of the position for which to collect fees
    /// @param tickUpper The upper tick of the position for which to collect fees
    /// @param amount0Requested How much token0 should be withdrawn from the fees owed
    /// @param amount1Requested How much token1 should be withdrawn from the fees owed
    /// @return amount0 The amount of fees collected in token0
    /// @return amount1 The amount of fees collected in token1
    function collect(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount0Requested,
        uint128 amount1Requested
    ) external returns (uint128 amount0, uint128 amount1);

    /// @notice Collects tokens owed to a position
    /// @dev Does not recompute fees earned, which must be done either via mint or burn of any amount of liquidity.
    /// Collect must be called by the position owner. To withdraw only token0 or only token1, amount0Requested or
    /// amount1Requested may be set to zero. To withdraw all tokens owed, caller may pass any value greater than the
    /// actual tokens owed, e.g. type(uint128).max. Tokens owed may be from accumulated swap fees or burned liquidity.
    /// @param recipient The address which should receive the fees collected
    /// @param tickLower The lower tick of the position for which to collect fees
    /// @param tickUpper The upper tick of the position for which to collect fees
    /// @param amount0Requested How much token0 should be withdrawn from the fees owed
    /// @param amount1Requested How much token1 should be withdrawn from the fees owed
    /// @param owner Owner of the position in the pool (nft manager or gauge)
    /// @return amount0 The amount of fees collected in token0
    /// @return amount1 The amount of fees collected in token1
    function collect(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount0Requested,
        uint128 amount1Requested,
        address owner
    ) external returns (uint128 amount0, uint128 amount1);

    /// @notice Burn liquidity from the sender and account tokens owed for the liquidity to the position
    /// @dev Can be used to trigger a recalculation of fees owed to a position by calling with an amount of 0
    /// @dev Fees must be collected separately via a call to #collect
    /// @param tickLower The lower tick of the position for which to burn liquidity
    /// @param tickUpper The upper tick of the position for which to burn liquidity
    /// @param amount How much liquidity to burn
    /// @return amount0 The amount of token0 sent to the recipient
    /// @return amount1 The amount of token1 sent to the recipient
    function burn(int24 tickLower, int24 tickUpper, uint128 amount)
        external
        returns (uint256 amount0, uint256 amount1);

    /// @notice Burn liquidity from the supplied owner and account tokens owed for the liquidity to the position
    /// @dev Can be used to trigger a recalculation of fees owed to a position by calling with an amount of 0
    /// @dev Fees must be collected separately via a call to #collect
    /// @param tickLower The lower tick of the position for which to burn liquidity
    /// @param tickUpper The upper tick of the position for which to burn liquidity
    /// @param amount How much liquidity to burn
    /// @param owner Owner of the position in the pool (nft manager or gauge)
    /// @return amount0 The amount of token0 sent to the recipient
    /// @return amount1 The amount of token1 sent to the recipient
    function burn(int24 tickLower, int24 tickUpper, uint128 amount, address owner)
        external
        returns (uint256 amount0, uint256 amount1);

    /// @notice Convert existing liquidity into staked liquidity
    /// @notice Only callable by the gauge associated with this pool
    /// @param stakedLiquidityDelta The amount by which to increase or decrease the staked liquidity
    /// @param tickLower The lower tick of the position for which to stake liquidity
    /// @param tickUpper The upper tick of the position for which to stake liquidity
    /// @param positionUpdate If the nft and gauge position should be updated
    function stake(int128 stakedLiquidityDelta, int24 tickLower, int24 tickUpper, bool positionUpdate) external;

    /// @notice Swap token0 for token1, or token1 for token0
    /// @dev The caller of this method receives a callback in the form of ICLSwapCallback#uniswapV3SwapCallback
    /// @param recipient The address to receive the output of the swap
    /// @param zeroForOne The direction of the swap, true for token0 to token1, false for token1 to token0
    /// @param amountSpecified The amount of the swap, which implicitly configures the swap as exact input (positive), or exact output (negative)
    /// @param sqrtPriceLimitX96 The Q64.96 sqrt price limit. If zero for one, the price cannot be less than this
    /// value after the swap. If one for zero, the price cannot be greater than this value after the swap
    /// @param data Any data to be passed through to the callback
    /// @return amount0 The delta of the balance of token0 of the pool, exact when negative, minimum when positive
    /// @return amount1 The delta of the balance of token1 of the pool, exact when negative, minimum when positive
    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1);

    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data,
        address sender,
        address callback,
        bytes calldata callbackData
    ) external returns (int256 amount0, int256 amount1);

    /// @notice Receive token0 and/or token1 and pay it back, plus a fee, in the callback
    /// @dev The caller of this method receives a callback in the form of ICLFlashCallback#uniswapV3FlashCallback
    /// @dev Can be used to donate underlying tokens pro-rata to currently in-range liquidity providers by calling
    /// with 0 amount{0,1} and sending the donation amount(s) from the callback
    /// @param recipient The address which will receive the token0 and token1 amounts
    /// @param amount0 The amount of token0 to send
    /// @param amount1 The amount of token1 to send
    /// @param data Any data to be passed through to the callback
    function flash(address recipient, uint256 amount0, uint256 amount1, bytes calldata data) external;

    /// @notice Increase the maximum number of price and liquidity observations that this pool will store
    /// @dev This method is no-op if the pool already has an observationCardinalityNext greater than or equal to
    /// the input observationCardinalityNext.
    /// @param observationCardinalityNext The desired minimum number of observations for the pool to store
    function increaseObservationCardinalityNext(uint16 observationCardinalityNext) external;

    /// @notice Updates rewardGrowthGlobalX128 every time when any tick is crossed,
    /// or when any position is staked/unstaked from the gauge
    function updateRewardsGrowthGlobal() external;

    /// @notice Syncs rewards with gauge
    /// @param rewardRate the rate rewards being distributed during the epoch
    /// @param rewardReserve the available rewards to be distributed during the epoch
    /// @param periodFinish the end of the current period of rewards, updated once per epoch
    function syncReward(uint256 rewardRate, uint256 rewardReserve, uint256 periodFinish) external;
}

/// @notice Helper utility that enables calling multiple local methods in a single call.
/// @author Modified from Uniswap (https://github.com/Uniswap/v3-periphery/blob/main/contracts/base/Multicall.sol)
/// License-Identifier: GPL-2.0-or-later
abstract contract Multicall {
    function multicall(bytes[] calldata data) public payable returns (bytes[] memory results) {
        results = new bytes[](data.length);
        
        for (uint i; i < data.length;) {
            (bool success, bytes memory result) = address(this).delegatecall(data[i]);

            if (!success) {
                // Next 5 lines from https://ethereum.stackexchange.com/a/83577
                if (result.length < 68) revert();
                assembly {
                    result := add(result, 0x04)
                }
                revert(abi.decode(result, (string)));
            }

            results[i] = result;

            // cannot realistically overflow on human timescales
            unchecked {
                ++i;
            }
        }
    }
}

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

interface IVault {
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

interface INFTPositionManager {
    struct MintParams {
        address token0;
        address token1;
        int24 tickSpacing;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
        uint160 sqrtPriceX96;
    }

    function mint(MintParams calldata params)
        external
        payable
        returns (uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);

    struct IncreaseLiquidityParams {
        uint256 tokenId;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    function increaseLiquidity(IncreaseLiquidityParams calldata params)
        external
        payable
        returns (uint128 liquidity, uint256 amount0, uint256 amount1);
}

error NotEnoughLiquidityMinted();
error TooLittleReceived();
error Expired();

/// @notice The router is a universal interface for users to access
/// functions across different protocol parts in one place.
///
/// It handles the allowances and transfers of tokens, and
/// allows chained swaps/operations across multiple pools, with
/// additional features like slippage protection and permit support.
///
contract SyncSwapRouterV3 is IRouter, SelfPermit, Multicall, Rescuable {

    struct TokenInput {
        address token;
        uint amount;
        bool useVault;
    }

    address public immutable vault;
    address public immutable wETH;
    address private constant NATIVE_TOKEN = address(0);

    mapping(address => mapping(address => bool)) public isPoolEntered;
    mapping(address => address[]) public enteredPools;

    modifier ensure(uint deadline) {
        // solhint-disable-next-line not-rely-on-time
        if (block.timestamp > deadline) {
            revert Expired();
        }
        _;
    }

    receive() external payable {
        //require(msg.sender == wETH, "Not wETH");
    }

    constructor(address _vault, address _wETH) {
        vault = _vault;
        wETH = _wETH;
    }

    function enteredPoolsLength(address account) external view returns (uint) {
        return enteredPools[account].length;
    }

    function _transferFromSender(address token, address to, uint amount, bool useVault) private {
        if (useVault) {
            if (token == NATIVE_TOKEN || (token == wETH && address(this).balance >= amount)) {
                // Deposit ETH to the vault.
                IVault(vault).deposit{value: amount}(NATIVE_TOKEN, to);
            } else {
                // Transfer tokens to the vault.
                TransferHelper.safeTransferFrom(token, msg.sender, vault, amount);

                // Notify the vault to deposit to receiver.
                IVault(vault).deposit(token, to);
            }
        } else {
            if (token == NATIVE_TOKEN || (token == wETH && address(this).balance >= amount)) {
                // Wrap native ETH to wETH.
                IWETH(wETH).deposit{value: amount}();

                // Send wETH to the receiver.
                IWETH(wETH).transfer(to, amount);
            } else {
                // Transfer tokens to the receiver.
                TransferHelper.safeTransferFrom(token, msg.sender, to, amount);
            }
        }
    }

    function _transferAndAddLiquidity(
        address pool,
        TokenInput[] calldata inputs,
        bytes calldata data,
        uint minLiquidity,
        address callback,
        bytes calldata callbackData
    ) private returns (uint liquidity) {
        // Send all input tokens to the pool.
        uint n = inputs.length;

        TokenInput memory input;

        for (uint i; i < n; ) {
            input = inputs[i];

            _transferFromSender(input.token, pool, input.amount, input.useVault);

            unchecked {
                ++i;
            }
        }

        liquidity = IPool(pool).mint(data, msg.sender, callback, callbackData);

        if (liquidity < minLiquidity) {
            revert NotEnoughLiquidityMinted();
        }
    }

    function _markPoolEntered(address pool) private {
        if (!isPoolEntered[pool][msg.sender]) {
            isPoolEntered[pool][msg.sender] = true;
            enteredPools[msg.sender].push(pool);
        }
    }

    function addLiquidity(
        address pool,
        TokenInput[] calldata inputs,
        bytes calldata data,
        uint minLiquidity,
        address callback,
        bytes calldata callbackData,
        address staking
    ) public payable returns (uint liquidity) {
        liquidity = _transferAndAddLiquidity(
            pool,
            inputs,
            data,
            minLiquidity,
            callback,
            callbackData
        );

        if (staking != address(0)) {
            address to = abi.decode(data, (address));
            IStaking(staking).stake(liquidity, to);
        }
    }

    function addLiquidity2(
        address pool,
        TokenInput[] calldata inputs,
        bytes calldata data,
        uint minLiquidity,
        address callback,
        bytes calldata callbackData,
        address staking
    ) external payable returns (uint liquidity) {
        liquidity = addLiquidity(
            pool,
            inputs,
            data,
            minLiquidity,
            callback,
            callbackData,
            staking
        );

        _markPoolEntered(pool);
    }

    function addLiquidityWithPermit(
        address pool,
        TokenInput[] calldata inputs,
        bytes calldata data,
        uint minLiquidity,
        address callback,
        bytes calldata callbackData,
        SplitPermitParams[] memory permits,
        address staking
    ) public payable returns (uint liquidity) {
        // Approve all tokens via permit.
        uint n = permits.length;

        SplitPermitParams memory params;

        for (uint i; i < n; ) {
            params = permits[i];

            IERC20Permit(params.token).permit(
                msg.sender,
                address(this),
                params.approveAmount,
                params.deadline,
                params.v,
                params.r,
                params.s
            );

            unchecked {
                ++i;
            }
        }

        liquidity = _transferAndAddLiquidity(
            pool,
            inputs,
            data,
            minLiquidity,
            callback,
            callbackData
        );

        if (staking != address(0)) {
            address to = abi.decode(data, (address));
            IStaking(staking).stake(liquidity, to);
        }
    }

    function addLiquidityWithPermit2(
        address pool,
        TokenInput[] calldata inputs,
        bytes calldata data,
        uint minLiquidity,
        address callback,
        bytes calldata callbackData,
        SplitPermitParams[] memory permits,
        address staking
    ) public payable returns (uint liquidity) {
        liquidity = addLiquidityWithPermit(
            pool,
            inputs,
            data,
            minLiquidity,
            callback,
            callbackData,
            permits,
            staking
        );

        _markPoolEntered(pool);
    }

    // Burn Liquidity
    function _transferAndBurnLiquidity(
        address pool,
        uint liquidity,
        bytes memory data,
        uint[] memory minAmounts,
        address callback,
        bytes calldata callbackData
    ) private returns (IPool.TokenAmount[] memory amounts) {
        IBasePool(pool).transferFrom(msg.sender, pool, liquidity);

        amounts = IPool(pool).burn(data, msg.sender, callback, callbackData);

        uint n = amounts.length;

        for (uint i; i < n; ) {
            IPool.TokenAmount memory tokenAmount = amounts[i];

            if (tokenAmount.amount < minAmounts[i]) {
                revert TooLittleReceived();
            }

            unchecked {
                ++i;
            }
        }
    }

    function burnLiquidity(
        address pool,
        uint liquidity,
        bytes calldata data,
        uint[] calldata minAmounts,
        address callback,
        bytes calldata callbackData
    ) external returns (IPool.TokenAmount[] memory amounts) {
        amounts = _transferAndBurnLiquidity(
            pool,
            liquidity,
            data,
            minAmounts,
            callback,
            callbackData
        );
    }

    function burnLiquidityWithPermit(
        address pool,
        uint liquidity,
        bytes calldata data,
        uint[] calldata minAmounts,
        address callback,
        bytes calldata callbackData,
        ArrayPermitParams memory permit
    ) external returns (IPool.TokenAmount[] memory amounts) {
        // Approve liquidity via permit.
        IBasePool(pool).permit2(
            msg.sender,
            address(this),
            permit.approveAmount,
            permit.deadline,
            permit.signature
        );

        amounts = _transferAndBurnLiquidity(
            pool,
            liquidity,
            data,
            minAmounts,
            callback,
            callbackData
        );
    }

    // Burn Liquidity Single
    function _transferAndBurnLiquiditySingle(
        address pool,
        uint liquidity,
        bytes memory data,
        uint minAmount,
        address callback,
        bytes memory callbackData
    ) private returns (IPool.TokenAmount memory amountOut) {
        IBasePool(pool).transferFrom(msg.sender, pool, liquidity);

        amountOut = IPool(pool).burnSingle(data, msg.sender, callback, callbackData);

        if (amountOut.amount < minAmount) {
            revert TooLittleReceived();
        }
    }

    function burnLiquiditySingle(
        address pool,
        uint liquidity,
        bytes memory data,
        uint minAmount,
        address callback,
        bytes memory callbackData
    ) external returns (IPool.TokenAmount memory amountOut) {
        amountOut = _transferAndBurnLiquiditySingle(
            pool,
            liquidity,
            data,
            minAmount,
            callback,
            callbackData
        );
    }

    function burnLiquiditySingleWithPermit(
        address pool,
        uint liquidity,
        bytes memory data,
        uint minAmount,
        address callback,
        bytes memory callbackData,
        ArrayPermitParams calldata permit
    ) external returns (IPool.TokenAmount memory amountOut) {
        // Approve liquidity via permit.
        IBasePool(pool).permit2(
            msg.sender,
            address(this),
            permit.approveAmount,
            permit.deadline,
            permit.signature
        );

        amountOut = _transferAndBurnLiquiditySingle(
            pool,
            liquidity,
            data,
            minAmount,
            callback,
            callbackData
        );
    }

    function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external {
        require(amount0Delta > 0 || amount1Delta > 0); // swaps entirely within 0-liquidity regions are not supported

        (address tokenIn, uint amountToPay) = abi.decode(data, (address, uint));

        //pay(tokenIn, address(this), msg.sender, amountToPay);
        if ((tokenIn == wETH || tokenIn == NATIVE_TOKEN) && address(this).balance >= amountToPay) {
            // pay with WETH
            IWETH(wETH).deposit{value: amountToPay}(); // wrap only what is needed to pay
            IWETH(wETH).transfer(msg.sender, amountToPay);
        } else {
            // pay with tokens already in the contract (for the exact input multihop case)
            TransferHelper.safeTransfer(tokenIn, msg.sender, amountToPay);
        }
    }

    struct SwapState {
        IPool.TokenAmount lastAmountOut;
        uint lastStepIndex;
    }

    // Swap
    function _swap(
        SwapPath[] memory paths,
        uint amountOutMin,
        address ethUnwrapRecipient
    ) private returns (IPool.TokenAmount memory amountOut) {
        uint pathsLength = paths.length;

        SwapPath memory path;
        SwapStep memory step;

        SwapState memory state;

        for (uint pathIndex; pathIndex < pathsLength; ) {
            path = paths[pathIndex];

            // Prefund the first step.
            step = path.steps[0];

            // Receive funds from sender.
            if (step.recipient == address(0)) {
                _transferFromSender(
                    path.tokenIn,
                    step.pool, // prefund the first pool
                    path.amountIn,
                    step.useVault
                );
            } else {
                // range pools
                _transferFromSender(
                    path.tokenIn,
                    address(this), // send to router first for range pools
                    path.amountIn,
                    step.useVault
                );

                state.lastAmountOut = IPool.TokenAmount(path.tokenIn, path.amountIn);
            }

            // Cache steps length.
            state.lastStepIndex = path.steps.length - 1;

            uint stepIndex;
            while (true) {

                if (step.recipient == address(0)) {
                    state.lastAmountOut = IBasePool(step.pool).swap(
                        step.data, msg.sender, step.callback, step.callbackData
                    );
                } else {
                    // Using output amount of last step, or the path input amount for the first step.

                    // input token and amount
                    bytes memory rangePoolCallbackData = abi.encode(state.lastAmountOut.token, state.lastAmountOut.amount);

                    (int256 amount0, int256 amount1) = ICLPoolActions(step.pool).swap(
                        step.recipient,
                        step.zeroForOne,
                        int256(state.lastAmountOut.amount),
                        (
                            step.sqrtPriceLimitX96 == 0
                            ? (step.zeroForOne ? 4295128740 : 1461446703485210103287273052203988822378723970341)
                            : step.sqrtPriceLimitX96
                        ),
                        rangePoolCallbackData,
                        msg.sender,
                        step.callback,
                        step.callbackData
                    );

                    state.lastAmountOut = IPool.TokenAmount({
                        token: step.tokenOut,
                        amount: step.zeroForOne ? uint(-amount1) : uint(-amount0)
                    });
                }

                if (stepIndex >= state.lastStepIndex) {
                    amountOut.token = state.lastAmountOut.token;
                    amountOut.amount += state.lastAmountOut.amount;

                    break; // next path
                } else {
                    bool previousStepUseVault = step.useVault;

                    unchecked {
                        ++stepIndex;
                    }

                    // Cache the next step.
                    step = path.steps[stepIndex];

                    if (!previousStepUseVault && step.useVault) {
                        uint amount = IERC20(state.lastAmountOut.token).balanceOf(address(this));

                        // Transfer tokens to the vault.
                        TransferHelper.safeTransfer(state.lastAmountOut.token, vault, amount);

                        // Notify the vault to deposit.
                        IVault(vault).deposit(state.lastAmountOut.token, step.pool);
                    }
                }
            }

            unchecked {
                ++pathIndex;
            }
        }

        if (amountOut.amount < amountOutMin) {
            revert TooLittleReceived();
        }

        if (ethUnwrapRecipient != address(0)) {
            IWETH(wETH).withdraw(IERC20(wETH).balanceOf(address(this)));
            TransferHelper.safeTransferETH(ethUnwrapRecipient, address(this).balance);
        }
    }

    function swap(
        SwapPath[] memory paths,
        uint amountOutMin,
        uint deadline,
        address ethUnwrapRecipient
    ) external payable ensure(deadline) returns (IPool.TokenAmount memory amountOut) {
        amountOut = _swap(
            paths,
            amountOutMin,
            ethUnwrapRecipient
        );
    }

    function swapWithPermit(
        SwapPath[] memory paths,
        uint amountOutMin,
        uint deadline,
        SplitPermitParams calldata permit,
        address ethUnwrapRecipient
    ) external payable ensure(deadline) returns (IPool.TokenAmount memory amountOut) {
        // Approve input tokens via permit.
        IERC20Permit(permit.token).permit(
            msg.sender,
            address(this),
            permit.approveAmount,
            permit.deadline,
            permit.v,
            permit.r,
            permit.s
        );

        amountOut = _swap(
            paths,
            amountOutMin,
            ethUnwrapRecipient
        );
    }

    function createPosition(
        address nftPositionManager,
        address pool,
        INFTPositionManager.MintParams calldata params
    ) public payable returns (uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1) {
        if (params.token0 != wETH || msg.value == 0) {
            _transferFromSender(params.token0, address(this), params.amount0Desired, false);
            _safeApproveToken(params.token0, nftPositionManager, params.amount0Desired);
        }

        if (params.token1 != wETH || msg.value == 0) {
            _transferFromSender(params.token1, address(this), params.amount1Desired, false);
            _safeApproveToken(params.token1, nftPositionManager, params.amount1Desired);
        }

        (tokenId, liquidity, amount0, amount1) = INFTPositionManager(nftPositionManager).mint{value: msg.value}(params);

        // refund
        _refundTokenTo(params.token0, msg.sender);
        _refundTokenTo(params.token1, msg.sender);

        _markPoolEntered(pool);
    }

    function createPositionWithPermit(
        address nftPositionManager,
        address pool,
        INFTPositionManager.MintParams calldata params,
        SplitPermitParams[] memory permits
    ) external payable returns (uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1) {
        // Approve all tokens via permit.
        uint n = permits.length;

        SplitPermitParams memory permitParams;

        for (uint i; i < n; ) {
            permitParams = permits[i];

            IERC20Permit(permitParams.token).permit(
                msg.sender,
                address(this),
                permitParams.approveAmount,
                permitParams.deadline,
                permitParams.v,
                permitParams.r,
                permitParams.s
            );

            unchecked {
                ++i;
            }
        }

        (tokenId, liquidity, amount0, amount1) = createPosition(
            nftPositionManager,
            pool,
            params
        );
    }

    function increaseLiquidity(
        address nftPositionManager,
        address tokenA,
        address tokenB,
        INFTPositionManager.IncreaseLiquidityParams calldata params
    ) public payable returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        if (tokenA != wETH || msg.value == 0) {
            _transferFromSender(tokenA, address(this), params.amount0Desired, false);
            _safeApproveToken(tokenA, nftPositionManager, params.amount0Desired);
        }

        if (tokenB != wETH || msg.value == 0) {
            _transferFromSender(tokenB, address(this), params.amount1Desired, false);
            _safeApproveToken(tokenB, nftPositionManager, params.amount1Desired);
        }

        (liquidity, amount0, amount1) = INFTPositionManager(nftPositionManager).increaseLiquidity{value: msg.value}(params);

        // refund
        _refundTokenTo(tokenA, msg.sender);
        _refundTokenTo(tokenB, msg.sender);
    }

    function increaseLiquidityWithPermit(
        address nftPositionManager,
        address tokenA,
        address tokenB,
        INFTPositionManager.IncreaseLiquidityParams calldata params,
        SplitPermitParams[] memory permits
    ) external payable returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        // Approve all tokens via permit.
        uint n = permits.length;

        SplitPermitParams memory permitParams;

        for (uint i; i < n; ) {
            permitParams = permits[i];

            IERC20Permit(permitParams.token).permit(
                msg.sender,
                address(this),
                permitParams.approveAmount,
                permitParams.deadline,
                permitParams.v,
                permitParams.r,
                permitParams.s
            );

            unchecked {
                ++i;
            }
        }

        (liquidity, amount0, amount1) = increaseLiquidity(
            nftPositionManager,
            tokenA,
            tokenB,
            params
        );
    }

    function _refundTokenTo(address token, address to) private {
        if (token == NATIVE_TOKEN || token == wETH) {
            uint balance = IERC20(wETH).balanceOf(address(this));
            if (balance != 0) {
                IWETH(wETH).withdraw(balance);
            }
            if (address(this).balance != 0) {
                TransferHelper.safeTransferETH(to, address(this).balance);
            }
        } else {
            uint balance = IERC20(token).balanceOf(address(this));
            if (balance != 0) {
                TransferHelper.safeTransfer(token, to, IERC20(token).balanceOf(address(this)));
            }
        }
    }

    function _safeApproveToken(address token, address spender, uint amount) private {
        if (token != NATIVE_TOKEN) {
            if (IERC20(token).allowance(address(this), spender) < amount) {
                TransferHelper.safeApprove(token, spender, 0); // set to 0 first for better compatibility
                TransferHelper.safeApprove(token, spender, type(uint).max);
            }
        }
    }

    /// @notice Wrapper function to allow pool deployment to be batched.
    function createPool(address _factory, bytes calldata data) external payable returns (address) {
        return IPoolFactory(_factory).createPool(data);
    }

    function _stake(address target, address token, uint amount) private {
        TransferHelper.safeTransferFrom(token, msg.sender, address(this), amount);

        if (IERC20(token).allowance(address(this), target) < amount) {
            /// @dev This can approve arbitrary contract, the router is not intended to store any funds.
            TransferHelper.safeApprove(token, target, type(uint).max);
        }
    }

    /// @dev Universal function to stake tokens to a target contract.
    function stake(address target, address token, uint amount, address to) external {
        _stake(target, token, amount);
        IStaking(target).stake(amount, to);
    }

    function stakeWithToken(address target, address token, uint amount, address to) external {
        _stake(target, token, amount);
        IStaking(target).stake(token, amount, to);
    }
}