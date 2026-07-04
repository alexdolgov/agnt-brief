// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "../IERC20ConsumableItem.sol";

interface IBuniUniversalV2 {
    // migrator
    // function setGlobalStaminaByMigrator(address _playerAddress) external;
    // function setTokenRewardsByMigrator(address _playerAddress, uint256 _amount, uint256 _timerStart) external;
    // function setExpRewardsByMigrator(uint256 _trainer, uint256 _exp) external;
    // price oracle
    function usdToBuni(int128 usdAmount) external view returns (uint256);
    function usdToBur(int128 usdAmount) external view returns (uint256);
    // v3.1 read methods
    function requestPayOnlyBuniAmount(address _player, int128 usdBuni) external view;
    function requestPayOnlyExtractBuniAmount(address _player, uint256 _buniAmount) external view;
    function requestPayOnlyBurAmount(address _player, int128 usdBur) external view;
    function requestPayOnlyExtractBurAmount(address _player, uint256 _burAmount) external view;
    function requestPayMixedAmounts(address _player, int128 usdBuni, int128 usdBur) external view;
    function requestPayExtractMixedAmounts(address _player, uint256 _buniAmount, uint256 _burAmount) external view;
    function requestPayERC20ConsumableItem(
        IERC20ConsumableItem token, address player, uint256 amount
    ) external view;
    // v3.1 write method
    function payOnlyBuniAmount(address _player, int128 _buniAmount) external;
    function payOnlyExtractBuniAmount(address _player, uint256 _buniAmount) external;
    function payOnlyBurAmount(address _player, int128 _burAmount) external;
    function payOnlyExtractBurAmount(address _player, uint256 _burAmount) external;
    function payMixedAmounts(address _player, int128 _buniAmount, int128 _burAmount) external;
    function payExtractMixedAmounts(address _player, uint256 _buniAmount, uint256 _burAmount) external;
    function payERC20ConsumableItems(
        IERC20ConsumableItem token, address player, uint256 amount
    ) external;
}