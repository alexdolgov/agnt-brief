// ============================================================
// FILE: contracts/IndexManager.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "./interfaces/IIndexManager.sol";
import "./interfaces/IWeightedIndexFactory.sol";

contract IndexManager is IIndexManager, Context, Ownable {
    IWeightedIndexFactory public podFactory;
    IIndexAndStatus[] public indexes;
    // index/pod => idx in indexes array
    mapping(address => uint256) _indexIdx;
    mapping(address => bool) public authorized;

    constructor(IWeightedIndexFactory _podFactory) Ownable(_msgSender()) {
        podFactory = _podFactory;
    }

    modifier onlyAuthorized() {
        require(_authorizedOrOwner(_msgSender()), "UA1");
        _;
    }

    modifier onlyAuthorizedOrCreator(address _index) {
        require(_authorizedOwnerOrCreator(_msgSender(), _index), "UA2");
        _;
    }

    function deployNewIndex(
        string memory indexName,
        string memory indexSymbol,
        bytes memory baseConfig,
        bytes memory immutables,
        address _owner
    ) external override returns (address _index) {
        (_index,,) = podFactory.deployPodAndLinkDependencies(indexName, indexSymbol, baseConfig, immutables);
        _addIndex(_index, _owner, false, false, false);
    }

    function indexLength() external view returns (uint256) {
        return indexes.length;
    }

    function allIndexes() external view override returns (IIndexAndStatus[] memory) {
        return indexes;
    }

    function setFactory(IWeightedIndexFactory _newFactory) external onlyOwner {
        podFactory = _newFactory;
    }

    function setAuthorized(address _auth, bool _isAuthed) external onlyOwner {
        require(authorized[_auth] != _isAuthed, "CHANGE");
        authorized[_auth] = _isAuthed;
    }

    function addIndex(address _index, address _creator, bool _verified, bool _selfLending, bool _makePublic)
        external
        override
        onlyAuthorized
    {
        _addIndex(_index, _creator, _verified, _selfLending, _makePublic);
    }

    function _addIndex(address _index, address _user, bool _verified, bool _selfLending, bool _makePublic) internal {
        _indexIdx[_index] = indexes.length;
        indexes.push(
            IIndexAndStatus({
                index: _index,
                creator: _user,
                verified: _verified,
                selfLending: _selfLending,
                makePublic: _makePublic
            })
        );
        emit AddIndex(_index, _verified);
    }

    function removeIndex(uint256 _idxInAry) external override onlyAuthorized {
        IIndexAndStatus memory _idx = indexes[_idxInAry];
        delete _indexIdx[_idx.index];
        indexes[_idxInAry] = indexes[indexes.length - 1];
        _indexIdx[indexes[_idxInAry].index] = _idxInAry;
        indexes.pop();
        emit RemoveIndex(_idx.index);
    }

    function verifyIndex(uint256 _idx, bool _verified) external override onlyAuthorized {
        require(indexes[_idx].verified != _verified, "CHANGE");
        indexes[_idx].verified = _verified;
        emit SetVerified(indexes[_idx].index, _verified);
    }

    function updateMakePublic(address _index, bool _shouldMakePublic) external onlyAuthorizedOrCreator(_index) {
        uint256 _idx = _indexIdx[_index];
        IIndexAndStatus storage _indexObj = indexes[_idx];
        require(_indexObj.makePublic != _shouldMakePublic, "T");
        _indexObj.makePublic = _shouldMakePublic;
    }

    function updateSelfLending(address _index, bool _isSelfLending) external onlyAuthorizedOrCreator(_index) {
        uint256 _idx = _indexIdx[_index];
        IIndexAndStatus storage _indexObj = indexes[_idx];
        require(_indexObj.selfLending != _isSelfLending, "T");
        _indexObj.selfLending = _isSelfLending;
    }

    function _authorizedOrOwner(address _sender) internal view returns (bool) {
        return _sender == owner() || authorized[_sender];
    }

    function _authorizedOwnerOrCreator(address _sender, address _index) internal view returns (bool) {
        uint256 _idx = _indexIdx[_index];
        return _authorizedOrOwner(_sender) || indexes[_idx].creator == _sender;
    }
}

