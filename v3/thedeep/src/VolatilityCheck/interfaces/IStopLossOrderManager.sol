// SPDX-License-Identifier: Unlicense

pragma solidity 0.7.6;
pragma abicoder v2;

interface IStopLossOrderManager {
    struct Order {
        address sender;
        address vault;
        uint256 amount; // 18 decimals vault LP amount. If set to 0 - position was closed
        uint256 threshold; // value denominated in base tokens
    }

    function orderCount() external view returns (uint256);

    function whitelistedVaults(address _vault) external view returns (bool);

    function getOrderById(uint256) external view returns (Order memory);

    function getUserOrderIds(address) external view returns (uint256[] memory);

    function currentTick(address pool) external view returns (int24 tick);

    function currentValue(address vault, uint256 amount) external view returns (uint256 value);

    function createStopLossOrder(address _vault, uint256 _amount, uint256 _threshold) external returns (uint256);

    function executeStopLossOrder(uint256 _position) external;

    function closeStopLossOrder(uint256 _position) external;

    function enableVault(address _vault) external;

    function disableVault(address _vault) external;

    event CreateOrder(
        address indexed sender,
        address indexed vault,
        uint256 amount,
        uint256 threshold,
        uint256 position
    );

    event ExecuteOrder(address indexed sender, address indexed vault, uint256 amount, uint256 position);

    event CloseOrder(address indexed sender, address indexed vault, uint256 amount, uint256 position);

    event VaultEnabled(address indexed sender, address indexed vault);

    event VaultDisabled(address indexed sender, address indexed vault);
}
