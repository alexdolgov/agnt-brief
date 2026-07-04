// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { AccessControl } from "../lib/openzeppelin-contracts/contracts/access/AccessControl.sol";
import { ILiquidationPairFactory, ILiquidationPair } from "./interfaces/ILiquidationPairFactory.sol";
import { IERC20 } from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";

contract LiquidationProxy is AccessControl {

    ////////////////////////////////////////////////////////////////////////////////
    // Data Structs
    ////////////////////////////////////////////////////////////////////////////////

    /// @notice Compressed liquidation data
    /// @dev Fits all the info needed for a liquidation into one word
    /// @param amountOut The amount of `tokenOut` to liquidate
    /// @param maxAmountIn The max amount of `tokenIn` to use
    /// @param lpIndex The index of the liquidation pair on the factory
    struct LiquidationData {
        uint128 amountOut;
        uint96 maxAmountIn;
        uint32 lpIndex;
    }

    ////////////////////////////////////////////////////////////////////////////////
    // Events
    ////////////////////////////////////////////////////////////////////////////////

    /// @notice Emitted when a new merchant is set.
    /// @param merchant The address of the new merchant
    event SetMerchant(address indexed merchant);

    ////////////////////////////////////////////////////////////////////////////////
    // Constants & Variables
    ////////////////////////////////////////////////////////////////////////////////

    /// @notice Addresses with this role are permitted to call liquidation functions.
    bytes32 public constant LIQUIDATOR_ROLE = keccak256("LIQUIDATOR_ROLE");

    /// @notice The liquidation pair factory
    ILiquidationPairFactory public immutable lpFactory;

    /// @notice The merchant is the supplier and receiver of tokens
    address public merchant;
    
    ////////////////////////////////////////////////////////////////////////////////
    // Constructor
    ////////////////////////////////////////////////////////////////////////////////

    /// @notice Constructor for a new liquidation proxy
    /// @param _lpFactory The liquidation pair factory
    /// @param _liquidator The address of the liquidator
    /// @param _merchant The address of the merchant
    /// @param _admin The address to set as the admin
    constructor(
        ILiquidationPairFactory _lpFactory,
        address _liquidator,
        address _merchant,
        address _admin
    ) {
        lpFactory = _lpFactory;

        merchant = _merchant;
        emit SetMerchant(_merchant);
        
        _grantRole(LIQUIDATOR_ROLE, _liquidator);
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    ////////////////////////////////////////////////////////////////////////////////
    // External Functions
    ////////////////////////////////////////////////////////////////////////////////

    /// @notice Performs a liquidation with the given compressed liquidation data
    /// @param _rawLiquidationData The raw liquidation data compressed into bytes32
    /// @return uint256 The amount of `tokenIn` used for the liquidation
    function liquidate(bytes32 _rawLiquidationData) external onlyRole(LIQUIDATOR_ROLE) returns(uint256) {
        LiquidationData memory _liquidationData = _decodeLiquidationData(_rawLiquidationData);

        ILiquidationPair _lp = lpFactory.allPairs(_liquidationData.lpIndex);
        address _merchant = merchant;

        uint256 _amountIn = _lp.computeExactAmountIn(_liquidationData.amountOut);
        IERC20(_lp.tokenIn()).transferFrom(_merchant, _lp.target(), _amountIn);

        _lp.swapExactAmountOut(_merchant, _liquidationData.amountOut, _liquidationData.maxAmountIn, "");

        return _amountIn;
    }

    /// @notice Sets a new merchant address.
    /// @param _merchant The new merchant address
    /// @dev Only admin
    function setMerchant(address _merchant) external onlyRole(DEFAULT_ADMIN_ROLE) {
        merchant = _merchant;
        emit SetMerchant(_merchant);
    }

    ////////////////////////////////////////////////////////////////////////////////
    // Internal Functions
    ////////////////////////////////////////////////////////////////////////////////

    function _decodeLiquidationData(bytes32 _liquidationData) internal pure returns (LiquidationData memory) {
        return LiquidationData({
            amountOut: uint128(uint256(_liquidationData) >> 128), // last 128 bits
            maxAmountIn: uint96((uint256(_liquidationData) >> 32) & type(uint96).max), // middle 96 bits
            lpIndex: uint32(uint256(_liquidationData) & type(uint32).max) // first 32 bits
        });
    }

}