// ============================================================
// FILE: contracts/interfaces/IDecentralizedIndex.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IDexAdapter.sol";

interface IDecentralizedIndex is IERC20 {
    enum IndexType {
        WEIGHTED,
        UNWEIGHTED
    }

    struct Config {
        address partner;
        uint256 debondCooldown;
        bool hasTransferTax;
        bool blacklistTKNpTKNPoolV2;
    }

    // all fees: 1 == 0.01%, 10 == 0.1%, 100 == 1%
    struct Fees {
        uint16 burn;
        uint16 bond;
        uint16 debond;
        uint16 buy;
        uint16 sell;
        uint16 partner;
    }

    struct IndexAssetInfo {
        address token;
        uint256 weighting;
        uint256 basePriceUSDX96;
        address c1; // arbitrary contract/address field we can use for an index
        uint256 q1; // arbitrary quantity/number field we can use for an index
    }

    /// @notice The ```Create``` event fires when a new decentralized index has been created
    /// @param newIdx The CA of the new index contract
    /// @param wallet The creator of the new index
    event Create(address indexed newIdx, address indexed wallet);

    /// @notice The ```Initialize``` event fires when the new pod has been initialized,
    /// @notice which is at creation on some and in another txn for others (gas limits)
    /// @param wallet The wallet that initialized
    /// @param v2Pool The new UniV2 derivative pool that was created at initialization
    event Initialize(address indexed wallet, address v2Pool);

    /// @notice The ```Bond``` event fires when someone wraps into the pod which mints new pod tokens
    /// @param wallet The wallet that wrapped
    /// @param token The token that was used as a ref to wrap into, representing an underlying tkn
    /// @param amountTokensBonded Amount of underlying tkns used to wrap/bond
    /// @param amountTokensMinted Amount of new pod tokens (pTKN) minted
    event Bond(address indexed wallet, address indexed token, uint256 amountTokensBonded, uint256 amountTokensMinted);

    /// @notice The ```Debond``` event fires when someone unwraps from a pod and redeems underlying tkn(s)
    /// @param wallet The wallet that unwrapped/debond
    /// @param amountDebonded Amount of pTKNs burned/unwrapped
    event Debond(address indexed wallet, uint256 amountDebonded);

    /// @notice The ```AddLiquidity``` event fires when new liquidity (LP) for a pod is added
    /// @param wallet The wallet that added LP
    /// @param amountTokens Amount of pTKNs used for LP
    /// @param amountDAI Amount of pairedLpAsset used for LP
    event AddLiquidity(address indexed wallet, uint256 amountTokens, uint256 amountDAI);

    /// @notice The ```RemoveLiquidity``` event fires when LP is removed for a pod
    /// @param wallet The wallet that removed LP
    /// @param amountLiquidity Amount of liquidity removed
    event RemoveLiquidity(address indexed wallet, uint256 amountLiquidity);

    event SetPartner(address indexed wallet, address newPartner);

    event SetPartnerFee(address indexed wallet, uint16 newFee);

    function BOND_FEE() external view returns (uint16);

    function DEBOND_FEE() external view returns (uint16);

    function DEX_HANDLER() external view returns (IDexAdapter);

    function FLASH_FEE_AMOUNT_DAI() external view returns (uint256);

    function PAIRED_LP_TOKEN() external view returns (address);

    function config() external view returns (Config calldata);

    function fees() external view returns (Fees calldata);

    function unlocked() external view returns (uint8);

    function indexType() external view returns (IndexType);

    function created() external view returns (uint256);

    function lpStakingPool() external view returns (address);

    function lpRewardsToken() external view returns (address);

    function partner() external view returns (address);

    function isAsset(address token) external view returns (bool);

    function getAllAssets() external view returns (IndexAssetInfo[] memory);

