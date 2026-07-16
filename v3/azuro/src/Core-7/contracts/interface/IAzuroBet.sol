// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

import "./IOwnable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC1155/IERC1155Upgradeable.sol";

interface IAzuroBet is IOwnable, IERC1155Upgradeable {
    error OnlyCore();

    function initialize(address core) external;

    function setURI(string memory newUri) external;

    function newConditionId() external returns (uint256);

    function mint(
        address to,
        uint256 id,
        uint256 amount,
        uint256 payout
    ) external;

    function burnBalance(address account, uint256 id) external;

    function burnPayout(address account, uint256 id) external;

    function balancePayoutOf(address account, uint256 id)
        external
        view
        returns (uint256);

    function tokenOfOwnerByIndex(address owner, uint256 index)
        external
        view
        returns (uint256);
}
