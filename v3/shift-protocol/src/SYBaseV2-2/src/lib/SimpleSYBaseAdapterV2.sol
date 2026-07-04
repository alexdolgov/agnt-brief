// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@pendle/contracts/core/StandardizedYield/v2/SYBaseV2.sol";

/**
 * @title SimpleSYBaseAdapterV2
 * @notice A simplified base adapter for creating Pendle Standardized Yield (SY) tokens
 * @dev This abstract contract provides a minimal implementation of Pendle's SY token standard
 *      with a 1:1 exchange rate. It's designed for yield-bearing tokens that don't require
 *      complex yield calculations or external protocol interactions.
 * 
 *      Key features:
 *      - 1:1 exchange rate between SY tokens and underlying tokens
 *      - Direct token transfers for deposits and redemptions
 *      - Minimal gas overhead
 *      - Full Pendle SY compatibility
 */
abstract contract SimpleSYBaseAdapterV2 is SYBaseV2 {
    using PMath for uint256;

    /**
     * @notice Constructs a new SimpleSYBaseAdapterV2
     * @dev Initializes the SY token and sets the underlying yield token
     * @param _name The name of the SY token
     * @param _symbol The symbol of the SY token  
     * @param _yieldToken The address of the underlying yield-bearing token
     */
    constructor(string memory _name, string memory _symbol, address _yieldToken)
        SYBaseV2(_name, _symbol, _yieldToken)
    {
        yieldToken = _yieldToken;
    }

    /*///////////////////////////////////////////////////////////////
                    DEPOSIT/REDEEM USING BASE TOKENS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Internal function to handle token deposits
     * @dev Implements a 1:1 deposit mechanism where deposited tokens equal SY tokens minted
     * @param amountDeposited The amount of underlying tokens being deposited
     * @return amountSharesOut The amount of SY tokens to mint (equals amountDeposited for 1:1 ratio)
     */
    function _deposit(address, /*tokenIn*/ uint256 amountDeposited)
        internal
        virtual
        override
        returns (uint256 /*amountSharesOut*/ )
    {
        return amountDeposited;
    }

    /**
     * @notice Internal function to handle token redemptions
     * @dev Implements a 1:1 redemption mechanism where SY tokens equal underlying tokens returned
     * @param receiver The address that will receive the redeemed underlying tokens
     * @param amountSharesToRedeem The amount of SY tokens being redeemed
     * @return amountTokenOut The amount of underlying tokens transferred (equals amountSharesToRedeem for 1:1 ratio)
     */
    function _redeem(address receiver, address, /*tokenOut*/ uint256 amountSharesToRedeem)
        internal
        virtual
        override
        returns (uint256 /*amountTokenOut*/ )
    {
        _transferOut(yieldToken, receiver, amountSharesToRedeem);
        return amountSharesToRedeem;
    }

    /*///////////////////////////////////////////////////////////////
                               EXCHANGE-RATE
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the current exchange rate between SY tokens and underlying tokens
     * @dev Always returns 1.0 (PMath.ONE) to maintain a constant 1:1 exchange rate
     *      This simplifies the implementation and eliminates the need for complex
     *      yield calculations or external oracle integrations
     * @return The exchange rate as a fixed-point number (1.0 = PMath.ONE = 1e18)
     */
    function exchangeRate() public view virtual override returns (uint256) {
        return PMath.ONE;
    }

    /*///////////////////////////////////////////////////////////////
                MISC FUNCTIONS FOR METADATA
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Previews the amount of SY tokens that would be minted for a deposit
     * @dev Returns the same amount as input due to 1:1 exchange rate
     * @param amountTokenToDeposit The amount of underlying tokens to deposit
     * @return amountSharesOut The amount of SY tokens that would be minted
     */
    function _previewDeposit(address, /*tokenIn*/ uint256 amountTokenToDeposit)
        internal
        pure
        override
        returns (uint256 /*amountSharesOut*/ )
    {
        return amountTokenToDeposit;
    }

    /**
     * @notice Previews the amount of underlying tokens that would be received for a redemption
     * @dev Returns the same amount as input due to 1:1 exchange rate
     * @param amountSharesToRedeem The amount of SY tokens to redeem
     * @return amountTokenOut The amount of underlying tokens that would be received
     */
    function _previewRedeem(address, /*tokenOut*/ uint256 amountSharesToRedeem)
        internal
        pure
        override
        returns (uint256 /*amountTokenOut*/ )
    {
        return amountSharesToRedeem;
    }

    /**
     * @notice Returns the list of tokens that can be deposited into this SY token
     * @dev Only the underlying yield token is accepted for deposits
     * @return res Array containing only the yield token address
     */
    function getTokensIn() public view virtual override returns (address[] memory res) {
        return ArrayLib.create(yieldToken);
    }

    /**
     * @notice Returns the list of tokens that can be received when redeeming this SY token
     * @dev Only the underlying yield token can be received from redemptions
     * @return res Array containing only the yield token address
     */
    function getTokensOut() public view virtual override returns (address[] memory res) {
        return ArrayLib.create(yieldToken);
    }

    /**
     * @notice Checks if a token is valid for deposits
     * @dev Only returns true if the token is the underlying yield token
     * @param token The token address to validate
     * @return True if the token can be deposited, false otherwise
     */
    function isValidTokenIn(address token) public view virtual override returns (bool) {
        return token == yieldToken;
    }

    /**
     * @notice Checks if a token is valid for redemptions
     * @dev Only returns true if the token is the underlying yield token
     * @param token The token address to validate
     * @return True if the token can be redeemed, false otherwise
     */
    function isValidTokenOut(address token) public view virtual override returns (bool) {
        return token == yieldToken;
    }

    /**
     * @notice Returns detailed information about the underlying asset
     * @dev Provides asset type, address, and decimal information for integration purposes
     * @return assetType The type of asset (TOKEN in this case)
     * @return assetAddress The address of the underlying yield token
     * @return assetDecimals The number of decimals of the underlying yield token
     */
    function assetInfo() external view returns (AssetType assetType, address assetAddress, uint8 assetDecimals) {
        return (AssetType.TOKEN, yieldToken, IERC20Metadata(yieldToken).decimals());
    }
}
