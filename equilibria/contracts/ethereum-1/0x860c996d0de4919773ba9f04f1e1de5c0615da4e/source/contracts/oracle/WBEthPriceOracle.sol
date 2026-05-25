// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "../Interfaces/IAssetPriceFetcher.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

interface IWBEth {
    function exchangeRate() external view returns (uint256);
}

contract WBEthPriceOracle is IAssetPriceFetcher, Initializable {
    address public wBEth;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _wBEth
    ) external initializer {
        require(
            _wBEth != address(0),
            "invalid address"
        );
        wBEth = _wBEth;
    }


    function getAssetPrice(address asset) external view override returns (uint256) {
        require(asset == wBEth, "invalid asset");

        return IWBEth(wBEth).exchangeRate();
    }
}
