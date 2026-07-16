// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "../../../interfaces/IAppOracle.sol";
import "../../../interfaces/IOracleV2.sol";
import "../../../libraries/UniV4PositionHelper.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @title UniV4LPOracle
 * @notice An oracle for a Uniswap V4 LP token.
 * @dev This oracle is used to get the price of a Uniswap V4 LP token in RZR and USD.
 */
contract UniV4LPOracle is IOracleV2, IERC20Metadata, UniV4PositionHelper {
    IAppOracle public appOracle;

    /// @notice The asset
    IERC20Metadata public immutable asset;

    string public name;
    string public symbol;
    address public positionManager;
    address public poolManager;
    uint256 public tokenId;

    constructor(
        string memory _name,
        string memory _symbol,
        address _positionManager,
        address _poolManager,
        uint256 _tokenId,
        IAppOracle _appOracle
    ) {
        name = _name;
        symbol = _symbol;
        positionManager = _positionManager;
        poolManager = _poolManager;
        tokenId = _tokenId;
        appOracle = _appOracle;
        asset = IERC20Metadata(address(this));
    }

    function decimals() external pure override returns (uint8) {
        return 18;
    }

    function totalSupply() external pure override returns (uint256) {
        return 1e18;
    }

    function balanceOf(address) external pure override returns (uint256) {
        return 1e18;
    }

    function allowance(address, address) external pure override returns (uint256) {
        return 0;
    }

    function transfer(address, uint256) external pure override returns (bool) {
        revert("Not implemented");
    }

    function transferFrom(address, address, uint256) external pure override returns (bool) {
        revert("Not implemented");
    }

    function approve(address, uint256) external pure override returns (bool) {
        revert("Not implemented");
    }

    /// @inheritdoc IOracleV2
    function getPriceForAmount(uint256 amount)
        public
        view
        override
        returns (uint256 rzrAssets, uint256 usdAssets, uint256 lastUpdatedAt)
    {
        (uint256 amountA, uint256 amountB, address token0, address token1) =
            getPositionAmounts(positionManager, poolManager, tokenId);

        {
            (uint256 rzrA, uint256 usdA, uint256 lastUpdatedAtA) = appOracle.getPriceForAmount(token0, amountA);
            rzrAssets = rzrA;
            usdAssets = usdA;
            lastUpdatedAt = lastUpdatedAtA;
        }
        {
            (uint256 rzrB, uint256 usdB, uint256 lastUpdatedAtB) = appOracle.getPriceForAmount(token1, amountB);
            rzrAssets += rzrB;
            usdAssets += usdB;
            lastUpdatedAt = lastUpdatedAt > lastUpdatedAtB ? lastUpdatedAt : lastUpdatedAtB;
        }
    }
}
