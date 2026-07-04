// SPDX-License-Identifier: AGPL-v3.0
pragma solidity ^0.8.21;


// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)
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

/// @title PythBasedAssetOracle
/// @author Jason (Sturdy) https://github.com/iris112
/// @notice  An oracle for assets based on pyth
interface IPyth {
    struct Price {
        // Price
        int64 price;
        // Confidence interval around the price
        uint64 conf;
        // Price exponent
        int32 expo;
        // Unix timestamp describing when the price was published
        uint publishTime;
    }

    function getPriceUnsafe(bytes32 id) external view returns (Price memory price);
}

contract PythBasedAssetOracle {
    address private constant PYTH_ORACLE = 0xA2aa501b19aff244D90cc15a4Cf739D2725B5729;
    uint8 public constant DECIMALS = 18;
    
    uint256 public immutable MAX_ORACLE_DELAY;
    uint256 public immutable PRICE_MIN;
    uint256 public immutable NORMALIZATION;
    bytes32 public immutable BORROW_ASSET_PRICE_ID;
    bytes32 public immutable COLLATERAL_ASSET_PRICE_ID;

    string public name;

    error BAD_PRICE();

    constructor(
        uint256 _maxOracleDelay,
        uint256 _priceMin,
        address _borrowAsset,
        address _collateralAsset,
        bytes32 _borrowAssetPriceId,
        bytes32 _collateralAssetPriceId,
        string memory _name
    ) {
        name = _name;
        MAX_ORACLE_DELAY = _maxOracleDelay;
        PRICE_MIN = _priceMin;
        BORROW_ASSET_PRICE_ID = _borrowAssetPriceId;
        COLLATERAL_ASSET_PRICE_ID = _collateralAssetPriceId;
        
        uint8 _multiplyDecimals = uint8(uint32(-IPyth(PYTH_ORACLE).getPriceUnsafe(BORROW_ASSET_PRICE_ID).expo));
        uint8 _divideDecimals = uint8(uint32(-IPyth(PYTH_ORACLE).getPriceUnsafe(COLLATERAL_ASSET_PRICE_ID).expo));
        NORMALIZATION =
            10 **
                (18 +
                    _multiplyDecimals -
                    _divideDecimals +
                    IERC20Metadata(_borrowAsset).decimals() -
                    IERC20Metadata(_collateralAsset).decimals());
    }

    /// @notice The ```getPrices``` function is intended to return price of ERC4626 token based on the base asset
    /// @return _isBadData is always false, just sync to other oracle interfaces
    /// @return _priceLow is the lower of the prices
    /// @return _priceHigh is the higher of the prices
    function getPrices() external view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        IPyth.Price memory price1 = IPyth(PYTH_ORACLE).getPriceUnsafe(BORROW_ASSET_PRICE_ID);     // borrowAsset/USD
        // If data is stale or negative, set bad data to true and return
        if (price1.price <= 0 || (block.timestamp - price1.publishTime > MAX_ORACLE_DELAY)) {
            revert BAD_PRICE();
        }

        IPyth.Price memory price2 = IPyth(PYTH_ORACLE).getPriceUnsafe(COLLATERAL_ASSET_PRICE_ID);   // collateralAsset/USD
        // If data is stale or negative, set bad data to true and return
        if (price2.price <= 0 || (block.timestamp - price2.publishTime > MAX_ORACLE_DELAY)) {
            revert BAD_PRICE();
        }

        uint256 rate = uint256(1e36) * uint256(uint64(price1.price)) / uint256(uint64(price2.price)) / NORMALIZATION;    //borrowAsset/collateralAsset

        _priceHigh = rate > PRICE_MIN ? rate : PRICE_MIN;
        _priceLow = _priceHigh;
    }
}