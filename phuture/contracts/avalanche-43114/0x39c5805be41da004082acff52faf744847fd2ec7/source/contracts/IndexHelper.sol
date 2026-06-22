// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./libraries/FixedPoint112.sol";
import "./libraries/FullMath.sol";

import "./interfaces/IIndexHelper.sol";
import "./interfaces/IIndex.sol";
import "./interfaces/IvTokenFactory.sol";
import "./interfaces/IvToken.sol";
import "./interfaces/IIndexRegistry.sol";
import "./interfaces/IPriceOracle.sol";

contract IndexHelper is IIndexHelper {
    using FullMath for uint;

    /// @inheritdoc IIndexHelper
    function totalEvaluation(address _index) external view override returns (uint _valueInBase, uint _totalSupply) {
        IIndex index = IIndex(_index);
        _totalSupply = IERC20(_index).totalSupply();
        IvTokenFactory vTokenFactory = IvTokenFactory(index.vTokenFactory());
        IIndexRegistry registry = IIndexRegistry(index.registry());
        IPriceOracle priceOracle = IPriceOracle(registry.priceOracle());
        (address[] memory assets, ) = index.anatomy();
        address[] memory inactiveAssets = index.inactiveAnatomy();
        uint assetsCount = assets.length;
        for (uint i; i < assetsCount + inactiveAssets.length; ++i) {
            address asset = i < assetsCount ? assets[i] : inactiveAssets[i - assetsCount];
            uint assetValue = IvToken(vTokenFactory.vTokenOf(asset)).assetBalanceOf(_index);
            _valueInBase += assetValue.mulDiv(FixedPoint112.Q112, priceOracle.lastAssetPerBaseInUQ(asset));
        }
    }
}