    function getInitialAmount(address sToken, uint256 sAmount, address tToken) external view returns (uint256);

    function processPreSwapFeesAndSwap() external;

    function totalAssets() external view returns (uint256 totalManagedAssets);

    function totalAssets(address asset) external view returns (uint256 totalManagedAssets);

    function convertToShares(uint256 assets) external view returns (uint256 shares);

    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    function setup() external;

    function bond(address token, uint256 amount, uint256 amountMintMin) external;

    function debond(uint256 amount, address[] memory token, uint8[] memory percentage) external;

    function addLiquidityV2(uint256 idxTokens, uint256 daiTokens, uint256 slippage, uint256 deadline)
        external
        returns (uint256);

    function removeLiquidityV2(uint256 lpTokens, uint256 minTokens, uint256 minDAI, uint256 deadline) external;

    function flash(address recipient, address token, uint256 amount, bytes calldata data) external;

    function flashMint(address recipient, uint256 amount, bytes calldata data) external;

    function setLpStakingPool(address lpStakingPool) external;
}

// ============================================================
// FILE: contracts/interfaces/IDexAdapter.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IDexAdapter {
    function ASYNC_INITIALIZE() external view returns (bool);

    function V2_ROUTER() external view returns (address);

    function V3_ROUTER() external view returns (address);

    function WETH() external view returns (address);

    function getV3Pool(address _token0, address _token1, int24 _tickSpacing) external view returns (address _pool);

    function getV3Pool(address _token0, address _token1, uint24 _poolFee) external view returns (address _pool);

    function getV2Pool(address _token0, address _token1) external view returns (address _pool);

    function createV2Pool(address _token0, address _token1) external returns (address _pool);

    function getReserves(address _pool) external view returns (uint112, uint112);

    function swapV2Single(
        address _tokenIn,
        address _tokenOut,
        uint256 _amountIn,
        uint256 _amountOutMin,
        address _recipient
    ) external returns (uint256 _amountOut);

    function swapV2SingleExactOut(
        address _tokenIn,
        address _tokenOut,
        uint256 _amountInMax,
        uint256 _amountOut,
        address _recipient
    ) external returns (uint256 _amountInUsed);

    function swapV3Single(
        address _tokenIn,
        address _tokenOut,
        uint24 _fee,
        uint256 _amountIn,
        uint256 _amountOutMin,
        address _recipient
    ) external returns (uint256 _amountOut);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external;

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external;
}

// ============================================================
// FILE: contracts/interfaces/IIndexManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./IDecentralizedIndex.sol";

interface IIndexManager {
    struct IIndexAndStatus {
        address index; // aka pod
        address creator;
        bool verified; // whether it's a safe pod as confirmed by the protocol team
        bool selfLending; // if it's an LVF pod, whether it's self-lending or not
        bool makePublic; // whether it should show in the UI or not
    }

    event AddIndex(address indexed index, bool verified);

    event RemoveIndex(address indexed index);

    event SetVerified(address indexed index, bool verified);

    function allIndexes() external view returns (IIndexAndStatus[] memory);

    function addIndex(address index, address _creator, bool verified, bool selfLending, bool makePublic) external;

    function removeIndex(uint256 idx) external;

    function verifyIndex(uint256 idx, bool verified) external;

    function deployNewIndex(
        string memory indexName,
        string memory indexSymbol,
        bytes memory baseConfig,
        bytes memory immutables,
        address owner
    ) external returns (address _index);
}

// ============================================================
// FILE: contracts/interfaces/IWeightedIndexFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./IDecentralizedIndex.sol";

interface IWeightedIndexFactory {
    function deployPodAndLinkDependencies(
        string memory indexName,
        string memory indexSymbol,
        bytes memory baseConfig,
        bytes memory immutables
    ) external returns (address weightedIndex, address stakingPool, address tokenRewards);
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

import {Context} from "../utils/Context.sol";

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
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
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
        return _owner;
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
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
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
    function allowance(address owner, address spender) external view returns (uint256);

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
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
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
abstract contract Context {
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
