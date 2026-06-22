// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IHyperVault {
    event UpdateHyperFactory(address sender, address oldAddress, address newAddress);
    event HyperPairAdded(address asset, address hyperToken);
    event HyperPairStatusUpdated(address asset, bool enable);
    event Deposit(address sender, address recipient, address asset, uint256 amount);
    event Withdraw(address sender, address recipient, address asset, uint256 amount);

    struct HyperPair {
        bool enable;
        address asset;
        address hyperToken;
    }

    function hyperVaults(address token) external view returns (uint256);

    function getHyperPair(address token) external view returns (HyperPair memory);

    function getAcceptableAssets() external view returns (address[] memory assets);

    function deposit(address recipient, address asset, uint256 amount) external;

    function withdraw(address recipient, address asset, uint256 amount) external;
}
