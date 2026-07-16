/**
   *       .
   *      / \
   *     |.'.|
   *     |'.'|
   *   ,'|   |'.
   *  |,-'-|-'-.|
   *   __|_| |         _        _      _____           _
   *  | ___ \|        | |      | |    | ___ \         | |
   *  | |_/ /|__   ___| | _____| |_   | |_/ /__   ___ | |
   *  |    // _ \ / __| |/ / _ \ __|  |  __/ _ \ / _ \| |
   *  | |\ \ (_) | (__|   <  __/ |_   | | | (_) | (_) | |
   *  \_| \_\___/ \___|_|\_\___|\__|  \_|  \___/ \___/|_|
   * +---------------------------------------------------+
   * |    DECENTRALISED STAKING PROTOCOL FOR ETHEREUM    |
   * +---------------------------------------------------+
   *
   *  Rocket Pool is a first-of-its-kind Ethereum staking pool protocol, designed to
   *  be community-owned, decentralised, permissionless, & trustless.
   *
   *  For more information about Rocket Pool, visit https://rocketpool.net
   *
   *  Authored by the Rocket Pool Core Team
   *  Contributors: https://github.com/rocket-pool/rocketpool/graphs/contributors
   *  A special thanks to the Rocket Pool community for all their contributions.
   *
   */

pragma solidity >0.5.0 <0.9.0;

// SPDX-License-Identifier: GPL-3.0-only
import "./util/IERC20Burnable.sol";

interface RocketVaultInterface {
    function balanceOf(string memory _networkContractName) external view returns (uint256);
    function depositEther() external payable;
    function withdrawEther(uint256 _amount) external;
    function depositToken(string memory _networkContractName, IERC20 _tokenAddress, uint256 _amount) external;
    function withdrawToken(address _withdrawalAddress, IERC20 _tokenAddress, uint256 _amount) external;
    function balanceOfToken(string memory _networkContractName, IERC20 _tokenAddress) external view returns (uint256);
    function transferToken(string memory _networkContractName, IERC20 _tokenAddress, uint256 _amount) external;
    function burnToken(IERC20Burnable _tokenAddress, uint256 _amount) external;
}
