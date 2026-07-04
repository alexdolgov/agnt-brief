// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "../interfaces/IReferenceAssetOracle.sol";
import "../utils/Clonable.sol";
import "../utils/Checks.sol";

/**
 * @title Proxy Reference Asset Oracle
 * @notice This provides a clonable reference asset price oracle using an existing underlying reference asset oracle.
 * @notice It allows to cheaply create reference asset oracles for other underlying tokens,
 * @notice without having to deploy and configure a new preferred asset oracle with multiple fallback oracles
 * @notice Besides the tokenReferenceValue interface, it also supports generic getPrice to get price of base token in any quote token
 */
contract ProxyReferenceAssetOracle is IReferenceAssetOracle, Clonable {
    using Checks for address;

    address public referenceAsset;
    address public referenceAssetOracle;
    uint256 public referenceAssetPrecision;
    

    function initialize(address referenceAssetAddress, address referenceAssetOracleAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        referenceAsset.isNotAlreadyInitialized();
        referenceAssetAddress.requireNonZeroAddress();
        referenceAssetOracleAddress.requireNonZeroAddress();

        referenceAsset = referenceAssetAddress;
        referenceAssetOracle = referenceAssetOracleAddress;
        referenceAssetPrecision = 10 ** uint256(IERC20Metadata(referenceAssetAddress).decimals());
    }
    
    function tokenReferenceValue(address tokenAddress, uint256 amount) external view override returns (uint256 referenceValue, uint256 oldestObservation) {
        uint256 tokenPrice;
        uint256 tokenPrecision = 10 ** uint256(IERC20Metadata(tokenAddress).decimals());
        (tokenPrice, oldestObservation) = IReferenceAssetOracle(referenceAssetOracle).getPrice(tokenAddress, referenceAsset);
        uint256 tokenValue = FixedPointMathLib.fullMulDiv(amount, tokenPrice, tokenPrecision);
        return (tokenValue, oldestObservation);
    }
    
    function getPrice(address base, address quote) public view override returns (uint256 price, uint256 oldestObservation) {
        return IReferenceAssetOracle(referenceAssetOracle).getPrice(base, quote);
    }
    
}