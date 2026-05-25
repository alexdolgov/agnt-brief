// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "../Interfaces/IAssetPriceFetcher.sol";

interface IETHXStakePoolsManager {
    function getExchangeRate() external view returns (uint256);

    function staderConfig() external view returns (address);
}

interface IStaderConfig {
    function getETHxToken() external view returns (address);
}

contract EthXPriceOracle is IAssetPriceFetcher, Initializable {
    address public ethXStakePoolsManagerProxyAddress;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _ethXStakePoolsManagerProxyAddress
    ) external initializer {
        require(
            _ethXStakePoolsManagerProxyAddress != address(0),
            "invalid address"
        );
        ethXStakePoolsManagerProxyAddress = _ethXStakePoolsManagerProxyAddress;
    }

    function getAssetPrice(address asset) external view returns (uint256) {
        address staderConfigProxyAddress = IETHXStakePoolsManager(
            ethXStakePoolsManagerProxyAddress
        ).staderConfig();
        require(
            asset == IStaderConfig(staderConfigProxyAddress).getETHxToken(),
            "invalid asset"
        );

        return
            IETHXStakePoolsManager(ethXStakePoolsManagerProxyAddress)
                .getExchangeRate();
    }
}
