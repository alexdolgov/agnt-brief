// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {OracleAggregator} from "../oracles/OracleAggregator.sol";

/// @title IVaultMinting
/// @notice Interface for the VaultMinting contract.
interface IVaultMinting {
    // -------- Events --------

    event MintWBTC(address indexed caller, address indexed to, uint256 wbtcIn, uint256 btcdOut);
    event MintUSDC(address indexed caller, address indexed to, uint256 usdcIn, uint256 btcdOut);
    event Mint(address indexed caller, address indexed to, uint256 wbtcIn, uint256 usdcIn, uint256 btcdOut);
    event BurnWBTC(address indexed caller, address indexed to, uint256 btcdIn, uint256 wbtcOut);
    event BurnUSDC(address indexed caller, address indexed to, uint256 btcdIn, uint256 usdcOut);
    event Burn(address indexed caller, address indexed to, uint256 btcdIn, uint256 wbtcOut, uint256 usdcOut);

    event MintFeeUpdated(uint256 oldFee, uint256 newFee);
    event BurnFeeUpdated(uint256 oldFee, uint256 newFee);
    event MintBalancedFeeUpdated(uint256 oldFee, uint256 newFee);
    event BurnBalancedFeeUpdated(uint256 oldFee, uint256 newFee);
    event MaxMintPerBlockUpdated(uint128 oldLimit, uint128 newLimit);
    event MaxRedeemPerBlockUpdated(uint128 oldLimit, uint128 newLimit);
    event MintProxyUpdated(address oldProxy, address newProxy);
    event OraclesUpdated(bytes32 indexed assetKey, uint256 count);
    event WhitelistedAddressAdded(address indexed addr);
    event WhitelistedAddressRemoved(address indexed addr);
    event CollateralManagerUpdated(address oldManager, address newManager);
    event CustodyTransfer(address indexed wallet, address indexed asset, uint256 amount);
    event CollateralDeposited(address indexed from, address indexed asset, uint256 amount);

    // -------- Errors --------

    error ZeroAddress();
    error ZeroAmount();
    error SlippageExceeded(uint256 expected, uint256 minOut);
    error MaxMintPerBlockExceeded(uint256 requested, uint256 remaining);
    error MaxRedeemPerBlockExceeded(uint256 requested, uint256 remaining);
    error FeeTooHigh(uint256 fee);
    error InvalidOracleConfig();
    error InsufficientCollateral();
    error NotWhitelisted(address addr);
    error UnsupportedToken(address token);
    error OnlyCollateralManager();
    error FeeTooLow(uint256 fee);

    // -------- Mint/Burn Functions --------

    function mintWBTC(address to, uint256 amountIn, uint256 minOut) external;
    function mintUSDC(address to, uint256 amountIn, uint256 minOut) external;
    function mint(address to, uint256 wbtcIn, uint256 usdcIn, uint256 minOut) external;
    function burnWBTC(address to, uint256 btcdIn, uint256 minOut) external;
    function burnUSDC(address to, uint256 btcdIn, uint256 minOut) external;
    function burn(address to, uint256 btcdIn, uint256 wbtcMinOut, uint256 usdcMinOut) external;

    // -------- Collateral Manager Functions (Engine Integration) --------

    function transferToCustody(address wallet, address asset, uint256 amount) external;
    function sweepUSDC(uint256 amount) external returns (uint256 swept);
    function redeemSUSDS(uint256 usdcAmount) external returns (uint256 redeemed);
    function multicall(bytes[] calldata data) external returns (bytes[] memory results);

    // -------- Quote Functions --------

    function quoteMintWBTC(uint256 amountIn) external view returns (uint256);
    function quoteMintUSDC(uint256 amountIn) external view returns (uint256);
    function quoteMint(uint256 wbtcIn, uint256 usdcIn) external view returns (uint256);
    function quoteBurnWBTC(uint256 btcdIn) external view returns (uint256);
    function quoteBurnUSDC(uint256 btcdIn) external view returns (uint256);
    function quoteBurn(uint256 btcdIn) external view returns (uint256 wbtcOut, uint256 usdcOut);
}
